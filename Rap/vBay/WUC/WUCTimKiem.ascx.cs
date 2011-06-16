using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay.WUC
{
    public partial class UCTimKiem : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {
            string tenSanPham = tbTenSanPham.Text.Trim();
            if (tenSanPham != null && tenSanPham != "")
            {
                string url = "TimKiemCoBan.aspx?TenSanPham=";
                url += tenSanPham;
                Response.Redirect(url);
            }
        }
    }
}