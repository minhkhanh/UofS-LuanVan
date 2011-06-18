using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace vBay
{
    public partial class UC_CapNhatThongTinTaiKhoan : System.Web.UI.UserControl
    {
        static private DataEntityDataContext dataContext;
        static private aspnet_User accUser;
        static private aspnet_Membership accMembership;
        static private ThongTinTaiKhoan accInfo;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm
            //  1. Khởi tạo biến dataContext để đọc thông tin từ CSDL
            //  2. Đọc UserName của người dùng đang đăng nhập
            //  3. Thực hiện truy vấn để lấy danh sách giới tính và load lên DropDownList_GioiTinh
            //  4. Thiết lập các item cho DropDownList_Date, DropDownList_Month và DropDownList_Year
            //  5. Truy vấn CSDL để lấy ra thông tin (UserName, Pass, HoTen, NgaySinh, DiaChi, SoDienThoai, Email) và thông tin thẻ (FirstName, LastName, Address, Country, State, ZipCode, CardType, CardNumber, ExpiredTime và CVV2)
            //  6. Thiết lập các item cho DropDownList_ExpiredMonth và DropDownList_ExpiredYear
            //  7. Load các thông tin của người dùng lên các TextBox tương ứng
                        
            //Tiến hành
            //  1. Khởi tạo biến dataContext để đọc thông tin từ CSDL
            dataContext = new DataEntityDataContext();

            //  2. Đọc UserName của người dùng đang đăng nhập
            String userName = Page.User.Identity.Name;
            
            //  3. Thực hiện truy vấn để lấy danh sách giới tính và load lên DropDownList_GioiTinh
            var danhSachGioiTinh = from a in dataContext.GioiTinhs
                                   select new { a.MaGioiTinh, a.TenGioiTinh};

            DropDownList_GioiTinh.DataSource = danhSachGioiTinh;
            DropDownList_GioiTinh.DataTextField = "TenGioiTinh";
            DropDownList_GioiTinh.DataValueField = "MaGioiTinh";
            DropDownList_GioiTinh.DataBind();
            
            //  4. Thiết lập các item cho DropDownList_Date, DropDownList_Month và DropDownList_Year
            //  Thiết lập các item cho DropDownList_Date
            DropDownList_Date.Items.Add("day");
            for (int i = 1; i <= 31; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_Date.Items.Add(item);
            }

            //  Thiết lập các item cho DropDownList_Month
            DropDownList_Month.Items.Add("month");
            for (int i = 1; i <= 12; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_Month.Items.Add(item);
            }

            //  Thiết lập item cho DropDownList_Year
            DropDownList_Year.Items.Add("year");
            for (int i = 1900; i <= DateTime.Today.Year; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_Year.Items.Add(item);
            }

            //  5. Truy vấn CSDL để lấy ra thông tin (UserName, Pass, HoTen, NgaySinh, DiaChi, SoDienThoai, Email) và thông tin thẻ (FirstName, LastName, Address, Country, State, ZipCode, CardType, CardNumber, ExpiredTime và CVV2)
            accUser = dataContext.aspnet_Users.Single(p => p.UserName == userName);
            accInfo = dataContext.ThongTinTaiKhoans.Single(p => p.MaThongTinTaiKhoan == accUser.MaThongTinTaiKhoan);
            accMembership = dataContext.aspnet_Memberships.Single(p => p.UserId == accUser.UserId);

            //  6. Thiết lập các item cho DropDownList_ExpiredMonth và DropDownList_ExpiredYear
            //DropDownList_ExpiredMonth.Items.Clear();
            DropDownList_ExpiredMonth.Items.Add("month");
            for (int i = 1; i <= 12; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_ExpiredMonth.Items.Add(item);
            }

            //DropDownList_ExpiredYear.Items.Clear();
            DropDownList_ExpiredYear.Items.Add("year");
            for (int i = DateTime.Today.Year - 500; i <= DateTime.Today.Year + 1000; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_ExpiredYear.Items.Add(item);
            }

            //  7. Load các thông tin của người dùng lên các TextBox tương ứng
            Load_AccountInfo(accUser.UserId);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (ckbNoAvatar.Checked == true)
            {
                AvatarImg.ImageUrl = "";
            }

            if (IsPostBack)
            {
                Boolean fileOK = false;
                String path = Server.MapPath(WebConfigurationManager.AppSettings["AvatarFolder"]);
                if (AvatarUploadCtrl.HasFile)
                {
                    String fileExtension =
                        System.IO.Path.GetExtension(AvatarUploadCtrl.FileName).ToLower();
                    String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                            break;
                        }
                    }
                }

                if (fileOK)
                {
                    try
                    {
                        AvatarUploadCtrl.PostedFile.SaveAs(path
                            + AvatarUploadCtrl.FileName);

                        AvatarImg.ImageUrl = WebConfigurationManager.AppSettings["AvatarFolder"] + AvatarUploadCtrl.FileName;
                    }
                    catch (Exception ex)
                    {

                    }
                }
                else
                {

                }
            }
        }
        protected void Button_Update_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_Update_Click
            //  1. Tiến hành cập nhật thông tin tài khoản
            //  Kiểm tra: Nếu mật khẩu trong TextBox_Pass khác với mật khẩu trong accInfo
            //      1.1 Cập nhật lại mật khẩu
            //  Kiểm tra: Nếu TextBox_HoTen khác với thông tin trong accInfo
            //      1.2 Cập nhật lại họ tên
            //  Kiểm tra: Nếu NgaySinh khác với thông tin trong accInfo
            //      1.3 Cập nhật lại ngày sinh
            //  Kiểm tra: Nếu TextBox_DiaChi khác với thông tin trong accInfo
            //      1.5 Cập nhật lại địa chỉ
            //  Kiểm tra: Nếu TextBox_SoDienThoai khác với thông tin trong accInfo
            //      1.6 Cập nhật lại số điện thoại
            //  Kiểm tra: Nếu TextBox_Email khác với thông tin trong accInfo
            //      1.7 Cập nhật lại email
            //  Kiểm tra: Nếu FirstName khác với thông tin trong accInfo
            //      1.8 Cập nhật lại FirstName
            //  Kiểm tra: Nếu LastName khác với thông tin trong accInfo
            //      1.9 Cập nhật lại LastName
            //  Kiểm tra: Nếu Address khác
            //      1.10 Cập nhật lại Address
            //  Kiểm tra: Nếu Country khác
            //      1.11 Cập nhật lại Country
            //  Kiểm tra: Nếu State khác
            //      1.12 Cập nhật lại State
            //  Kiểm tra: Nếu ZipCode khác
            //      1.13 Cập nhật lại ZipCode
            //  Kiểm tra: Nếu CardNumber khác
            //      1.14 Cập nhật lại CardNumber
            //  Kiểm tra: Nếu ExpiredTime khác
            //      1.15 Cập nhật lạ ExpiredTime
            //  Kiểm tra: Nếu CVV2 khác
            //      1.16 Cập nhật lại CVV2
            //  2. Cập nhật lại CSDL thông qua biến dataContext


            //Tiến hành
            //  1. Tiến hành cập nhật thông tin tài khoản
            //  Kiểm tra: Nếu mật khẩu trong TextBox_Pass khác với mật khẩu trong accInfo
            //if (TextBox_Pass.Text != accMembership.Password)
            //    //      1.1 Cập nhật lại mật khẩu
            //    accMembership.Password = TextBox_Pass.Text;

            //  Kiểm tra: Nếu TextBox_HoTen khác với thông tin trong accInfo
            if (TextBox_HoTen.Text != accInfo.HoTen)
                //      1.2 Cập nhật lại họ tên
                accInfo.HoTen = TextBox_HoTen.Text;

            //  Kiểm tra: Nếu NgaySinh khác với thông tin trong accInfo
            int day, month, year;
            if (int.TryParse(DropDownList_Date.SelectedItem.Text, out day)
                && int.TryParse(DropDownList_Month.SelectedItem.Text, out month)
                && int.TryParse(DropDownList_Year.SelectedItem.Text, out year))
            {
                DateTime birthday = new DateTime(year, month, day);
                //if (birthday.ToString() != accInfo.NgaySinh.Value.ToString())
                    //      1.3 Cập nhật lại ngày sinh
                    accInfo.NgaySinh = birthday;
            }            

            //  Kiểm tra: Nếu TextBox_DiaChi khác với thông tin trong accInfo
            if (TextBox_DiaChi.Text != accInfo.DiaChi)
                //      1.5 Cập nhật lại địa chỉ
                accInfo.DiaChi = TextBox_DiaChi.Text;

            //  Kiểm tra: Nếu TextBox_SoDienThoai khác với thông tin trong accInfo
            if (TextBox_SoDienThoai.Text != accInfo.SoDienThoai)
                //      1.6 Cập nhật lại số điện thoại
                accInfo.SoDienThoai = TextBox_SoDienThoai.Text;

            //  Kiểm tra: Nếu TextBox_Email khác với thông tin trong accInfo
            if (TextBox_Email.Text != accMembership.Email)
                //      1.7 Cập nhật lại email
                accMembership.Email = TextBox_Email.Text;

            //  Kiểm tra: Nếu FirstName khác với thông tin trong accInfo
            if (TextBox_FirstName.Text != accInfo.ThongTinThe_FirstName)
                //      1.8 Cập nhật lại FirstName
                accInfo.ThongTinThe_FirstName = TextBox_FirstName.Text;

            //  Kiểm tra: Nếu LastName khác với thông tin trong accInfo
            if (TextBox_LastName.Text != accInfo.ThongTinThe_LastName)
                //      1.9 Cập nhật lại LastName
                accInfo.ThongTinThe_LastName = TextBox_LastName.Text;

            //  Kiểm tra: Nếu Address khác
            if (TextBox_Address.Text != accInfo.ThongTinThe_Address)
                //      1.10 Cập nhật lại Address
                accInfo.ThongTinThe_Address = TextBox_Address.Text;

            //  Kiểm tra: Nếu Country khác
            if (TextBox_Country.Text != accInfo.ThongTinThe_Country)
                //      1.11 Cập nhật lại Country
                accInfo.ThongTinThe_Country = TextBox_Country.Text;

            //  Kiểm tra: Nếu State khác
            if (TextBox_State.Text != accInfo.ThongTinThe_State)
                //      1.12 Cập nhật lại State
                accInfo.ThongTinThe_State = TextBox_State.Text;

            //  Kiểm tra: Nếu ZipCode khác
            if (TextBox_ZipCode.Text != accInfo.ThongTinThe_ZipCode)
                //      1.13 Cập nhật lại ZipCode
                accInfo.ThongTinThe_ZipCode = TextBox_ZipCode.Text;

            //  Kiểm tra: Nếu CardNumber khác
            if (TextBox_CardNumber.Text != accInfo.ThongTinThe_CardNumber)
                //      1.14 Cập nhật lại CardNumber
                accInfo.ThongTinThe_CardNumber = TextBox_CardNumber.Text;

            //  Kiểm tra: Nếu ExpiredTime khác
            //      1.15 Cập nhật lạ ExpiredTime
            if (
                int.TryParse(DropDownList_ExpiredMonth.SelectedItem.Text, out month)
                && int.TryParse(DropDownList_ExpiredYear.SelectedItem.Text, out year)
                )
            {
                //if (month != accInfo.ThongTinThe_ExpireTime.Value.Month)
                //{
                //    DateTime date = new DateTime(accInfo.ThongTinThe_ExpireTime.Value.Year, int.Parse(DropDownList_ExpiredMonth.SelectedItem.Value.ToString()), accInfo.ThongTinThe_ExpireTime.Value.Day);
                //    accInfo.ThongTinThe_ExpireTime = date;
                //}

                //if (int.Parse(DropDownList_ExpiredYear.SelectedItem.Value) != accInfo.ThongTinThe_ExpireTime.Value.Year)
                //{
                //    DateTime date = new DateTime(int.Parse(DropDownList_ExpiredYear.SelectedItem.Value.ToString()), accInfo.ThongTinThe_ExpireTime.Value.Month, accInfo.ThongTinThe_ExpireTime.Value.Day);
                //    accInfo.ThongTinThe_ExpireTime = date;
                //}

                DateTime date = new DateTime(year, month, 1);
                accInfo.ThongTinThe_ExpireTime = date;
            }
            else
                return;

            //  Kiểm tra: Nếu CVV2 khác
            if (TextBox_CVV2.Text != accInfo.ThongTinThe_CVV2)
                //      1.16 Cập nhật lại CVV2
                accInfo.ThongTinThe_CVV2 = TextBox_CVV2.Text;

            accInfo.Avatar = AvatarImg.ImageUrl;

            //  2. Cập nhật lại CSDL thông qua biến dataContext
            dataContext.SubmitChanges();
        }

        public void Load_AccountInfo(Guid maTaiKhoan)
        {
            //Hướng xử lí trong hàm Load_AccountInfo
            //  1. Load thông tin của tài khoản lên các Control tương ứng của Page


            //Tiến hành
            //  1. Load thông tin của tài khoản lên các Control tương ứng của Page
            TextBox_TenTaiKhoan.Text = accUser.UserName;
            TextBox_HoTen.Text = accInfo.HoTen;
            //      Tra cứu các index trong DropDownList_GioiTinh để tìm index của Item có text là giới tính được lưu trong AccInfo
            for (int i = 0; i < DropDownList_GioiTinh.Items.Count; i++)
                if (int.Parse(DropDownList_GioiTinh.Items[i].Value.ToString()) == accInfo.MaGioiTinh)
                {
                    DropDownList_GioiTinh.SelectedIndex = i;
                    break;
                }

            if (accInfo.NgaySinh != null)
            {
                DropDownList_Date.SelectedIndex = DropDownList_Date.Items.IndexOf(new ListItem(accInfo.NgaySinh.Value.Day.ToString()));
                DropDownList_Month.SelectedIndex = DropDownList_Month.Items.IndexOf(new ListItem(accInfo.NgaySinh.Value.Month.ToString()));
                DropDownList_Year.SelectedIndex = DropDownList_Year.Items.IndexOf(new ListItem(accInfo.NgaySinh.Value.Year.ToString()));
            }

            //TextBox_Pass.Text = TextBox_RePass.Text = accMembership.Password;
            TextBox_DiaChi.Text = accInfo.DiaChi;
            TextBox_SoDienThoai.Text = accInfo.SoDienThoai;
            TextBox_Email.Text = accMembership.Email;
            TextBox_Address.Text = accInfo.ThongTinThe_Address;
            TextBox_CardNumber.Text = accInfo.ThongTinThe_CardNumber;
            TextBox_Country.Text = accInfo.ThongTinThe_Country;
            TextBox_CVV2.Text = accInfo.ThongTinThe_CVV2;
            TextBox_FirstName.Text = accInfo.ThongTinThe_FirstName;
            TextBox_LastName.Text = accInfo.ThongTinThe_LastName;
            TextBox_State.Text = accInfo.ThongTinThe_State;
            TextBox_ZipCode.Text = accInfo.ThongTinThe_ZipCode;

            if (accInfo.ThongTinThe_ExpireTime != null)
            {
                DropDownList_ExpiredMonth.SelectedIndex = DropDownList_ExpiredMonth.Items.IndexOf(new ListItem(accInfo.ThongTinThe_ExpireTime.Value.Month.ToString()));
                DropDownList_ExpiredYear.SelectedIndex = DropDownList_ExpiredYear.Items.IndexOf(new ListItem(accInfo.ThongTinThe_ExpireTime.Value.Year.ToString()));
            }
        }

        protected void Validation_NgaySinh_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int day, month, year;
            bool bDay = int.TryParse(DropDownList_Date.SelectedItem.Text, out day);
            bool bMonth = int.TryParse(DropDownList_Month.SelectedItem.Text, out month);
            bool bYear = int.TryParse(DropDownList_Year.SelectedItem.Text, out year);

            if (!bDay && !bMonth && !bYear)
            {
                args.IsValid = true;
                return;
            }

            if (bDay || bMonth || bYear)
            {
                args.IsValid = false;
                return;
            }

            if (day > DateTime.DaysInMonth(year, month))
            {
                args.IsValid = false;
                return;
            }
            else
                args.IsValid = true;
        }

        protected void CustomValidator_ExpiredTime_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int year, month;
            bool bYear = int.TryParse(DropDownList_ExpiredYear.SelectedItem.Text, out year);
            bool bMonth = int.TryParse(DropDownList_ExpiredMonth.SelectedItem.Text, out month);

            if (!bYear || !bMonth)
            {
                args.IsValid = false;
                return;
            }

            if (year < DateTime.Today.Year)
                args.IsValid = false;
            else
                if (year == DateTime.Today.Year)
                {
                    if (month <= DateTime.Today.Month)
                        args.IsValid = false;
                    else
                        args.IsValid = true;
                }
                else
                    if (year > DateTime.Today.Year)
                        args.IsValid = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            ckbNoAvatar.Checked = false;            
        }
    }
}