using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace vBay
{
    public partial class UC_QuanLiTaiKhoan : System.Web.UI.UserControl
    {
        DataEntityDataContext dataContext;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Page_Init
            //  1. Khởi tạo biến dataContext để truy xuất thông tin từ CSDL
            //  2. Thực hiện truy vấn để lấy danh sách tài khoản chưa bị xóa và chưa bị khóa từ CSDL và load lên DropDownList_TenTaiKhoanCanKhoa
            //  3. Thực hiện truy vấn để lấy danh sách tài khoản chưa bị xóa nhưng đang bị khóa từ CSDL và load lên GridView_DanhSachTaiKhoanBiKhoa và DropDownList_DanhSachTaiKhoanLocked
            //  4. Cập nhật cứng ListItems cho DropDownList_ThoiHanKhoa


            //Tiến hành
            //  1. Khởi tạo biến dataContext để truy xuất thông tin từ CSDL
            dataContext = new DataEntityDataContext();

            //  2. Thực hiện truy vấn để lấy danh sách tài khoản chưa bị xóa và chưa bị khóa từ CSDL và load lên DropDownList_TenTaiKhoanCanKhoa
            var danhSachTaiKhoan_NoDel_NoLocked = from a in dataContext.aspnet_Users
                                                  from b in dataContext.aspnet_Memberships
                                                  from c in dataContext.ThongTinTaiKhoans
                                                  where a.MaThongTinTaiKhoan == c.MaThongTinTaiKhoan && a.UserId == b.UserId
                                                        && c.BiXoa == false && b.IsApproved == true
                                                  select new { a.UserId, a.UserName };

            DropDownList_TenTaiKhoanCanKhoa.DataSource = danhSachTaiKhoan_NoDel_NoLocked;
            DropDownList_TenTaiKhoanCanKhoa.DataTextField = "UserName";
            DropDownList_TenTaiKhoanCanKhoa.DataValueField = "UserId";
            DropDownList_TenTaiKhoanCanKhoa.DataBind();

            //  3. Thực hiện truy vấn để lấy danh sách tài khoản chưa bị xóa nhưng đang bị khóa từ CSDL và load lên GridView_DanhSachTaiKhoanBiKhoa và DropDownList_DanhSachTaiKhoanLocked
            var danhSachTaiKhoan_NoDel_Locked = from a in dataContext.aspnet_Users
                                                from b in dataContext.aspnet_Memberships
                                                from c in dataContext.ThongTinTaiKhoans
                                                where a.MaThongTinTaiKhoan == c.MaThongTinTaiKhoan && a.UserId == b.UserId
                                                      && c.BiXoa == false && b.IsApproved == false
                                                select new { a.UserId, a.UserName, c.ThoiGianUnlock};

            GridView_DanhSachTaiKhoanBiKhoa.DataSource = danhSachTaiKhoan_NoDel_Locked;
            GridView_DanhSachTaiKhoanBiKhoa.DataBind();

            DropDownList_DanhSachTaiKhoanLocked.DataSource = danhSachTaiKhoan_NoDel_Locked;
            DropDownList_DanhSachTaiKhoanLocked.DataTextField = "UserName";
            DropDownList_DanhSachTaiKhoanLocked.DataValueField = "UserId";
            DropDownList_DanhSachTaiKhoanLocked.DataBind();

            //  4. Cập nhật cứng ListItems cho DropDownList_ThoiHanKhoa
            for (int i = 1; i <= 12; i++)
                DropDownList_ThoiHanKhoa.Items.Add(i.ToString());
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Page_Load
            //  1. Cập nhật lại dữ liệu cho GridView_DanhSachTaiKhoanBiKhoa


            //Tiến hành
            //  1. Cập nhật lại dữ liệu cho GridView_DanhSachTaiKhoanBiKhoa
            GridView_DanhSachTaiKhoanBiKhoa.DataBind();
        }
        protected void GridView_DanhSachTaiKhoanBiKhoa_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Hướng xử lí trong hàm GridView_DanhSachTaiKhoanBiKhoa_PageIndexChanging
            //  1. Cập nhật lại PageIndex theo e
            //  2. Gọi hàm Page_Load


            //Tiến hành
            //  1. Cập nhật lại PageIndex theo e
            GridView_DanhSachTaiKhoanBiKhoa.PageIndex = e.NewPageIndex;

            //  2. Gọi hàm Page_Load
            Page_Load(sender, e);
        }
        protected void Button_Lock_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_Lock_Click
            //  1. Khai báo userId để lưu UserId của tài khoản cần lock dựa vào SelectedItem.Value của DropDownList_TenTaiKhoanCanKhoa
            //  2. Khai báo thoiGianLock để lưu thời gian khóa tài khoản dựa vào SelectedItem.Value của DropDownList_ThoiHanKhoa
            //  3. Khai báo donViThoiGian để lưu đơn vị thời gian khóa tài khoản dựa vào SelectedItem.Value của DropDownList_DonViThoiGian
            //  4. Gọi hàm LockTaiKhoan với tham số truyền vào là userId, thoiGianLock và donViThoiGian
            //  5. Gọi hàm Page_Init


            //Tiến hành
            //  1. Khai báo userId để lưu UserId của tài khoản cần lock dựa vào SelectedItem.Value của DropDownList_TenTaiKhoanCanKhoa
            Guid userId = Guid.Parse(DropDownList_TenTaiKhoanCanKhoa.SelectedItem.Value.ToString());

            //  2. Khai báo thoiGianLock để lưu thời gian khóa tài khoản dựa vào SelectedItem.Value của DropDownList_ThoiHanKhoa
            int thoiGianLock = int.Parse(DropDownList_ThoiHanKhoa.SelectedItem.Value.ToString());

            //  3. Khai báo donViThoiGian để lưu đơn vị thời gian khóa tài khoản dựa vào SelectedItem.Value của DropDownList_DonViThoiGian
            String donViThoiGian = DropDownList_DonViThoiGian.SelectedItem.Text.ToString();

            //  4. Gọi hàm LockTaiKhoan với tham số truyền vào là userId, thoiGianLock và donViThoiGian
            LockTaiKhoan(userId, thoiGianLock, donViThoiGian);

            //  5. Gọi hàm Page_Init
            Page_Init(sender, e);
        }
        protected void Button_Unlock_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_Unlock_Click
            //  1. Khai báo userId để lấy UserId của tài khoản đang được chọn dựa vào SelectedItem.Value của DropDownList_DanhSachTaiKhoanLocked
            //  2. Gọi hàm UnlockTaiKhoan với tham số truyền vào là userId
            //  3. Gọi hàm Page_Init


            //Tiến hành
            //  1. Khai báo userId để lấy UserId của tài khoản đang được chọn dựa vào SelectedItem.Value của DropDownList_DanhSachTaiKhoanLocked
            Guid userId = Guid.Parse(DropDownList_DanhSachTaiKhoanLocked.SelectedItem.Value.ToString());

            //  2. Gọi hàm UnlockTaiKhoan với tham số truyền vào là userId
            UnlockTaiKhoan(userId);

            //  3. Gọi hàm Page_Init
            Page_Init(sender, e);
        }
        public void LockTaiKhoan(Guid userId, int thoiHanLock, String donVi)
        {
            //Hướng xử lí trong hàm LockTaiKhoan
            //  1. Thực hiện truy vấn để lấy thông tin tài khoản có userId được truyền vào hàm và lưu vào 3 biến là accInfo (ThongTinTaiKhoan), accUser (aspnet_User) và accMembership (aspnet_Membership)
            //  2. Kiểm tra: Nếu đơn vị thời gian là "Vĩnh viễn"
            //      2.1. Gán giá trị true cho trường BiXoa => tài khoản đã bị xóa
            //      Except: Gán giá trị true cho trường BiKhoa
            //          2.e.1. Đơn vị thời gian khác "Vĩnh viễn", dùng switch để lựa chọn từng trường hợp đơn vị thời gian và xử lí tương ứng
            //  3. Cập nhật CSDL thông qua biến dataContext


            //Tiến hành
            //  1. Thực hiện truy vấn để lấy thông tin tài khoản có userId được truyền vào hàm và lưu vào 3 biến là accInfo (ThongTinTaiKhoan), accUser (aspnet_User) và accMembership (aspnet_Membership)
            aspnet_User accUser = dataContext.aspnet_Users.Single(p => p.UserId == userId);
            aspnet_Membership accMembership = dataContext.aspnet_Memberships.Single(p => p.UserId == userId);
            ThongTinTaiKhoan accInfo = dataContext.ThongTinTaiKhoans.Single(p => p.MaThongTinTaiKhoan == accUser.MaThongTinTaiKhoan);

            //  2. Kiểm tra: Nếu đơn vị thời gian là "Vĩnh viễn"
            if (donVi == "Vĩnh viễn")
            {
                //      2.1. Gán giá trị true cho trường BiXoa => tài khoản đã bị xóa
                accInfo.BiXoa = true;                
            }            
            else
            {
                //      Except: Gán giá trị false cho trường IsApproved
                accMembership.IsApproved = false;

                //          2.e.1. Đơn vị thời gian khác "Vĩnh viễn", dùng switch để lựa chọn từng trường hợp đơn vị thời gian và xử lí tương ứng
                switch (donVi)
                {
                    case "Tuần":
                        {
                            DateTime thoiGianUnlock = DateTime.Now.AddDays(thoiHanLock * 7);
                            accInfo.ThoiGianUnlock = thoiGianUnlock;

                            break;
                        }
                    case "Tháng":
                        {
                            DateTime thoiGianUnlock = DateTime.Now.AddMonths(thoiHanLock);
                            accInfo.ThoiGianUnlock = thoiGianUnlock;

                            break;
                        }
                }
            }

            //  3. Cập nhật CSDL thông qua biến dataContext
            dataContext.SubmitChanges();
        }
        public void UnlockTaiKhoan(Guid userId)
        {
            //Hướng xử lí trong hàm UnlockTaiKhoan
            //  1. Thực hiện truy vấn để lấy thông tin tài khoản có userId được truyền vào hàm
            //  2. Gán giá trị true cho trường IsApproved => tại khoản được kích hoạt trở lại
            //  3. Cập nhật lại CSDL thông qua biến dataContext


            //Tiến hành
            //  1. Thực hiện truy vấn để lấy thông tin tài khoản có userId được truyền vào hàm
            aspnet_Membership accMembership = dataContext.aspnet_Memberships.Single(p => p.UserId == userId);

            //  2. Gán giá trị false cho trường
            accMembership.IsApproved = true;

            //  3. Cập nhật lại CSDL thông qua biến dataContext
            dataContext.SubmitChanges();
        }
    }
}