using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace vBay
{
    public partial class WUCDangNhapNhanh : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (IsPostBack == false)
            {
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void QuickLoginView_ViewChanged(object sender, EventArgs e)
        {

        }
    }
}