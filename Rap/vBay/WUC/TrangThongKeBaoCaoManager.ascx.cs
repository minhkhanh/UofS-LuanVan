using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay
{
    public partial class TrangThongKeBaoCaoManager : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                TongThuNhapSoSanPham();
                ThongTinChiTietCacLanGiaoDich();
                SuaPhi();                 
                TextBoxThayDoiMucPhi.Visible = false;
                BtCapNhat.Visible = true;
            }
            else
            {
                MucPhiDauGia();
                LoadAllDropDownList();                
                TextBoxThayDoiMucPhi.Visible = false;                
            }
        }

        protected void LoadAllDropDownList()
        {
            //Load toàn bộ năm giao dịch            
            int beginYear = 1949;
            int endYear = DateTime.Now.Year;
            do
            {
                beginYear++;
                string addYear = beginYear.ToString();
                DropDownDanhSachNam.Items.Add(addYear);
                Convert.ToInt32(beginYear);
            }
            while (beginYear < endYear);

            // Load toàn bộ tháng trong 1 năm
            int beginMonth = 0;
            int endMonth = 12;
            DropDownDanhSachThang.Items.Add("Tất cả ...");
            do
            {
                beginMonth++;
                string addMonth = beginMonth.ToString();
                DropDownDanhSachThang.Items.Add(addMonth);
                Convert.ToInt32(beginMonth);
            }
            while (beginMonth < endMonth);
            
            //Load toàn bộ quý trong 1 năm
            int beginQuater = 0;
            int endQuater = 4;
            DropDownDanhSachQuy.Items.Add("Tất cả ...");
            do
            {
                beginQuater++;
                string addQuater = beginQuater.ToString();
                DropDownDanhSachQuy.Items.Add(addQuater);
                Convert.ToInt32(beginQuater);
            }
            while (beginQuater < endQuater);            
        }        
        
        protected void TongThuNhapSoSanPham()
        {
            string stringYear = DropDownDanhSachNam.SelectedValue.ToString();
            int year = Convert.ToInt32(stringYear);
            DataEntityDataContext data = new DataEntityDataContext();
            if (DropDownDanhSachThang.SelectedIndex == 0 && DropDownDanhSachQuy.SelectedIndex == 0)
            {
                //Lấy toàn bộ thông tin của những tài khoản đấu giá thành công theo năm
                var chiTietCacTaiKhoanKhopLenhTheoNam = from DauGia in data.DauGiaThanhCongs
                                                        where DauGia.ChiTietDauGia.ThoiGianGiaoDich.Value.Year == year
                                                        select new { DauGia.ChiTietDauGia.aspnet_User.UserName,DauGia.ChiTietDauGia.SanPham.TenSanPham,DauGia.GiaKhopLenh,DauGia.ChiTietDauGia.ThoiGianGiaoDich};                
                gridViewThongTinChiTiet.DataSource = chiTietCacTaiKhoanKhopLenhTheoNam;                                                
                gridViewThongTinChiTiet.DataBind();
                //Đếm số sản phẩm (số giao dịch) được thực hiện thành công trong 1 tháng
                LabelSoSanPhamDuocGiaoDich.Text = chiTietCacTaiKhoanKhopLenhTheoNam.Count().ToString();
                LabelTongSoLanGiaoDichThanhCong.Text = chiTietCacTaiKhoanKhopLenhTheoNam.Count().ToString();                                
                //Tính tổng thu nhập theo năm
                double thuNhap = 0;
                foreach (var i in chiTietCacTaiKhoanKhopLenhTheoNam)
                {
                    thuNhap = thuNhap + Convert.ToDouble(i.GiaKhopLenh);
                }                                 
                LabelDoanhThu.Text = thuNhap.ToString();
            }

            if (DropDownDanhSachThang.SelectedIndex != 0 && DropDownDanhSachQuy.SelectedIndex == 0)
            {
                string stringMonth = DropDownDanhSachThang.SelectedValue.ToString();
                int month = Convert.ToInt32(stringMonth);
                //Lấy toàn bộ thông tin của những tài khoản đấu giá thành công theo tháng và năm
                var chiTietCacTaiKhoanKhopLenhTheoThang = from DauGia in data.DauGiaThanhCongs
                                                          where DauGia.ChiTietDauGia.ThoiGianGiaoDich.Value.Year == year && DauGia.ChiTietDauGia.ThoiGianGiaoDich.Value.Month == month
                                                          select new { DauGia.ChiTietDauGia.aspnet_User.UserName, DauGia.ChiTietDauGia.SanPham.TenSanPham, DauGia.GiaKhopLenh, DauGia.ChiTietDauGia.ThoiGianGiaoDich };                
                gridViewThongTinChiTiet.DataSource = chiTietCacTaiKhoanKhopLenhTheoThang;
                gridViewThongTinChiTiet.DataBind();
                //Đếm số sản phẩm (số giao dịch) được thực hiện thành công trong 1 năm
                LabelSoSanPhamDuocGiaoDich.Text = chiTietCacTaiKhoanKhopLenhTheoThang.Count().ToString();
                LabelTongSoLanGiaoDichThanhCong.Text = chiTietCacTaiKhoanKhopLenhTheoThang.Count().ToString();                                
                //Tính tổng thu nhập theo tháng
                double thuNhap = 0;
                foreach (var i in chiTietCacTaiKhoanKhopLenhTheoThang)
                {
                    thuNhap = thuNhap + Convert.ToDouble(i.GiaKhopLenh);
                }
                LabelDoanhThu.Text = thuNhap.ToString();
            }

            if (DropDownDanhSachThang.SelectedIndex == 0 && DropDownDanhSachQuy.SelectedIndex != 0)
            {
                string stringQuater = DropDownDanhSachQuy.SelectedValue.ToString();
                int quater = Convert.ToInt32(stringQuater);                                                
                //Lấy toàn bộ thông tin của những tài khoản đấu giá thành công theo quý                
                int monthOverQuater = 3;                                
                var chiTietCacTaiKhoanKhopLenhTheoQuy =   from DauGia in data.DauGiaThanhCongs
                                                          where DauGia.ChiTietDauGia.ThoiGianGiaoDich.Value.Year == year 
                                                          && ((DauGia.ChiTietDauGia.ThoiGianGiaoDich.Value.Month == monthOverQuater * (quater - 1) +1 )
                                                          || (DauGia.ChiTietDauGia.ThoiGianGiaoDich.Value.Month == monthOverQuater * (quater - 1) + 2)
                                                          || (DauGia.ChiTietDauGia.ThoiGianGiaoDich.Value.Month == monthOverQuater * (quater - 1) + 3))
                                                          select new { DauGia.ChiTietDauGia.aspnet_User.UserName, DauGia.ChiTietDauGia.SanPham.TenSanPham, DauGia.GiaKhopLenh, DauGia.ChiTietDauGia.ThoiGianGiaoDich };                
                gridViewThongTinChiTiet.DataSource = chiTietCacTaiKhoanKhopLenhTheoQuy;                
                gridViewThongTinChiTiet.DataBind();
                //Đếm số sản phẩm (số giao dịch) được thực hiện thành công trong quý
                LabelSoSanPhamDuocGiaoDich.Text = chiTietCacTaiKhoanKhopLenhTheoQuy.Count().ToString();
                LabelTongSoLanGiaoDichThanhCong.Text = chiTietCacTaiKhoanKhopLenhTheoQuy.Count().ToString();                                
                //Tính tổng thu nhập theo quý
                double thuNhap = 0;
                foreach (var i in chiTietCacTaiKhoanKhopLenhTheoQuy)
                {
                    thuNhap = thuNhap + Convert.ToDouble(i.GiaKhopLenh);
                }
                LabelDoanhThu.Text = thuNhap.ToString();
            }      
        }
        
        protected void ThongTinChiTietCacLanGiaoDich()
        {
            string stringYear = DropDownDanhSachNam.SelectedValue.ToString();
            int year = Convert.ToInt32(stringYear);           
            DataEntityDataContext data = new DataEntityDataContext();
            if (DropDownDanhSachThang.SelectedIndex == 0 && DropDownDanhSachQuy.SelectedIndex == 0)
            {
                //Lấy toàn bộ thông tin của những tài khoản đấu giá có trong năm
                var chiTietCacGiaoDichTheoNam = from DauGia in data.ChiTietDauGias
                                                where DauGia.ThoiGianGiaoDich.Value.Year == year
                                                select new {DauGia.aspnet_User.UserName,DauGia.SanPham.TenSanPham,DauGia.GiaGiaoDich,DauGia.ThoiGianGiaoDich };                
                gridViewCacLanGiaoDich.DataSource = chiTietCacGiaoDichTheoNam;
                gridViewCacLanGiaoDich.DataBind();               
                //Đếm số lần giao dịch trong năm
                LabelTongSoLanGiaoDich.Text = chiTietCacGiaoDichTheoNam.Count().ToString();                
            }
            if (DropDownDanhSachThang.SelectedIndex != 0 && DropDownDanhSachQuy.SelectedIndex == 0)
            {
                string stringMonth = DropDownDanhSachThang.SelectedValue.ToString();
                int month = Convert.ToInt32(stringMonth);
                //Lấy toàn bộ thông tin của những tài khoản đấu giá thành công theo tháng và năm
                var chiTietCacGiaoDichTheoThang = from DauGia in data.ChiTietDauGias
                                                where DauGia.ThoiGianGiaoDich.Value.Year == year && DauGia.ThoiGianGiaoDich.Value.Month == month
                                                  select new { DauGia.aspnet_User.UserName, DauGia.SanPham.TenSanPham, DauGia.GiaGiaoDich, DauGia.ThoiGianGiaoDich };                
                gridViewCacLanGiaoDich.DataSource = chiTietCacGiaoDichTheoThang;
                gridViewCacLanGiaoDich.DataBind();
                //Đếm số lần giao dịch trong tháng
                LabelTongSoLanGiaoDich.Text = chiTietCacGiaoDichTheoThang.Count().ToString();
            }
            
            if (DropDownDanhSachThang.SelectedIndex == 0 && DropDownDanhSachQuy.SelectedIndex != 0)
            {
                string stringQuater = DropDownDanhSachQuy.SelectedValue.ToString();
                int quater = Convert.ToInt32(stringQuater);
                //Lấy toàn bộ thông tin của những tài khoản đấu giá theo quý                
                int monthOverQuater = 3;
                var chiTietCacTaiKhoanGiaoDichTheoQuy = from DauGia in data.ChiTietDauGias
                                                        where DauGia.ThoiGianGiaoDich.Value.Year == year
                                                        && ((DauGia.ThoiGianGiaoDich.Value.Month == monthOverQuater * (quater - 1) + 1)
                                                        || (DauGia.ThoiGianGiaoDich.Value.Month == monthOverQuater * (quater - 1) + 2)
                                                        || (DauGia.ThoiGianGiaoDich.Value.Month == monthOverQuater * (quater - 1) + 3))
                                                        select new { DauGia.aspnet_User.UserName, DauGia.SanPham.TenSanPham, DauGia.GiaGiaoDich, DauGia.ThoiGianGiaoDich };                
                gridViewCacLanGiaoDich.DataSource = chiTietCacTaiKhoanGiaoDichTheoQuy;
                gridViewCacLanGiaoDich.DataBind();
                //Đếm số lần giao dịch trong quý
                LabelTongSoLanGiaoDich.Text = chiTietCacTaiKhoanGiaoDichTheoQuy.Count().ToString();
            }        
        }
        protected void MucPhiDauGia()
        {
            DataEntityDataContext data = new DataEntityDataContext();
            var giaTriDauGia = from DauGia in data.THAMSOs
                               where DauGia.IDThamSo == 1
                               select DauGia ;
            foreach (var i in giaTriDauGia)
            {
                LabelMucPhi.Text= i.GiaTri.ToString();
                TextBoxThayDoiMucPhi.Text = LabelMucPhi.Text;
            }            
        }

        protected void BtCapNhat_Click(object sender, EventArgs e)
        {
            SuaPhi();            
        }
        protected void SuaPhi()
        {
            try
            {
                TextBoxThayDoiMucPhi.Visible = true;
                BtCapNhat.Visible = false;
                DataEntityDataContext dataContent = new DataEntityDataContext();
                var mucPhi = from DauGia in dataContent.THAMSOs
                             where DauGia.IDThamSo == 1
                             select DauGia;                
                foreach (var i in mucPhi)
                {
                    if(KiemTraDuLieuNhap(TextBoxThayDoiMucPhi.Text) == true)
                    {
                        i.GiaTri = TextBoxThayDoiMucPhi.Text;
                        LabelMucPhi.Text = i.GiaTri;
                    }
                }
                dataContent.SubmitChanges();
                
            }
            catch (System.Exception ex)
            {
                
            }
        }
        protected bool KiemTraDuLieuNhap(string chuoi)
        {
            int giaTri = Convert.ToInt32(chuoi);
            if (giaTri < 0)
            {
                return false;
            }
            else
                return true;
        }
    }
}