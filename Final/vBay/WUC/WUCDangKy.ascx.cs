using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.Security;
using Recaptcha;




namespace vBay
{
    public partial class WUCDangKy : System.Web.UI.UserControl
    {
        #region control properties

        public Label MyErrorLabel
        {
            get { return GetControl("lblErrMess") as Label; }
        }

        public Control GetControl(string id)
        {
            return CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl(id);
        }

        TextBox AddressTxb
        {
            get { return GetControl("txbAddress") as TextBox; }
        }

        TextBox FullNameTxb
        {
            get { return GetControl("txbFullName") as TextBox; }
        }

        TextBox PhoneTxb
        {
            get { return GetControl("txbPhone") as TextBox; }
        }

        TextBox CreditCardIdTxb
        {
            get { return GetControl("txbCreditCardId") as TextBox; }
        }

        WUCDateSelect DOBSelect
        {
            get { return GetControl("DOBSelect") as WUCDateSelect; }
        }

        DropDownList SexDrl
        {
            get { return GetControl("drlSex") as DropDownList; }
        }

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            DataEntityDataContext dc = new DataEntityDataContext();

            aspnet_User currUser = dc.aspnet_Users.Single(i => i.UserName == CreateUserWizard1.UserName);

            ThongTinDauGia ttdg = new ThongTinDauGia();
            ThongTinTaiKhoan tttk = new ThongTinTaiKhoan();

            //tttk.Avatar = AvatarImg.ImageUrl;
            tttk.DiaChi = AddressTxb.Text;
            tttk.MaGioiTinh = int.Parse(SexDrl.SelectedValue);
            tttk.HoTen = FullNameTxb.Text;
            //tttk.MaTheTinDung = CreditCardIdTxb.Text;
            tttk.SoDienThoai = PhoneTxb.Text;
            tttk.NgaySinh = DOBSelect.SelectedDate;

            Roles.AddUsersToRole(new string[] { currUser.UserName}, "Member");

            currUser.ThongTinDauGia = ttdg;
            currUser.ThongTinTaiKhoan = tttk;

            dc.SubmitChanges();
        }

        protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
        {
            RecaptchaControl myCaptcha =  (RecaptchaControl)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("recaptcha");
            myCaptcha.Validate();
            if (!myCaptcha.IsValid)
                e.Cancel = true;

            string errMess = "";

            if (DOBSelect.IsValid == false && DOBSelect.IsIgnored == false)
            {
                errMess += "Invalid day of birth.<br/>";
            }

            DataEntityDataContext dc = new DataEntityDataContext();

            var list = dc.aspnet_Memberships.Where(i => i.LoweredEmail == CreateUserWizard1.Email.ToLower());
            //Array sss = list.ToArray();
            if (list.Count() != 0)
            {
                errMess += "Email is in used.<br/>";
            }

            if (errMess != "")
                e.Cancel = true;

            MyErrorLabel.Text = errMess;
        }        
    }
}