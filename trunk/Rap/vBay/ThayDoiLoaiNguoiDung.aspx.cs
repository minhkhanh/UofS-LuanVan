using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace vBay
{
    public partial class ThayDoiLoaiNguoiDung : System.Web.UI.Page
    {
        private static String pageTurnBackIfNotSignedIn = "~/Login.aspx";
        private static String pageTurnBackIfNotAuthorized = "~/Stop.aspx";

        public void Page_PreInit()
        {
            //Hướng xử lí trong hàm Page_PreInit
            //  1. Lấy UserName của người dùng và lưu vào String userName
            //  2. Kiểm tra: Nếu người dùng chưa đăng nhập (UserName == null hoặc là chuỗi rỗng)
            //      2.1. Respone sang trang pageTurnBackIfNotSignedIn
            //  3. Lấy danh sách các Role người dùng thuộc về và lưu vào mảng String[] danhSachRoles
            //  4. Kiểm tra: Nếu người dùng không thuộc User Administrator hoặc Manager => Response sang trang pageTurnBackIfNotSignedIn


            //Tiến hành
            //  1. Lấy UserName của người dùng và lưu vào String userName
            String userName = Page.User.Identity.Name;

            //  2. Kiểm tra: Nếu người dùng chưa đăng nhập (UserName == null hoặc là chuỗi rỗng)
            if (userName == "" || userName == null)
            {
                //      2.1. Respone sang trang pageTurnBackIfNotSignedIn
                Response.Redirect(pageTurnBackIfNotSignedIn);
            }
            else
            {
                //  3. Lấy danh sách các Role người dùng thuộc về và lưu vào mảng String[] danhSachRoles
                String[] danhSachRoles = Roles.GetRolesForUser(userName);

                //  4. Kiểm tra: Nếu người dùng thuộc User Administrator hoặc Manager => Response sang trang pageTurnBackIfNotSignedIn
                bool isManager = false;
                bool isAdmin = false;
                foreach (String i in danhSachRoles)
                {
                    if (i == "Administrator")
                        isAdmin = true;
                    else if (i == "Manager")
                        isManager = true;
                }

                if (isAdmin == false && isManager == false)
                    Response.Redirect(pageTurnBackIfNotAuthorized);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}