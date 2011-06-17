using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Web.Configuration;

namespace vBay
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        public void Page_Init(object sender, EventArgs e)
        {
            string[] roles = Roles.GetRolesForUser(Page.User.Identity.Name);
            foreach (string i in roles)
            {
                switch (i)
                {
                    case "Manager":
                        Response.Redirect(WebConfigurationManager.AppSettings["ManagerHeadPage"]);
                        break;
                    case "Administrator":
                        Response.Redirect(WebConfigurationManager.AppSettings["ManagerHeadPage"]);
                        break;
                }
            }

            ////Khai báo biến dataContext để truy cập CSDL
            //DataEntityDataContext dataContext = new DataEntityDataContext();

            ////Truy xuất giá trị tham số lưu đường dẫn Url đến Logo đang được dùng trong bảng THAMSO
            //THAMSO thamSo_Logo = dataContext.THAMSOs.Single(p => p.TenThamSo == "Logo");

            ////Lưu chuỗi Url vào biến imageUrl
            //String imageUrl = thamSo_Logo.GiaTri;

            ////Thiết lập ImageUrl của ImageButton_Logo
            //ImageButton_Logo.ImageUrl = imageUrl;

            ////Truy xuất giá trị tham số lưu Url của file CSS được sử dụng trong bảng THAMSO
            //THAMSO thamSo_CSS = dataContext.THAMSOs.Single(p => p.TenThamSo == "StyleSheet");

            ////Lưu chuỗi Url vào biến cssUrl
            //String cssUrl = thamSo_CSS.GiaTri;

            ////Thiết lập đường link dẫn đến file CSS cần load
            //HtmlLink css = new HtmlLink();
            //css.Href = cssUrl;
            //css.Attributes["rel"] = "stylesheet";
            //css.Attributes["type"] = "text/css";
            //css.Attributes["media"] = "all";
            //Page.Header.Controls.Add(css);
        }

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
                MenuItem mi = new MenuItem(lsp.TenLoaiSanPham, lsp.MaLoaiSanPham.ToString(), null, "xemdanhsachsanpham.aspx?MaLoai="+lsp.MaLoaiSanPham.ToString());
                
                menuDSLoaiSanPham.Items.Add(mi);
            }

            
        }
    }
}
