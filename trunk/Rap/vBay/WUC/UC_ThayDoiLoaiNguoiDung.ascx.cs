using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace vBay.WUC
{
    public partial class UC_ThayDoiLoaiNguoiDung : System.Web.UI.UserControl
    {
        private DataEntityDataContext dataContext;
        private static bool isReload = false;

        protected void Page_Init(object sender, EventArgs e)
        { 
            //Hướng xử lí trong hàm Page_Init
            //  1. Khởi tạo biến dataContext để truy xuất CSDL
            //  2. Thiết lập thuộc tính Visible cho Label_ThayDoiLoaiNguoiDungThanhCong
            //  3. Đọc danh sách người dùng trong CSDL thông qua dataContext và load lên DropDownList_DanhSachTaiKhoan
            //  4. Thiết lập thuộc tính Enable cho DropDownList_DanhSachLoaiNguoiDung nếu isReload == true và ngược lại nếu isReload == false
            //  5. Thiết lập thuộc tịnh Enable = false cho Button_Save nếu isReload == true và ngược lại nếu isReload == false


            //Tiến hành
            //  1. Khởi tạo biến dataContext để truy xuất CSDL
            dataContext = new DataEntityDataContext();

            //  2. Thiết lập thuộc tính Visible cho Label_ThayDoiLoaiNguoiDungThanhCong
            //Label_ThayDoiLoaiTaiKhoanThanhCong.Visible = false;

            //  3. Đọc danh sách người dùng trong CSDL thông qua dataContext và load lên DropDownList_DanhSachTaiKhoan
            //var danhSachTaiKhoan = from a in dataContext.aspnet_Users
            //                       select new { a.UserId, a.UserName };

            //foreach (var i in danhSachTaiKhoan)
            //{
            //    ListItem item = new ListItem(i.UserName, i.UserId.ToString());
            //    DropDownList_DanhSachTaiKhoan.Items.Add(item);
            //}

            //  4. Thiết lập thuộc tính Enable cho DropDownList_DanhSachLoaiNguoiDung nếu isReload == true và ngược lại nếu isReload == false
            //DropDownList_LoaiNguoiDungMoi.Enabled = false;

            //  5. Thiết lập thuộc tịnh Enable = false cho Button_Save nếu isReload == true và ngược lại nếu isReload == false
            Button_Save.Enabled = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing here
            
            
        }

        protected void Button_Save_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_Save_Click
            //  1. Lấy UserName của User được chọn trong DropDownList_DanhSachTaiKhoan
            //  2. Lấy RoleName của Role được chọn trong DropDownList_LoaiNguoiDungMoi
            //  3. Lấy RoleName của Role hiện tại của User đang được hiển thị trong TextBox_LoaiNguoiDungHienTai
            //  4. Thực hiện sửa đổi và lưu vào CSDL
            //  5. Thiết lập thuộc tính Visible cho Label_ThayDoiLoaiNguoiDungThanhCong = true
            //  6. Thiết lập thuộc tính Enable cho Button_Save = false
            //  7. Load lại TextBox_LoaiNguoiDungHienTai


            //Thực hiện
            //  1. Lấy UserName của User được chọn trong DropDownList_DanhSachTaiKhoan
            String userName = GridView1.SelectedRow.Cells[1].Text;

            //  2. Lấy RoleName của Role được chọn trong DropDownList_LoaiNguoiDungMoi
            //String newRoleName = DropDownList_LoaiNguoiDungMoi.SelectedItem.Text;
            List<string> newRoles = new List<string>();
            
            foreach (ListItem i in CheckBoxList1.Items)
            {
                if (i.Selected)
                    newRoles.Add(i.Text);
            }

            Label_ThayDoiLoaiTaiKhoanThanhCong.Visible = true;
            if (newRoles.Count == 0)
            {
                Label_ThayDoiLoaiTaiKhoanThanhCong.Text = "Không được để trống phân quyền";
                
                return;
            }

            //  3. Lấy RoleName của Role hiện tại của User đang được hiển thị trong TextBox_LoaiNguoiDungHienTai
            //String presentRoleName = TextBox_LoaiNguoiDungHienTai.Text;
            string[] oldRoles = Roles.GetRolesForUser(GridView1.SelectedRow.Cells[1].Text);


            //  4. Thực hiện sửa đổi và lưu vào CSDL
            foreach (string i in oldRoles)
            {
                Roles.RemoveUserFromRole(userName, i);
            }
            
            foreach (string i in newRoles)
            {
                Roles.AddUserToRole(userName, i);
            }

            //  5. Thiết lập thuộc tính Visible cho Label_ThayDoiLoaiNguoiDungThanhCong = true
            Label_ThayDoiLoaiTaiKhoanThanhCong.Text = "Thay đổi loại tài khoản thành công";

            //  6. Thiết lập thuộc tính Enable cho Button_Save = false
            Button_Save.Enabled = false ;

            //  7. Load lại TextBox_LoaiNguoiDungHienTai
            //TextBox_LoaiNguoiDungHienTai.Text = newRoleName;
        }

        protected void DropDownList_DanhSachTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm DropDownList_DanhSachTaiKhoan_SelectedIndexChanged
            //Kiểm tra: Nếu SelectedIndex == 0 => Thiết lập thuộc tính Enable của DropDownList_LoaiNguoiDungMoi = false và return
            //  1. Thay đổi giá trị thuộc tính isReload thành true nếu giá trị đang là false <=> Page đã được Reload ít nhất 1 lần
            //  2. Truy vấn CSDL thông qua dataContext để lấy loại người dùng của user đang được chọn
            //  3. Load tên loại người dùng RoleName của User đang được chọn lên TextBox_LoaiNguoiDungHienTai
            //  4. Thiết lập giá trị Enable cho DropDownList_DanhSachLoaiNguoiDungMoi thành true
            //  5. Đọc danh sách loại người dùng khác với loại người dùng hiện tại của User được chọn và load lên DropDownList_LoaiNguoiDungMoi


            //Tiến hành
            //Kiểm tra: Nếu SelectedIndex == 0 => Thiết lập thuộc tính Enable của DropDownList_LoaiNguoiDungMoi = false và return
            //if (DropDownList_DanhSachTaiKhoan.SelectedIndex == 0)
            //{
            //    //DropDownList_LoaiNguoiDungMoi.Enabled = false;
            //    return;
            //}

            ////  1. Thay đổi giá trị thuộc tính isReload thành true nếu giá trị đang là false <=> Page đã được Reload ít nhất 1 lần
            //if (isReload == false)
            //    isReload = true;

            ////  2. Truy vấn CSDL thông qua dataContext để lấy loại người dùng của user đang được chọn
            ////string username = DropDownList_DanhSachTaiKhoan.SelectedItem.Text;
            //Guid userId = Guid.Parse(DropDownList_DanhSachTaiKhoan.SelectedItem.Value.ToString());
            //aspnet_UsersInRole userInRole = dataContext.aspnet_UsersInRoles.Single(p => p.UserId == userId);
            //aspnet_Role role = dataContext.aspnet_Roles.Single(p => p.RoleId == userInRole.RoleId);
            ////string[] roles = Roles.GetRolesForUser(username);

            ////  3. Load tên loại người dùng RoleName của User đang được chọn lên TextBox_LoaiNguoiDungHienTai
            //TextBox_LoaiNguoiDungHienTai.Text = role.RoleName;

            ////  4. Thiết lập giá trị Enable cho DropDownList_DanhSachLoaiNguoiDungMoi thành true
            //DropDownList_LoaiNguoiDungMoi.Enabled = isReload;   //Khi này isReload đã mang giá trị true

            ////  5. Đọc danh sách loại người dùng khác với loại người dùng hiện tại của User được chọn và load lên DropDownList_LoaiNguoiDungMoi
            //var danhSachLoaiNguoiDungMoi = from a in dataContext.aspnet_Roles
            //                               where a.RoleId != userInRole.RoleId
            //                               select new { a.RoleId, a.RoleName };

            //DropDownList_LoaiNguoiDungMoi.Items.Clear();
            //DropDownList_LoaiNguoiDungMoi.Items.Add(new ListItem("Choose new role..."));
            //foreach (var i in danhSachLoaiNguoiDungMoi)
            //{
            //    ListItem item = new ListItem(i.RoleName, i.RoleId.ToString());
            //    DropDownList_LoaiNguoiDungMoi.Items.Add(item);
            //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string[] oldRoles = Roles.GetRolesForUser(GridView1.SelectedRow.Cells[1].Text);

                foreach (ListItem i in CheckBoxList1.Items)
                {
                    i.Selected = false;
                }

                foreach (string i in oldRoles)
                {
                    CheckBoxList1.Items.FindByText(i).Selected = true;
                }
            }
            catch (System.Exception ex)
            {

            }

            Button_Save.Enabled = true;
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }
    }
}