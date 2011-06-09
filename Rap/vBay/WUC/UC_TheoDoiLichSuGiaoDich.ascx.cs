using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace vBay
{
    public partial class UC_TheoDoiLichSuGiaoDich : System.Web.UI.UserControl
    {
        private DataEntityDataContext dataContext;
        private Guid maTaiKhoan;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm
            //  1. Khởi tạo biến dataContext để đọc thông tin từ CSDL
            //  2. Thực hiện truy vấn lấy danh sách các tài khoản trong CSDL và load lên List_DanhSachTaiKhoan


            //Tiến hành
            //  1. Khởi tạo biến dataContext để đọc thông tin từ CSDL
            dataContext = new DataEntityDataContext();

            //  2. Thực hiện truy vấn lấy danh sách các tài khoản trong CSDL và load lên List_DanhSachTaiKhoan
            var danhSachTaiKhoan = from a in dataContext.aspnet_Memberships
                                   from b in dataContext.aspnet_Users
                                   from c in dataContext.ThongTinTaiKhoans
                                   where a.UserId == b.UserId && b.MaThongTinTaiKhoan == c.MaThongTinTaiKhoan && c.BiXoa == false && a.IsApproved == true
                                   select new { a.UserId, b.UserName};

            List_DanhSachTaiKhoan.DataSource = danhSachTaiKhoan;
            List_DanhSachTaiKhoan.DataTextField = "UserName";
            List_DanhSachTaiKhoan.DataValueField = "UserId";
            List_DanhSachTaiKhoan.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button_Search_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_Search_Click
            //  1. Lấy mã tài khoản của đối tượng đang được selected trong List_DanhSachTaiKhoan
            //  2. Xuất tên tài khoản lên TextBox_DanhSachTaiKhoan
            //  3. Gọi hàm LoadHistory()


            //Tiến hành
            //  1. Lấy mã tài khoản của đối tượng đang được selected trong List_DanhSachTaiKhoan
            maTaiKhoan = Guid.Parse(List_DanhSachTaiKhoan.SelectedItem.Value.ToString());
            String tenTaiKhoan = List_DanhSachTaiKhoan.SelectedItem.Text;
            
            //  2. Xuất tên tài khoản lên TextBox_DanhSachTaiKhoan
            TextBox_TenTaiKhoan.Text = tenTaiKhoan;
            
            //  3. Gọi hàm LoadHistory()
            LoadHistory(maTaiKhoan);            
        }
        public void LoadHistory(Guid maTaiKhoan)
        {
            //Hướng xử lí trong hàm LoadHistory
            //  1. Đọc thông tin lịch sử giao dịch từ CSDL
            //  2. Xuất thông tin lịch sử giao dịch lên GridView_LichSuGiaoDich


            //Tiến hành
            //  1. Đọc thông tin lịch sử giao dịch từ CSDL
            var history = from a in dataContext.ChiTietDauGias
                          from b in dataContext.SanPhams
                          where a.MaTaiKhoan == maTaiKhoan && a.MaSanPham == b.MaSanPham
                          select new { b.TenSanPham, a.ThoiGianGiaoDich, a.GiaGiaoDich };

            //  2. Xuất thông tin lịch sử giao dịch lên GridView_LichSuGiaoDich
            GridView_LichSuGiaoDich.DataSource = history;
            GridView_LichSuGiaoDich.DataBind();
        }
    }
}