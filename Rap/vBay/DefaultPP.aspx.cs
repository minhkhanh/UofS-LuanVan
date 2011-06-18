using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //tbfname.Text = "Howard";
        //tblname.Text = "Webb";
        //tbadd.Text = "1600 Amphitheatre Parkway";
        //tbcountry.Text = "United States";
        //tbstate.Text = "New Mexico";
        //tbzipcode.Text = "1";
        //tbcard.Text = "4490701599080019";
        //tbmonth.Text = "09";
        //tbyear.Text = "2018";
        //tbcvv2.Text = "099";
    }
    
    protected void btnExpressCheckout_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void btnCreditCard_Click(object sender, ImageClickEventArgs e)
    {
        //PayPalGateway pp = new PayPalGateway();
        //PayPalReturn rv = pp.Pay("123", tbamount.Text, tblname.Text, tbfname.Text, tbadd.Text, tbcountry.Text, tbstate.Text, tbzipcode.Text , tbcountry.Text, tbzipcode.Text, Dropcard.Text, tbcard.Text, tbcvv2.Text, tbmonth.Text, tbyear.Text);
        //if (rv.IsSucess)
        //{
        //    lblMsg.Text = "Your Invoice Number: " + rv.TransactionID;
        //}
        //else
        //{
        //    lblMsg.Text = "Error process: " + rv.ErrorMessage;
        //}
    }
}
