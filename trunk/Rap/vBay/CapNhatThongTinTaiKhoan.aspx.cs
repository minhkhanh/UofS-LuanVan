using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay
{
    public partial class CapNhatThongTinTaiKhoan : System.Web.UI.Page
    {
        private static String pageTurnBackIfNotSignedIn = "~/Default.aspx";

        public void Page_PreInit()
        {
            //Hướng xử lí trong hàm Page_PreInit
            //  1. Lấy userName của người dùng hiện tại và lưu vào biến String userName
            //  2. Kiểm tra: Nếu userName là chuỗi rổng (null hoặc bằng "") => Response về pageTurnBackIfNotSignedIn
            
            
            
            //Tiến hành
            //  1. Lấy userName của người dùng hiện tại và lưu vào biến String userName
            String userName = Page.User.Identity.Name;
            
            //  2. Kiểm tra: Nếu userName là chuỗi rổng (null hoặc bằng "") => Response về pageTurnBackIfNotSignedIn
            if (userName == "" || userName == null)
            {
                Response.Redirect(pageTurnBackIfNotSignedIn);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}