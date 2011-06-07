using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                HienThiDSLoaiSanPham();
        }

        void HienThiDSLoaiSanPham()
        {
            DataEntityDataContext db = new DataEntityDataContext();

            var query = (from lsp in db.LoaiSanPhams
                         select new
                         {
                             lsp.MaLoaiSanPham,
                             lsp.TenLoaiSanPham
                         }).Take(10);

            foreach(var lsp in query)
            {
                MenuItem mi = new MenuItem(lsp.TenLoaiSanPham, lsp.MaLoaiSanPham.ToString(), null, "xemdanhsachsanpham.aspx?MaLoai="+lsp.MaLoaiSanPham.ToString()); //can phai lam them
                menuDSLoaiSanPham.Items.Add(mi);
            }
        }
    }
}
