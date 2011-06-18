using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay
{
    public partial class WUCDateSelect : System.Web.UI.UserControl
    {
        public bool IsValid
        {
            get { return drlMonth.SelectedIndex != 0 && drlDay.SelectedIndex != 0 && txbYear.Text != "year" && txbYear.Text != ""; }
        }

        public bool IsIgnored
        {
            get { return drlMonth.SelectedIndex == 0 && drlDay.SelectedIndex == 0 && (txbYear.Text == "year" || txbYear.Text == ""); }
        }

        public DateTime? SelectedDate
        {
            get 
            {
                if (IsIgnored)
                    return null;

                return new DateTime(int.Parse(txbYear.Text), 
                int.Parse(drlMonth.SelectedValue), 
                int.Parse(drlDay.SelectedValue)) ;
            }
            set
            {
                if (value != null)
                {
                    drlDay.SelectedIndex = value.Value.Day;
                    drlMonth.SelectedIndex = value.Value.Month;
                    txbYear.Text = value.Value.Year.ToString();
                }
                else
                    Reset();
            }
        }

        public void Reset()
        {
            drlDay.SelectedIndex = drlMonth.SelectedIndex = 0;
            txbYear.Text = "year";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}