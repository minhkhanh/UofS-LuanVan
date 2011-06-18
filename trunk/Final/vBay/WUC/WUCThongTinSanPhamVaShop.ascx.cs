using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.Linq;

namespace vBay.WUC
{
    public partial class WUCThongTinSanPhamVaShop : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataEntityDataContext dataContext = new DataEntityDataContext();
            int id;
            btn_checkout.Enabled = false;
            int.TryParse(Request["MaSanPham"], out id);
            var sp = (from a in dataContext.SanPhams
                      where (a.MaSanPham == id)
                      select new { a.MaSanPham, a.TenSanPham, a.GiaKhoiDiem, a.GiaHienTai, a.MaTaiKhoan, a.MoTaSanPham, a.NgayHetHan}
                     ).FirstOrDefault();

            if (sp == null) return;
            btn_checkout.Enabled = true;
            lbTenSanPham.Text = (sp.TenSanPham != null) ? sp.TenSanPham : "#NA";
            lbMoTaSanPham.Text = (sp.MoTaSanPham != null) ? sp.MoTaSanPham : "#NA";
            lbGiaKhoiDau.Text = sp.GiaKhoiDiem.ToString();
            lbThoiGianCon.Text = GetTextTimeOut((DateTime)sp.NgayHetHan);
            if (sp.GiaHienTai == null || sp.GiaKhoiDiem >= sp.GiaHienTai)
            {
                lbGiaHienTai.Text = "Chưa ai đặt giá";
                lbHienDangCoSanPham.Text = "#NA";
            }
            else
            {
                lbGiaHienTai.Text = sp.GiaHienTai.ToString();
                var nguoimua = (from a in dataContext.ChiTietDauGias
                               where (a.MaSanPham == sp.MaSanPham && a.GiaGiaoDich == sp.GiaHienTai)
                               select new { a.MaTaiKhoan }).FirstOrDefault();
                if (nguoimua!=null)
                {
                    var tennguoimua = (from a in dataContext.aspnet_Users
                                       join b in dataContext.ThongTinTaiKhoans on a.MaThongTinTaiKhoan equals b.MaThongTinTaiKhoan
                                       where a.UserId == nguoimua.MaTaiKhoan
                                       select new { b.HoTen }).FirstOrDefault();
                    if (tennguoimua!=null)
                    {
                        lbHienDangCoSanPham.Text = tennguoimua.HoTen;
                    }
                }
            }
            var sl = (from dg in dataContext.ChiTietDauGias
                     where (dg.MaSanPham == sp.MaSanPham)
                     group dg by dg.MaSanPham into soLuot
                     select new { SoLuotDauGia = soLuot.Count() }
                     ).FirstOrDefault();
            if (sl!=null)
            {
                lbSoLanDatGia.Text = sl.SoLuotDauGia.ToString();
            } 
            var info = (from a in dataContext.ThongTinTaiKhoans
                        join b in dataContext.aspnet_Users on a.MaThongTinTaiKhoan equals b.MaThongTinTaiKhoan
                      where (b.UserId == sp.MaTaiKhoan)
                      select new { a.HoTen, a.SoDienThoai, a.DiaChi }
                    ).FirstOrDefault();
            if (info==null)
            {
                return;
            }
            lbDiaChiNguoiBan.Text = (info.DiaChi != null) ? info.DiaChi : "#NA";
            lbDienThoaiNguoiBan.Text = (info.SoDienThoai != null) ? info.SoDienThoai : "#NA";
            lbHoTenNguoiBan.Text = (info.HoTen != null) ? info.HoTen : "#NA";

            var infoDG = (from a in dataContext.ThongTinDauGias
                    join b in dataContext.aspnet_Users on a.MaThongTinDauGia equals b.MaThongTinDauGia
                    where (b.UserId == sp.MaTaiKhoan)
                    select new {a.DiemTinCayBan, a.DiemTinCayMua }
                    ).FirstOrDefault();
            if (infoDG == null)
            {
                return;
            }
            lbDiemBanNguoiBan.Text = (infoDG.DiemTinCayBan != null) ? infoDG.DiemTinCayBan.ToString() : "#NA";
            lbDiemMuaNguoiBan.Text = (infoDG.DiemTinCayMua != null) ? infoDG.DiemTinCayMua.ToString() : "#NA";

