using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["theme"] == null)
                Page.Theme = "ThemeNormal";
            else
            {
                Page.Theme = Session["theme"].ToString();
                DropDownList dropDownListTheme = (DropDownList)Master.FindControl("DropDownListTheme");
                if (dropDownListTheme != null)
                {
                    if (Session["theme"] == "ThemeNormal")
                        dropDownListTheme.SelectedIndex = 0;
                    else if(Session["theme"] == "ThemeSunny")
                        dropDownListTheme.SelectedIndex = 1;



                }

            }
        }

        protected void ButtonChooseTheme_Click(object sender, EventArgs e)
        {

            DropDownList dropDownListTheme = (DropDownList)Master.FindControl("DropDownListTheme");

            if (dropDownListTheme != null)
            {
                if (dropDownListTheme.SelectedItem.Value == "Normal")
                    Session["theme"] = "ThemeNormal";
                else if (dropDownListTheme.SelectedItem.Value == "Sunny")
                    Session["theme"] = "ThemeSunny";
            }

            Response.Redirect("~/About.aspx");
        }
    }
}
