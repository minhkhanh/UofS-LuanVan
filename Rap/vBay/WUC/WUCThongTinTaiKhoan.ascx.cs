using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace vBay
{
    public partial class ThongTinTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.Name == "")
                Response.Redirect(WebConfigurationManager.AppSettings["HeadPage"]);

            if (IsPostBack == false)
            {
                DataEntityDataContext dc = new DataEntityDataContext();

                var list = from i in dc.aspnet_Users
                           where i.UserName == Page.User.Identity.Name
                           let u = i.ThongTinTaiKhoan
                           select new { u, i.UserName, i.aspnet_Membership.LoweredEmail };

                var profile = list.Single();

                txbUsername.Text = profile.UserName;
                txbEmail.Text = profile.LoweredEmail;

                LoadUserProfile(profile.u);
            }
        }

        void LoadUserProfile(ThongTinTaiKhoan accInfo)
        {
            txbFullname.Text = accInfo.HoTen;
            txbAddress.Text = accInfo.DiaChi;
            WUCDateSelect1.SelectedDate = accInfo.NgaySinh;
            txbCreditCardId.Text = accInfo.MaTheTinDung;
            txbPhoneNumber.Text = accInfo.SoDienThoai;
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            string errMess = "";

            if (WUCDateSelect1.IsValid == false && WUCDateSelect1.IsIgnored == false)
                errMess += "Invalid day of birth.<br/>";

            lblMyErrMess.Text = errMess;

            DataEntityDataContext dc = new DataEntityDataContext();
            ThongTinTaiKhoan accInfo = dc.aspnet_Users.Single(i => i.UserName == Page.User.Identity.Name).ThongTinTaiKhoan;

            if (errMess == "")
            {
                accInfo.HoTen = txbFullname.Text;
                accInfo.DiaChi = txbAddress.Text;
                accInfo.NgaySinh = WUCDateSelect1.SelectedDate;
                accInfo.MaTheTinDung = txbCreditCardId.Text;
                accInfo.SoDienThoai = txbPhoneNumber.Text;

                dc.SubmitChanges();
            }
            else
            {
                LoadUserProfile(accInfo);
            }
        }
    }
}