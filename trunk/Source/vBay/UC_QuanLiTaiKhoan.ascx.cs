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
            //Load CSDL từ server
            dataContext = new DataEntityDataContext();

            //Đọc danh sách các tài khoản chưa bị xóa và chưa bị khóa
            var acc_ChuaBiXoa_ChuaBiKhoa = from tk in dataContext.TaiKhoans
                                           where tk.BiXoa == false && tk.BiKhoa == false
                                           select new { tk.MaTaiKhoan, tk.TenTaiKhoan };

            //Đọc danh sách các tài khoản chưa bị xóa và đang bị khóa
            var acc_ChuaBiXoa_Locked = from tk in dataContext.TaiKhoans
                                       where tk.BiXoa == false && tk.BiKhoa == true
                                       select new { tk.MaTaiKhoan, tk.TenTaiKhoan, tk.ThoiDiemUnlock };

            //Cập nhật danh sách tài khoản chưa bị khóa cho DropDownList_TenTaiKhoanCanKhoa
            //DropDownList_TenTaiKhoanCanKhoa.DataSource = acc_ChuaBiXoa_ChuaBiKhoa;
            DropDownList_TenTaiKhoanCanKhoa.DataSource = acc_ChuaBiXoa_ChuaBiKhoa;
            DropDownList_TenTaiKhoanCanKhoa.DataBind();

            //Cập nhật danh sách tài khoản đang bị khóa GridView_DanhSachTaiKhoanBiKhoa
            GridView_DanhSachTaiKhoanBiKhoa.DataSource = acc_ChuaBiXoa_Locked;
            GridView_DanhSachTaiKhoanBiKhoa.DataBind();
            int page = GridView_DanhSachTaiKhoanBiKhoa.PageIndex;

            //Cập nhật danh sách tài khoản đang bị khóa cho DropDownList_DanhSachTaiKhoanLocked
            DropDownList_DanhSachTaiKhoanLocked.DataSource = acc_ChuaBiXoa_Locked;
            DropDownList_DanhSachTaiKhoanLocked.DataBind();

            //Cập nhật items cho DropDownList_ThoiHanKhoa
            for (int i = 1; i <= 12; i++)
                DropDownList_ThoiHanKhoa.Items.Add(i.ToString());
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView_DanhSachTaiKhoanBiKhoa.DataBind();
        }
        protected void GridView_DanhSachTaiKhoanBiKhoa_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView_DanhSachTaiKhoanBiKhoa.PageIndex = e.NewPageIndex;

            //Chỉ update lại Gridview_DanhSachTaiKhoanBiKhoa => Gọi Page_Load
            Page_Load(sender, e);
        }
        protected void Button_Lock_Click(object sender, EventArgs e)
        {
            //Lấy mã tài khoản cần khóa, thời gian khóa và đơn vị thời gian
            int maTaiKhoan = int.Parse(DropDownList_TenTaiKhoanCanKhoa.SelectedItem.Value.ToString());
            int thoiHanLock = int.Parse(DropDownList_ThoiHanKhoa.SelectedItem.Value.ToString());
            String donVi = DropDownList_DonViThoiGian.SelectedItem.Text.ToString();

            LockTaiKhoan(maTaiKhoan, thoiHanLock, donVi);

            Page_Init(sender, e);
        }
        protected void Button_Unlock_Click(object sender, EventArgs e)
        {
            //Lấy thông tin tài khoản được chọn
            int maTaiKhoan = int.Parse(DropDownList_DanhSachTaiKhoanLocked.SelectedItem.Value.ToString());

            UnlockTaiKhoan(maTaiKhoan);

            Page_Init(sender, e);
        }
        public void LockTaiKhoan(int maTaiKhoan, int thoiHanLock, String donVi)
        {
            TaiKhoan acc = dataContext.TaiKhoans.Single(p => p.MaTaiKhoan == maTaiKhoan);

            //Nếu đơn vị thời gian là "Vĩnh viễn" => Xóa tài khoản
            if (donVi == "Vĩnh viễn")
                acc.BiXoa = true;
            else
            {
                //Nếu đơn vị thời gian khác "Vĩnh viễn" => Tiến hành xóa tài khoản
                if (donVi != "Vĩnh viễn")
                {
                    acc.BiKhoa = true;

                    switch (donVi)
                    {
                        case "Tuần":
                            {
                                DateTime time = DateTime.Now.AddDays(thoiHanLock * 7);
                                acc.ThoiDiemUnlock = time;

                                break;
                            }
                        case "Tháng":
                            {
                                DateTime time = DateTime.Now.AddMonths(thoiHanLock);
                                acc.ThoiDiemUnlock = time;

                                break;
                            }
                    }
                }
            }

            dataContext.SubmitChanges();
        }
        public void UnlockTaiKhoan(int maTaiKhoan)
        {
            TaiKhoan acc = dataContext.TaiKhoans.Single(p => p.MaTaiKhoan == maTaiKhoan);

            acc.BiKhoa = false;

            dataContext.SubmitChanges();
        }
    }
}