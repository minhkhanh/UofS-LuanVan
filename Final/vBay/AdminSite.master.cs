using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.Security;

namespace vBay
{
    public partial class AdminSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] roles = Roles.GetRolesForUser(Page.User.Identity.Name);

            var list = roles.Where(i => i == "Administrator");

            if (list.Count() == 0)
                Response.Redirect(WebConfigurationManager.AppSettings["StopPage"]);
        }
    }
}