            var img = from spMul in dataContext.SanPham_Multimedias
                      join mul in dataContext.Multimedias on spMul.MaMT equals mul.MaMT
                      join loai in dataContext.LoaiMultimedias on mul.MaLoaiMT equals loai.MaLoaiMT
                      where (spMul.MaSanPham == sp.MaSanPham) && (loai.TenLoaiMT == "Picture")
                      select new { mul.LinkURL };
            repImages.DataSource = img;
            repImages.DataBind();
        }

        protected void repImages_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            dynamic dt = e.Item.DataItem as dynamic;
            Image img = (Image)e.Item.FindControl("repImage");
            img.ImageUrl = dt.LinkURL;
        }

        protected void btn_checkout_Click(object sender, EventArgs e)
        {
            if (!KiemTraCoQuyenMua())
            {
                Page.Response.Redirect(TrangKhongCoQuyenTruyCap);
                return;
            }
            if (txtGiaCaoHon.Text.Length <= 0 || Request["MaSanPham"] == null)
            {
                return;
            }
            
            int id;
            int.TryParse(Request["MaSanPham"], out id);
            DataEntityDataContext dataContext = new DataEntityDataContext();
            var sp = (from a in dataContext.SanPhams
                      where (a.MaSanPham == id)
                      select new { a.MaSanPham, a.TenSanPham, a.GiaKhoiDiem, a.GiaHienTai, a.MaTaiKhoan, a.MoTaSanPham, a.NgayHetHan }
                    ).FirstOrDefault();

            if (sp == null || sp.NgayHetHan <= DateTime.Now)
            {
                Page.Response.Redirect(TrangKhongCoQuyenTruyCap);
                return;
            }
            ChiTietDauGia cm = new ChiTietDauGia();
            //var sp = from b in data
            //         select b;
            
            cm.MaSanPham = sp.MaSanPham;
            cm.MaTaiKhoan = GetUserId();
            cm.ThoiGianGiaoDich = DateTime.Now;
            float gia = 1;
            float.TryParse(txtGiaCaoHon.Text, out gia);
            cm.GiaGiaoDich = sp.GiaHienTai + gia;
            SanPham sanPham = dataContext.SanPhams.Single(m => m.MaSanPham == sp.MaSanPham);
            sanPham.GiaHienTai = sp.GiaHienTai + gia;
            dataContext.ChiTietDauGias.InsertOnSubmit(cm);
            try
            {
                dataContext.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }
            catch (ChangeConflictException ex)
            {
                foreach (ObjectChangeConflict objchangeconf in dataContext.ChangeConflicts)
                {
                    objchangeconf.Resolve(RefreshMode.KeepCurrentValues);
                }
            }
            
            this.Page_Load(this, e);
        }
        private string GetTextTimeOut(DateTime time)
        {
            TimeSpan t = time - DateTime.Now;
            if (t.TotalSeconds < 0)
            {
                return "Đã hết hạn đấu giá";
            }
            string str = "";
            if (t.Days > 0)
            {
                str += t.Days.ToString() + " ngày ";
            }
            if (t.Hours > 0)
            {
                str += t.Hours.ToString() + " giờ ";
            }
            if (t.Minutes > 0)
            {
                str += t.Minutes.ToString() + " phút ";
            }
            return str;
        }
        private bool KiemTraCoQuyenMua()
        {
            return Page.User.Identity.IsAuthenticated;
        }
        public string TrangKhongCoQuyenTruyCap
        {
            get { return "./Default.aspx"; }
        }
        private Guid GetUserId()
        {
            DataEntityDataContext dt = new DataEntityDataContext();
            var user = (from u in dt.aspnet_Users
                        where u.UserName == Page.User.Identity.Name
                        select new { u.UserId }).FirstOrDefault();

            if (user != null) return user.UserId;
            return new Guid("0");
        }
    }
}