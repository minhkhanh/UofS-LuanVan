using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.Configuration;

namespace vBay
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // đang ở trang thống kê của Manager.
            // chưa làm.

            // bắt đầu:
            //Page.User.Identity.Name là tên user hiện đang đăng nhập
            string[] roleNames = Roles.GetRolesForUser(Page.User.Identity.Name);

            var list = roleNames.Where(i => i == "Manager");
            // chỗ này chắc ko dùng .Select được.

            Array aaa = list.ToArray();
            if (aaa.Length == 0)
                Response.Redirect(WebConfigurationManager.AppSettings["HeadPage"]); // quay về trang chủ

            // bây giờ đăng nhập bằng tài khoản member, rồi vô trang này thử.
            // vậy là chưa được. Debug xem sao.
            // kiểu var khó xem, đổi.

            
        }
    }
}