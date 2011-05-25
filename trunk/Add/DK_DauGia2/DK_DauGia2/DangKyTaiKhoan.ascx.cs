using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DK_DauGia2
{
    public partial class DangKyTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThiDSGioiTinh();
            lbKetQua.Visible = false;
        }

        void HienThiDSGioiTinh()
        {
            if (!IsPostBack)
            {
                ddlGioiTinh.Items.Add("Nam");
                ddlGioiTinh.Items.Add("Nữ");
                ddlGioiTinh.DataBind();
            }
        }

        protected void btNhapLai_Click(object sender, EventArgs e)
        {
            tbTenDangNhap.Text = "";
            tbMatKhau.Text = "";
            tbNhapLaiMatKhau.Text = "";
            tbAvatar.Text = "";
            tbHoTen.Text = "";
            tbNgaySinh.Text = "";
            tbNoiSinh.Text = "";
            tbDiaChi.Text = "";
            tbSoDienThoai.Text = "";
            tbMaTheTinDung.Text = "";
            tbEmail.Text = "";
        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            MyDLinqDataContext db = new MyDLinqDataContext();
            ThongTinTaiKhoan thongTin = new ThongTinTaiKhoan();

            thongTin.HoTen = tbHoTen.Text.Trim();
            thongTin.NgaySinh = DateTime.Now;
            thongTin.NoiSinh = tbNoiSinh.Text.Trim();
            thongTin.DiaChi = tbDiaChi.Text.Trim();
            thongTin.SoDienThoai = tbSoDienThoai.Text.Trim();
            thongTin.MaTheTinhDung = tbMaTheTinDung.Text.Trim();
            thongTin.Email = tbEmail.Text.Trim();
            thongTin.GioiTinh = ddlGioiTinh.SelectedValue;

            db.ThongTinTaiKhoans.InsertOnSubmit(thongTin);
            db.SubmitChanges();

            //ThongTinTaiKhoan thongTinVuaThem = (from tt in db.ThongTinTaiKhoans
            //                                    where tt == thongTin
            //                                    select tt).Single();

            //null exceptipn
            TaiKhoan taiKhoan = new TaiKhoan();
            taiKhoan.MaTaiKhoan = thongTin.MaTaiKhoan;
            taiKhoan.TenTaiKhoan = tbTenDangNhap.Text.Trim();
            taiKhoan.MatKhau = tbMatKhau.Text.Trim();
            taiKhoan.Avatar = tbAvatar.Text.Trim();

            db.TaiKhoans.InsertOnSubmit(taiKhoan);
            db.SubmitChanges();

            lbKetQua.Visible = true;
            lbKetQua.Text = "Đăng ký thành công";

        }

        
    }
}