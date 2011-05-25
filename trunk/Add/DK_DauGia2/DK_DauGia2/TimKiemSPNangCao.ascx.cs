using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DK_DauGia2
{
    public partial class TimKiemSPNangCao : System.Web.UI.UserControl
    {

        List<SanPhamTimKiem> dsSanPhamTimKiem;

        protected void Page_Load(object sender, EventArgs e)
        {
            HienThiDSLoaiSanPham();
            lbKetQua.Visible = false;

        }     

        void HienThiDSLoaiSanPham()
        {
            MyDLinqDataContext db = new MyDLinqDataContext();

            var query = from lsp in db.LoaiSanPhams
                        select new
                        {
                            lsp.TenLoaiSanPham
                        };

            ddlLoaiSanPham.Items.Add("Tất Cả");

            //ddlLoaiSanPham.DataSource = query;
            //ddlLoaiSanPham.DataTextField = "TenLoaiSanPham";
            //ddlLoaiSanPham.DataValueField = "TenLoaiSanPham";

            foreach (var lsp in query)
            {
                ddlLoaiSanPham.Items.Add(lsp.TenLoaiSanPham);
            }

            ddlLoaiSanPham.DataBind();
        }

        void HienThiDSSanPham()
        {
            MyDLinqDataContext db = new MyDLinqDataContext();

            dsSanPhamTimKiem = (from sp in db.SanPhams
                                join tk in db.TaiKhoans on sp.MaTaiKhoan equals tk.MaTaiKhoan
                                join lsp in db.LoaiSanPhams on sp.MaLoaiSanPham equals lsp.MaLoaiSanPham
                                join tt in db.TinhTrangSanPhams on sp.MaTinhTrangSanPham equals tt.MaTinhTrangSanPham
                                select new SanPhamTimKiem()
                                {
                                    TenSanPham = sp.TenSanPham,
                                    TenLoaiSanPham = lsp.TenLoaiSanPham,
                                    TenTaiKhoan = tk.TenTaiKhoan,
                                    GiaKhoiDiem = sp.GiaKhoiDiem,
                                    GiaHienTai = sp.GiaHienTai,
                                    NgayDang = (sp.NgayDang != null) ? sp.NgayDang.ToString() : "",
                                    NgayHetHan = (sp.NgayHetHan != null) ? sp.NgayHetHan.ToString() : "",
                                    TinhTrang = tt.TenTinhTrangSanPham
                                }).ToList();

            if (KiemTraTenSanPham())
            {
                dsSanPhamTimKiem = (from sp in dsSanPhamTimKiem
                                    where sp.TenSanPham != null && sp.TenSanPham.Contains(tbTenSanPham.Text.Trim())
                                    select sp).ToList();
            }

            if (KiemTraNguoiDang())
            {
                dsSanPhamTimKiem = (from sp in dsSanPhamTimKiem
                                    where sp.TenTaiKhoan != null && sp.TenTaiKhoan.Contains(tbNguoiDang.Text.Trim())
                                    select sp).ToList();
            }

            if (KiemTraTinhTrang())
            {
                dsSanPhamTimKiem = (from sp in dsSanPhamTimKiem
                                    where sp.TinhTrang != null && sp.TinhTrang.Contains(tbTinhTrang.Text.Trim())
                                    select sp).ToList();
            }

            if (KiemTraLoaiSanPham())
            {
                dsSanPhamTimKiem = (from sp in dsSanPhamTimKiem
                                    where sp.TenLoaiSanPham != null && sp.TenLoaiSanPham.Contains(ddlLoaiSanPham.SelectedValue)
                                    select sp).ToList();
            }
            
            gvDSSanPham.DataSource = dsSanPhamTimKiem;
            gvDSSanPham.DataBind();
        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {
            gvDSSanPham.PageIndex = 0;
            HienThiDSSanPham();
        }

        protected void gvDSSanPham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDSSanPham.PageIndex = e.NewPageIndex;
            HienThiDSSanPham();
        }

        bool KiemTraTenSanPham()
        {
            if (tbTenSanPham.Text.Trim() != "")
                return true;
            return false;
        }

        bool KiemTraLoaiSanPham()
        {
            if (ddlLoaiSanPham.SelectedValue == "Tất Cả" || ddlLoaiSanPham.SelectedValue == "")
                return false;
            return true;
        }

        bool KiemTraNguoiDang()
        {
            if (tbNguoiDang.Text.Trim() != "")
                return true;
            return false;
        }

        bool KiemTraTinhTrang()
        {
            if (tbTinhTrang.Text.Trim() != "")
                return true;
            return false;
        }

        bool KiemTraGiaKhoiDiem()
        {
            return false;
        }

        bool KiemTraGiaHienTai()
        {
            return false;
        }

        bool KiemTraNgayDang()
        {
            return false;
        }

        bool KiemTraNgayHetHan()
        {
            return false;
        }
    }
}