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
        int maTaiKhoan;
        TaiKhoan acc;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Khởi tạo 1 dataContext
            dataContext = new DataEntityDataContext();

            //Khởi tạo ItemTemplate cho ListView_DanhSachTaiKhoan
            

            //Đọc dữ liệu từ dataContext
            //Đọc thông tin các tài khoản chưa bị xóa
            var danhSachTaiKhoan = from acc in dataContext.TaiKhoans
                                   where acc.BiXoa == false
                                   select new { acc.MaTaiKhoan, acc.TenTaiKhoan };

            List_DanhSachTaiKhoan.DataSource = danhSachTaiKhoan;
            List_DanhSachTaiKhoan.DataTextField = "TenTaiKhoan";
            List_DanhSachTaiKhoan.DataValueField = "MaTaiKhoan";
            List_DanhSachTaiKhoan.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_Update_Click(object sender, EventArgs e)
        {
            //Lấy mã tài khoản tương ứng với SelectedItem của List_DanhSachTaiKhoan
            maTaiKhoan = int.Parse(List_DanhSachTaiKhoan.SelectedItem.Value);

            acc = dataContext.TaiKhoans.Single(p => p.MaTaiKhoan == maTaiKhoan);

            if (CheckBox_Lock.Checked == true)
                acc.BiKhoa = true;
            else
                acc.BiKhoa = false;

            dataContext.SubmitChanges();
        }

        protected void List_DanhSachTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Lấy mã tài khoản tương ứng với SelectedItem của List_DanhSachTaiKhoan
            maTaiKhoan = int.Parse(List_DanhSachTaiKhoan.SelectedItem.Value);

            //Đọc thông tin tài khoản có Mã tài khoản tương ứng
            acc = dataContext.TaiKhoans.Single(p => p.MaTaiKhoan == maTaiKhoan);

            //Cập nhật CheckBox
            if (acc.BiKhoa == false)
                CheckBox_Lock.Checked = false;
            else
                CheckBox_Lock.Checked = true;
        }
    }
}