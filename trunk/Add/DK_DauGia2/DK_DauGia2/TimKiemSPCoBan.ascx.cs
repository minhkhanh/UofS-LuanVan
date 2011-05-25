using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DK_DauGia2
{
    public partial class TimKiemSPCoBan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbKetQua.Visible = false;
        }

        List<SanPhamTimKiem> dsSanPhamTimKiem;

        

        void HienThiDSSanPham()
        {
            MyDLinqDataContext db = new MyDLinqDataContext();


            dsSanPhamTimKiem = (from sp in db.SanPhams
                                         join tk in db.TaiKhoans on sp.MaTaiKhoan equals tk.MaTaiKhoan
                                         join lsp in db.LoaiSanPhams on sp.MaLoaiSanPham equals lsp.MaLoaiSanPham
                                         join tt in db.TinhTrangSanPhams on sp.MaTinhTrangSanPham equals tt.MaTinhTrangSanPham
                                         where sp.TenSanPham.Contains(tbTenSanPham.Text.Trim())
                                         select new SanPhamTimKiem()
                                         {
                                             TenSanPham = sp.TenSanPham,
                                             TenLoaiSanPham = lsp.TenLoaiSanPham,
                                             TenTaiKhoan = tk.TenTaiKhoan,
                                             GiaKhoiDiem = sp.GiaKhoiDiem,
                                             GiaHienTai = sp.GiaHienTai,
                                             NgayDang = (sp.NgayDang!=null)?sp.NgayDang.ToString():"",
                                             NgayHetHan = (sp.NgayHetHan!=null)?sp.NgayHetHan.ToString():"",
                                             TinhTrang = tt.TenTinhTrangSanPham
                                             //NgayHetHan = <%= System.Web.HttpUtility.HtmlDecode("<a href='#'>Chi Tiet</a>") %>
                                             
                                         }).ToList();
            if (dsSanPhamTimKiem.Count == 0)
            {
                lbKetQua.Visible = true;
                lbKetQua.Text = "Không tìm thấy";
                return;
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
            //gvDSSanPham.DataSource = dsSanPhamTimKiem;
            //gvDSSanPham.DataBind();
            HienThiDSSanPham();

            
            
        }

        private string ConvertSortDirectionToSql(SortDirection sortDirection)
        {
            string newSortDirection = String.Empty;

            switch (sortDirection)
            {
                case SortDirection.Ascending:
                    newSortDirection = "ASC";
                    break;

                case SortDirection.Descending:
                    newSortDirection = "DESC";
                    break;
            }

            return newSortDirection;
        }

        protected void gvDSSanPham_Sorting(object sender, GridViewSortEventArgs e)
        {
            HienThiDSSanPham();
            //sort list
            
            DataTable dataTable = gvDSSanPham.DataSource as DataTable;

            
            if (dataTable != null)
            {
                DataView dataView = new DataView(dataTable);
                dataView.Sort = e.SortExpression + " " + ConvertSortDirectionToSql(e.SortDirection);

                gvDSSanPham.DataSource = dataView;
                gvDSSanPham.DataBind();
            }
        }

        
    }
}