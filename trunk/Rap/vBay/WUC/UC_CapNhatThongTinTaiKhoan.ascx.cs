using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay
{
    public partial class UC_CapNhatThongTinTaiKhoan : System.Web.UI.UserControl
    {
        static private DataEntityDataContext dataContext;
        static private aspnet_User accUser;
        static private aspnet_Membership accMembership;
        static private ThongTinTaiKhoan accInfo;
        static private bool isPageChange = false;
        private Guid userId;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm
            //  1. Khởi tạo biến dataContext để đọc thông tin từ CSDL
            //  2. Thực hiện câu truy vấn để lấy danh sách các tài khoản chưa bị xóa từ CSDL và load lên List_DanhSachTaiKhoan
            //  3. Thực hiện truy vấn để lấy danh sách giới tính và load lên DropDownList_GioiTinh
            //  4. Thiết lập các item cho DropDownList_Date, DropDownList_Month và DropDownList_Year
            //  5. Thiết lập SelectionItem cho DropDownList_Date, DropDownList_Month và DropDownList_Year

                        
            //Tiến hành
            //  1. Khởi tạo biến dataContext để đọc thông tin từ CSDL
            dataContext = new DataEntityDataContext();
            
            //  2. Thực hiện câu truy vấn để lấy danh sách các tài khoản chưa bị xóa và chưa bị khóa từ CSDL và load lên List_DanhSachTaiKhoan
            var danhSachTaiKhoan = from a in dataContext.aspnet_Users
                                   from b in dataContext.ThongTinTaiKhoans
                                   from c in dataContext.aspnet_Memberships
                                   where a.MaThongTinTaiKhoan == b.MaThongTinTaiKhoan && a.UserId == c.UserId && c.IsApproved == true && b.BiXoa == false
                                   select new { a.UserId, a.UserName };

            List_DanhSachTaiKhoan.DataSource = danhSachTaiKhoan;
            List_DanhSachTaiKhoan.DataTextField = "UserName";
            List_DanhSachTaiKhoan.DataValueField = "UserId";
            List_DanhSachTaiKhoan.DataBind();

            //  3. Thực hiện truy vấn để lấy danh sách giới tính và load lên DropDownList_GioiTinh
            var danhSachGioiTinh = from a in dataContext.GioiTinhs
                                   select new { a.MaGioiTinh, a.TenGioiTinh};

            DropDownList_GioiTinh.DataSource = danhSachGioiTinh;
            DropDownList_GioiTinh.DataTextField = "TenGioiTinh";
            DropDownList_GioiTinh.DataValueField = "MaGioiTinh";
            DropDownList_GioiTinh.DataBind();
            
            //  6. Thiết lập các item cho DropDownList_Date, DropDownList_Month và DropDownList_Year
            //  Thiết lập các item cho DropDownList_Date
            for (int i = 1; i <= 31; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_Date.Items.Add(item);
            }

            //  Thiết lập các item cho DropDownList_Month
            for (int i = 1; i <= 12; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_Month.Items.Add(item);
            }

            //  Thiết lập item cho DropDownList_Year
            for (int i = 1900; i <= DateTime.Today.Year; i++)
            {
                ListItem item = new ListItem(i.ToString(), i.ToString());
                DropDownList_Year.Items.Add(item);
            }

            //  7. Thiết lập SelectionItem cho DropDownList_Date, DropDownList_Month và DropDownList_Year
            DropDownList_Date.SelectedIndex = 0;
            DropDownList_Month.SelectedIndex = 0;
            DropDownList_Year.SelectedIndex = 0;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void List_DanhSachTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Hướng xử lí
            //  1. Lấy mã tài khoản từ SelectedItem.Value trong List_DanhSachTaiKhoan và gán cho biến userId
            //  2. Gọi hàm Load_AccountInfo với tham số truyền vào là mã tài khoản ở trên
            //  3. Gán giá trị true cho cờ hiệu isPageChange => Page đã được ReLoad ít nhất 1 lần

            //Tiến hành
            //  1. Lấy mã tài khoản từ SelectedItem.Value trong List_DanhSachTaiKhoan
            userId = Guid.Parse(List_DanhSachTaiKhoan.SelectedItem.Value.ToString());
            
            //  2. Gọi hàm Load_AccountInfo với tham số truyền vào là mã tài khoản ở trên
            Load_AccountInfo(userId);
            
            //  3. Gán giá trị true cho cờ hiệu isPageChange => Page đã được ReLoad ít nhất 1 lần
            //  Kiểm tra: nếu isPageChange == false
            if (isPageChange == false)
                //Gán giá trị true cho isPageChange
                isPageChange = true;
        }
        protected void Button_Update_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_Update_Click
            //Kiểm tra: Nếu Page đã được ReLoad ít nhất 1 lần
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
            //  Kiểm tra: Nếu TextBox_MaTheTinDung khác với thông tin trong accInfo
            //      1.7 Cập nhật lại mã thẻ tín dụng
            //  Kiểm tra: Nếu TextBox_Email khác với thông tin trong accInfo
            //      1.8 Cập nhật lại email
            //  2. Cập nhật lại CSDL thông qua biến dataContext


            //Tiến hành
            //Kiểm tra: Nếu Page đã được ReLoad ít nhất 1 lần
            if (isPageChange == false)
                return;

            //  1. Tiến hành cập nhật thông tin tài khoản
            //  Kiểm tra: Nếu mật khẩu trong TextBox_Pass khác với mật khẩu trong accInfo
            if (TextBox_Pass.Text != accMembership.Password)
                //      1.1 Cập nhật lại mật khẩu
                accMembership.Password = TextBox_Pass.Text;

            //  Kiểm tra: Nếu TextBox_HoTen khác với thông tin trong accInfo
            if (TextBox_HoTen.Text != accInfo.HoTen)
                //      1.2 Cập nhật lại họ tên
                accInfo.HoTen = TextBox_HoTen.Text;

            //  Kiểm tra: Nếu NgaySinh khác với thông tin trong accInfo
            DateTime birthday = new DateTime(int.Parse(DropDownList_Year.SelectedItem.Value), int.Parse(DropDownList_Month.SelectedItem.Value), int.Parse(DropDownList_Date.SelectedItem.Value));
            if (birthday.ToString() != accInfo.NgaySinh.Value.ToString())
                //      1.3 Cập nhật lại ngày sinh
                accInfo.NgaySinh = birthday;

            //  Kiểm tra: Nếu TextBox_DiaChi khác với thông tin trong accInfo
            if (TextBox_DiaChi.Text != accInfo.DiaChi)
                //      1.5 Cập nhật lại địa chỉ
                accInfo.DiaChi = TextBox_DiaChi.Text;

            //  Kiểm tra: Nếu TextBox_SoDienThoai khác với thông tin trong accInfo
            if (TextBox_SoDienThoai.Text != accInfo.SoDienThoai)
                //      1.6 Cập nhật lại số điện thoại
                accInfo.SoDienThoai = TextBox_SoDienThoai.Text;

            //  Kiểm tra: Nếu TextBox_MaTheTinDung khác với thông tin trong accInfo
            if (TextBox_MaTheTinDung.Text != accInfo.MaTheTinDung)
                //      1.7 Cập nhật lại mã thẻ tín dụng
                accInfo.MaTheTinDung = TextBox_MaTheTinDung.Text;

            //  Kiểm tra: Nếu TextBox_Email khác với thông tin trong accInfo
            if (TextBox_Email.Text != accMembership.Email)
                //      1.8 Cập nhật lại email
                accMembership.Email = TextBox_Email.Text;

            //  2. Cập nhật lại CSDL thông qua biến dataContext
            dataContext.SubmitChanges();
        }
        public void Load_AccountInfo(Guid maTaiKhoan)
        {
            //Hướng xử lí trong hàm Load_AccountInfo
            //  1. Thực hiện truy vấn để lấy các thông tin có liên quan đến tài khoản có mã tài khoản được truyền là maTaiKhoan
            //  2. Load thông tin của tài khoản lên các Control tương ứng của Page


            //Tiến hành
            //  1. Thực hiện truy vấn để lấy các thông tin có liên quan đến tài khoản có mã tài khoản được truyền là maTaiKhoan
            accUser = dataContext.aspnet_Users.Single(p => p.UserId == maTaiKhoan);
            accMembership = dataContext.aspnet_Memberships.Single(p => p.UserId == maTaiKhoan);
            accInfo = dataContext.ThongTinTaiKhoans.Single(p => p.MaThongTinTaiKhoan == accUser.MaThongTinTaiKhoan);

            //  2. Load thông tin của tài khoản lên các Control tương ứng của Page
            TextBox_TenTaiKhoan.Text = accUser.UserName;
            TextBox_HoTen.Text = accInfo.HoTen;
            //      Tra cứu các index trong DropDownList_GioiTinh để tìm index của Item có text là giới tính được lưu trong AccInfo
            for (int i = 0; i < DropDownList_GioiTinh.Items.Count; i++)
                if (int.Parse(DropDownList_GioiTinh.Items[i].Value.ToString()) == accInfo.MaGioiTinh)
                {
                    DropDownList_GioiTinh.SelectedIndex = i;
                    break;
                }

            DropDownList_Date.SelectedIndex = DropDownList_Date.Items.IndexOf(new ListItem(accInfo.NgaySinh.Value.Day.ToString()));
            DropDownList_Month.SelectedIndex = DropDownList_Month.Items.IndexOf(new ListItem(accInfo.NgaySinh.Value.Month.ToString()));
            DropDownList_Year.SelectedIndex = DropDownList_Year.Items.IndexOf(new ListItem(accInfo.NgaySinh.Value.Year.ToString()));
            TextBox_Pass.Text = TextBox_RePass.Text = accMembership.Password;
            TextBox_DiaChi.Text = accInfo.DiaChi;
            TextBox_SoDienThoai.Text = accInfo.SoDienThoai;
            TextBox_MaTheTinDung.Text = accInfo.MaTheTinDung;
            TextBox_Email.Text = accMembership.Email;
        }
        protected void Validation_NgaySinh_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (int.Parse(DropDownList_Date.SelectedItem.Value) > DateTime.DaysInMonth(int.Parse(DropDownList_Year.SelectedItem.Value), int.Parse(DropDownList_Month.SelectedItem.Value)))
            {
                args.IsValid = false;
                return;
            }
            else
                args.IsValid = true;
        }
    }
}