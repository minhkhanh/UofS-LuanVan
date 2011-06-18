using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace vBay
{
    public partial class SigningUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.Name != "")
            {
                Response.Redirect(WebConfigurationManager.AppSettings["StopPage"]);
                return;
            }

            if (IsPostBack == false)
            {
                //WUCDangKy1.
            }
        }
    }
}