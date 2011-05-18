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

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {

            if (Session["theme"] == null)
                Page.Theme = "ThemeNormal";
            else
                Page.Theme = Session["theme"].ToString();
            
        }

       

        

    }

}
