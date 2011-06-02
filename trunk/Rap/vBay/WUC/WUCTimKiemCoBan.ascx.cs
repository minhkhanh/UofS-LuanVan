using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay.WUC
{
    public partial class WUCTimKiemCoBan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbKetQua.Visible = false;
        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {
            gvDSSanPham.PageIndex = 0;
            HienThiDSSanPham();
        }

        protected void gvDSSanPham_Sorting(object sender, GridViewSortEventArgs e)
        {

        }

        protected void gvDSSanPham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDSSanPham.PageIndex = e.NewPageIndex;
            HienThiDSSanPham();
        }

        void HienThiDSSanPham()
        {
            DataEntityDataContext db = new DataEntityDataContext();
            var query = from sp in db.SanPhams
                        join tk in db.aspnet_Users on sp.MaTaiKhoan equals tk.UserId
                        join lsp in db.LoaiSanPhams on sp.MaLoaiSanPham equals lsp.MaLoaiSanPham
                        join ttsp in db.TinhTrangSanPhams on sp.MaTinhTrangSanPham equals ttsp.MaTinhTrangSanPham
                        where sp.TenSanPham.Contains(tbTenSanPham.Text.Trim())
                        select new
                        {
                            sp.TenSanPham,
                            lsp.TenLoaiSanPham,
                            tk.ThongTinTaiKhoan.HoTen,
                            sp.GiaKhoiDiem,
                            sp.GiaHienTai,
                            sp.NgayDang,
                            sp.NgayHetHan,
                            ttsp.TenTinhTrangSanPham,
                        };


            gvDSSanPham.DataSource = query;
            gvDSSanPham.DataBind();
        }
    
    }
}