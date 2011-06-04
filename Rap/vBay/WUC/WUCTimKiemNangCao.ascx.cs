using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace vBay.WUC
{
    public partial class WUCTimKiemNangCao : System.Web.UI.UserControl
    {
        int stt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThiDSLoaiSanPham();
            lbKetQua.Visible = false;
        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {
            gvDSSanPham.PageIndex = 0;
            HienThiDSSanPham();
        }


        protected void gvDSSanPham_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].Text = (++stt).ToString();

            }
        }

        protected void gvDSSanPham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            stt = e.NewPageIndex * 10;
            gvDSSanPham.PageIndex = e.NewPageIndex;
            HienThiDSSanPham();
        }


        void HienThiDSLoaiSanPham()
        {
            DataEntityDataContext db = new DataEntityDataContext();

            var query = from lsp in db.LoaiSanPhams
                        select new
                        {
                            lsp.TenLoaiSanPham
                        };

            ddlLoaiSanPham.Items.Add("Tất Cả");

            foreach (var lsp in query)
            {
                ddlLoaiSanPham.Items.Add(lsp.TenLoaiSanPham);
            }

            ddlLoaiSanPham.DataBind();
        }

        void HienThiDSSanPham()
        {
            DataEntityDataContext db = new DataEntityDataContext();
            var query = from sp in db.SanPhams
                        join tk in db.aspnet_Users on sp.MaTaiKhoan equals tk.UserId
                        join lsp in db.LoaiSanPhams on sp.MaLoaiSanPham equals lsp.MaLoaiSanPham
                        join ttsp in db.TinhTrangSanPhams on sp.MaTinhTrangSanPham equals ttsp.MaTinhTrangSanPham
                        select new
                        {
                            sp.MaSanPham,
                            sp.TenSanPham,
                            lsp.TenLoaiSanPham,
                            tk.ThongTinTaiKhoan.HoTen,
                            sp.GiaKhoiDiem,
                            sp.GiaHienTai,
                            sp.NgayDang,
                            sp.NgayHetHan,
                            ttsp.TenTinhTrangSanPham,
                        };

            if (KiemTraTenSanPham())
            {
                query = from sp in query
                        where sp.TenSanPham.Contains(tbTenSanPham.Text.Trim())
                        select sp;
            }

            if (KiemTraLoaiSanPham())
            {
                query = from sp in query
                        where sp.TenLoaiSanPham == ddlLoaiSanPham.SelectedValue
                        select sp;
            }

            if (KiemTraNguoiDang())
            {
                query = from sp in query
                        where sp.HoTen.Contains(tbNguoiDang.Text.Trim())
                        select sp;
            }

            if (KiemTraGiaKhoiDiem())
            {
                float giaKhoiDiemTu;
                float giaKhoiDiemDen;
                float.TryParse(tbGiaKhoiDiemTu.Text.Trim(), out giaKhoiDiemTu);
                float.TryParse(tbGiaKhoiDiemDen.Text.Trim(), out giaKhoiDiemDen);
                query = from sp in query
                        where sp.GiaKhoiDiem >= giaKhoiDiemTu && sp.GiaKhoiDiem <= giaKhoiDiemDen
                        select sp;

            }

            if (KiemTraGiaHienTai())
            {
                float giaHienTaiTu;
                float giaHienTaiDen;
                float.TryParse(tbGiaHienTaiTu.Text.Trim(), out giaHienTaiTu);
                float.TryParse(tbGiaHienTaiDen.Text.Trim(), out giaHienTaiDen);
                query = from sp in query
                        where sp.GiaHienTai >= giaHienTaiTu && sp.GiaHienTai <= giaHienTaiDen
                        select sp;
            }

            if (KiemTraNgayDang())
            {
                DateTime ngayDangTu;
                DateTime ngayDangDen;
                DateTime.TryParse(tbNgayDangTu.Text.Trim(), out ngayDangTu);
                DateTime.TryParse(tbNgayDangDen.Text.Trim(), out ngayDangDen);

                query = from sp in query
                        where sp.NgayDang >= ngayDangTu && sp.NgayDang <= ngayDangDen
                        select sp;
            }

            if (KiemTraNgayHetHan())
            {
                DateTime ngayHetHanTu;
                DateTime ngayHetHanDen;
                DateTime.TryParse(tbNgayHetHanTu.Text.Trim(), out ngayHetHanTu);
                DateTime.TryParse(tbNgayHetHanDen.Text.Trim(), out ngayHetHanDen);

                query = from sp in query
                        where sp.NgayHetHan >= ngayHetHanTu && sp.NgayHetHan <= ngayHetHanDen
                        select sp;
            }

            if (KiemTraTinhTrang())
            {
                query = from sp in query
                        where sp.TenTinhTrangSanPham.Contains(tbTinhTrang.Text.Trim())
                        select sp;
            }



            gvDSSanPham.DataSource = query;
            gvDSSanPham.DataBind();
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
            if (tbGiaKhoiDiemTu.Text.Trim() != "" && tbGiaKhoiDiemDen.Text.Trim() != "")
                return true;
            return false;
        }

        bool KiemTraGiaHienTai()
        {
            if (tbGiaHienTaiTu.Text.Trim() != "" && tbGiaHienTaiDen.Text.Trim() != "")
                return true;
            return false;
        }

        bool KiemTraNgayDang()
        {
            if (tbNgayDangTu.Text.Trim() != "" && tbNgayDangDen.Text.Trim() != "")
                return true;
            return false;
        }

        bool KiemTraNgayHetHan()
        {
            if (tbNgayHetHanTu.Text.Trim() != "" && tbNgayHetHanDen.Text.Trim() != "")
                return true;
            return false;
        }

        

        

        

        
    }
}