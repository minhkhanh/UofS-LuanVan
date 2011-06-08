using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay.WUC
{
    public partial class WUCThongTinSanPhamVaShop : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataEntityDataContext dataContext = new DataEntityDataContext();
            int id;
            int.TryParse(Request["MaSanPham"], out id);
            var sp = (from a in dataContext.SanPhams
                      where (a.MaSanPham == id)
                      select new { a.MaSanPham, a.TenSanPham, a.GiaKhoiDiem, a.GiaHienTai, a.MaTaiKhoan, a.MoTaSanPham}
                     ).FirstOrDefault();

            if (sp == null) return;
            lbTenSanPham.Text = (sp.TenSanPham != null) ? sp.TenSanPham : "#NA";
            lbMoTaSanPham.Text = (sp.MoTaSanPham != null) ? sp.MoTaSanPham : "#NA";
            lbGiaKhoiDau.Text = sp.GiaKhoiDiem.ToString();
            if (sp.GiaHienTai == null || sp.GiaKhoiDiem >= sp.GiaHienTai)
            {
                lbGiaHienTai.Text = "Chưa ai đặt giá";
            }
            else
            {
                lbGiaHienTai.Text = sp.GiaKhoiDiem.ToString();
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
                Response.Redirect(TrangKhongCoQuyenTruyCap);
                return;
            }
            if (txtGiaCaoHon.Text.Length <= 0 || Request["MaSanPham"] == null)
            {
                return;
            }
            ChiTietDauGia cm = new ChiTietDauGia();
            int id;
            int.TryParse(Request["MaSanPham"], out id);
            var sp = from b in data
            cm.MaSanPham = id;
            cm.MaTaiKhoan = GetUserId();
            cm.ThoiGianGiaoDich = DateTime.Now;
            cm.NoiDungComment = txtComment.Text;
            DataEntityDataContext dt = new DataEntityDataContext();
            dt.Comments.InsertOnSubmit(cm);
            dt.SubmitChanges();
            txtComment.Text = "";
        }
        private bool KiemTraCoQuyenMua()
        {
            return Page.User.Identity.IsAuthenticated;
        }
        public string TrangKhongCoQuyenTruyCap
        {
            get { return "../Default.aspx"; }
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