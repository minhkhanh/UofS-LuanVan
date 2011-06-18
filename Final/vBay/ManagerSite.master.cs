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
    public partial class ManagerSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] roles = Roles.GetRolesForUser(Page.User.Identity.Name);

            var list = roles.Where(i => i == "Manager");

            if (list.Count() == 0)
                Response.Redirect(WebConfigurationManager.AppSettings["StopPage"]);
        }
    }
}