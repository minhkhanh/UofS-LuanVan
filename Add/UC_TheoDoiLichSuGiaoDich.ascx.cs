﻿using System;
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
        DataEntityDataContext dataContext;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Khởi tạo DataEntityDataContext
            dataContext = new DataEntityDataContext();

            //Lấy thông tin tài khoản từ CSDL
            var danhSachTaiKhoan = from a in dataContext.TaiKhoans
                                    where a.BiKhoa == false && a.BiXoa == false
                                    select new { a.TenTaiKhoan, a.MaTaiKhoan };

            List_DanhSachTaiKhoan.DataSource = danhSachTaiKhoan;
            List_DanhSachTaiKhoan.DataTextField = "TenTaiKhoan";
            List_DanhSachTaiKhoan.DataValueField = "MaTaiKhoan";
            List_DanhSachTaiKhoan.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Sẽ được gọi cùng sự kiện Page_Reload => Cẩn thận khi code
        }

        protected void Button_Search_Click(object sender, EventArgs e)
        {
            //Lấy Mã tài khoản trong List_DanhSachTaiKhoan
            int maTaiKhoan = int.Parse(List_DanhSachTaiKhoan.SelectedItem.Value);
            String tenTaiKhoan = List_DanhSachTaiKhoan.SelectedItem.Text;

            //Xuất Tên tài khoản lên TextBox_TenTaiKhoan
            TextBox_TenTaiKhoan.Text = tenTaiKhoan;

            //Đọc thông tin lịch sử giao dịch từ CSDL
            var history = from gd in dataContext.ChiTietDauGias
                          from sp in dataContext.SanPhams
                          where gd.MaTaiKhoan == maTaiKhoan && gd.MaSanPham == sp.MaSanPham
                          select new { sp.TenSanPham, gd.ThoiGianGiaoDich, gd.GiaGiaoDich };

            //Xuất thông tin lịch sử giao dịch lên GridView_LichSuGiaoDich
            GridView_LichSuGiaoDich.DataSource = history;
            GridView_LichSuGiaoDich.DataBind();
        }
    }
}