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
        private DataEntityDataContext dataContext;
        private aspnet_User accUser;
        private aspnet_Membership accMembership;
        private ThongTinTaiKhoan accInfo;
        private bool isPageChange;
        private Guid userId;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm
            //  1. Khởi tạo biến dataContext để đọc thông tin từ CSDL
            //  2. Thực hiện câu truy vấn để lấy danh sách các tài khoản chưa bị xóa từ CSDL và load lên List_DanhSachTaiKhoan
            //  3. Thực hiện truy vấn để lấy danh sách giới tính và load lên DropDownList_GioiTinh
            //  4. Thiết lập khoảng ngày sinh hợp lệ cho RangeValidation_NgaySinh
            //  5. Thiết lập ngày hiện hành
            //  6. Thiết lập giá trị cho cờ hiệu isPageChange => page vừa được load lần đầu, chưa được ReLoad
            
                        
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
            
            //  4. Thiết lập khoảng ngày sinh hợp lệ cho RangeValidation_NgaySinh
            RangeValidator_NgaySinh.MinimumValue = (DateTime.Parse("01/01/1900")).ToString();
            RangeValidator_NgaySinh.MaximumValue = DateTime.Now.Date.ToString();

            //  5. Thiết lập ngày hiện hành
            Calendar_NgaySinh.TodaysDate = DateTime.Today;

            //  6. Thiết lập giá trị cho cờ hiệu isPageChange => page vừa được load lần đầu, chưa được ReLoad
            isPageChange = false;
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
            //  Kiểm tra: Nếu TextBox_NgaySinh khác với thông tin trong accInfo
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

            //  Kiểm tra: Nếu TextBox_NgaySinh khác với thông tin trong accInfo
            if (TextBox_NgaySinh.Text != accInfo.NgaySinh.ToString())
                //      1.3 Cập nhật lại ngày sinh
                accInfo.NgaySinh = DateTime.Parse(TextBox_NgaySinh.Text);

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
        protected void Calendar_NgaySinh_SelectionChanged(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Calendar_NgaySinh_SelectionChanged
            //  1. Khai báo biến ngaySinh để lưu lại lựa chọn mới của người dùng trong Calendar_NgaySinh
            //  2. Cập nhật giá trị trong TextBox_NgaySinh theo biến ngaySinh ở trên


            //Tiến hành
            //  1. Khai báo biến ngaySinh để lưu lại lựa chọn mới của người dùng trong Calendar_NgaySinh
            DateTime ngaySinh = Calendar_NgaySinh.SelectedDate;
            
            //  2. Cập nhật giá trị trong TextBox_NgaySinh theo biến ngaySinh ở trên
            TextBox_NgaySinh.Text = ngaySinh.ToString();
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

            TextBox_NgaySinh.Text = accInfo.NgaySinh.ToString();
            TextBox_DiaChi.Text = accInfo.DiaChi;
            TextBox_SoDienThoai.Text = accInfo.SoDienThoai;
            TextBox_MaTheTinDung.Text = accInfo.MaTheTinDung;
            TextBox_Email.Text = accMembership.Email;
        }
    }
}