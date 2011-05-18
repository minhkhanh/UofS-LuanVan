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
        DataEntityDataContext dataContext;
        TaiKhoan acc;
        ThongTinTaiKhoan accInfo;
        bool isPageChange;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Đọc danh sách tài khoản chưa bị xóa từ CSDL
            dataContext = new DataEntityDataContext();
            var acc = from a in dataContext.TaiKhoans
                      where a.BiXoa == false
                      orderby a.TenTaiKhoan
                      select new { a.MaTaiKhoan, a.TenTaiKhoan };

            //Gán danh sách tài khoản cho List_DanhSachTaiKhoan
            List_DanhSachTaiKhoan.DataSource = acc;
            List_DanhSachTaiKhoan.DataTextField = "TenTaiKhoan";
            List_DanhSachTaiKhoan.DataValueField = "MaTaiKhoan";
            List_DanhSachTaiKhoan.DataBind();

            //Thiết lập khoảng ngày sinh hợp lệ
            RangeValidator_NgaySinh.MinimumValue = (DateTime.Parse("01/01/1900")).ToString();
            RangeValidator_NgaySinh.MaximumValue = DateTime.Now.Date.ToString();

            //Thiết lập ngày hiện hành
            Calendar_NgaySinh.TodaysDate = DateTime.Today;

            //Thiết lập cờ hiệu
            isPageChange = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void List_DanhSachTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Lấy Mã tài khoản từ List_DanhSachTaiKhoan
            int maTaiKhoan = int.Parse(List_DanhSachTaiKhoan.SelectedItem.Value);

            //Đọc thông tin tài khoản tương ứng từ CSDL
            acc = dataContext.TaiKhoans.Single(p => p.MaTaiKhoan == maTaiKhoan);
            accInfo = dataContext.ThongTinTaiKhoans.Single(p => p.MaTaiKhoan == maTaiKhoan);

            //Load thông tin tài khoản tương ứng lên Page
            TextBox_TenTaiKhoan.Text = acc.TenTaiKhoan;
            TextBox_HoTen.Text = accInfo.HoTen;
            List_GioiTinh.Text = accInfo.GioiTinh;
            TextBox_NoiSinh.Text = accInfo.NoiSinh;
            TextBox_DiaChi.Text = accInfo.DiaChi;
            TextBox_MaTheTinDung.Text = accInfo.MaTheTinhDung;
            TextBox_SoDienThoai.Text = accInfo.SoDienThoai;
            TextBox_Email.Text = accInfo.Email;
            TextBox_NgaySinh.Text = accInfo.NgaySinh.ToString();
            Calendar_NgaySinh.SelectedDate = DateTime.Parse(TextBox_NgaySinh.Text);

            if (isPageChange == false)
                isPageChange = true;
        }

        protected void Button_Update_Click(object sender, EventArgs e)
        {
            //Chỉ thực hiện khi người dùng đã chọn tài khoản
            if (isPageChange == false)
                return;

            //Tiến hành cập nhật thông tin tài khoản
            //Cập nhật mật khẩu
            //TextBox_Pass and TextBox_RePass đã giống nhau
            //Nếu mật khẩu trong TextBox_Pass khác với mật khẩu trong acc => cập nhật
            if (TextBox_Pass.Text != "")
            {
                if (TextBox_Pass.Text != acc.MatKhau)
                    acc.MatKhau = TextBox_Pass.Text;
            }

            //Cập nhật họ tên:
            //Nếu TextBox_HoTen khác với thông tin trong accInfo => cập nhật
            if (TextBox_HoTen.Text != accInfo.HoTen)
                accInfo.HoTen = TextBox_HoTen.Text;

            //Cập nhật ngày sinh
            //Nếu TextBox_NgaySinh khác với thông tin trong accInfo => cập nhật
            if (TextBox_NgaySinh.Text != accInfo.NgaySinh.ToString())
                accInfo.NgaySinh = DateTime.Parse(TextBox_NgaySinh.Text);

            //Cập nhật nơi sinh, tương tự các phần trên
            if (TextBox_NoiSinh.Text != accInfo.NoiSinh)
                accInfo.NoiSinh = TextBox_NoiSinh.Text;

            //Cập nhật địa chỉ, tương tự các phần trên
            if (TextBox_DiaChi.Text != accInfo.DiaChi)
                accInfo.DiaChi = TextBox_DiaChi.Text;

            //Cập nhật số điện thoại, tương tự các phần trên
            if (TextBox_SoDienThoai.Text != accInfo.SoDienThoai)
                accInfo.SoDienThoai = TextBox_SoDienThoai.Text;

            //Cập nhật mã thẻ tín dụng
            if (TextBox_MaTheTinDung.Text != accInfo.MaTheTinhDung)
                accInfo.MaTheTinhDung = TextBox_MaTheTinDung.Text;

            //Cập nhật email
            if (TextBox_Email.Text != accInfo.Email)
                accInfo.Email = TextBox_Email.Text;

            //Lưu thông tin đã cập nhật vào cơ sở dữ liệu
            dataContext.SubmitChanges();
        }

        protected void Calendar_NgaySinh_SelectionChanged(object sender, EventArgs e)
        {
            DateTime ngaySinh = Calendar_NgaySinh.SelectedDate;
            TextBox_NgaySinh.Text = ngaySinh.ToString();
        }
    }
}