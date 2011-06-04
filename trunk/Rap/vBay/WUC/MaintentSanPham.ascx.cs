using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay
{
    public partial class SanPhamMoiNhat : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                LaySanPhamMoiNhat();            
                SanPhamDauGiaNhieuNhat();
            }
            LaySanPhamMoiNhat();
            SanPhamDauGiaNhieuNhat();
        }
        protected void LaySanPhamMoiNhat()
        {            
            int thuTu = 0;
            DataEntityDataContext dataContent = new DataEntityDataContext();
            var danhSachSanPhamMoiDang = (from DauGia in dataContent.SanPhams
                                         orderby DauGia.NgayDang descending
                                         select DauGia).Take(9);
            
            foreach (var i in danhSachSanPhamMoiDang)
            {
                switch (thuTu)
                {                    
                    case 0:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows0.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP1.ImageUrl = i.Multimedia.LinkURL;                               
                            }
                            tenSanPhamHyperLinkb1.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka1.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb1.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 1:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows1.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP2.ImageUrl = i.Multimedia.LinkURL;                                
                            }
                            tenSanPhamHyperLinkb2.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka2.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb2.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 2:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows2.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP3.ImageUrl = i.Multimedia.LinkURL;                                
                            }
                            tenSanPhamHyperLinkb3.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka3.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb3.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 3:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows3.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP4.ImageUrl = i.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb4.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka4.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb4.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 4:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows4.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP5.ImageUrl = i.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb5.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka5.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb5.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 5:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows5.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP6.ImageUrl = i.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb6.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka6.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb6.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 6:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows6.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP7.ImageUrl = i.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb7.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka7.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb7.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 7:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows7.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP8.ImageUrl = i.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb8.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka8.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb8.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 8:
                        {
                            if (i.Multimedia.LinkURL != null)
                            {
                                wows8.ImageUrl = i.Multimedia.LinkURL;
                                ImagineSP9.ImageUrl = i.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb9.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka9.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb9.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 9:
                        return;
                }
                thuTu++;
            }        
        }                
        
        protected void SanPhamDauGiaNhieuNhat()
        {
            int thuTu = 0; 
            DataEntityDataContext dataContent = new DataEntityDataContext();
            var sanPhamTieuBieu = (from sp in dataContent.SanPhams
                                    from ctdg in dataContent.ChiTietDauGias
                                    where sp.MaSanPham == ctdg.MaSanPham
                                    group ctdg by sp into nsp //nhóm sản phẩm
                                    select new
                                    {
                                        sp = nsp.Key,
                                        sldg = nsp.Count() //số lượt đấu giá
                                    }).OrderByDescending(x => x.sldg).Take(9);

            foreach (var i in sanPhamTieuBieu)
            {                
                switch (thuTu)
                {
                    case 0:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP10.ImageUrl = i.sp.Multimedia.LinkURL;                                
                            }                            
                            tenSanPhamHyperLinkb10.Text = i.sp.TenSanPham;
                            
                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka10.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb10.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 1:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP11.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb11.Text = i.sp.TenSanPham;
                            
                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka11.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb11.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 2:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP12.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb12.Text = i.sp.TenSanPham;
                           
                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka12.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb12.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 3:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP13.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb13.Text = i.sp.TenSanPham;
                            
                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka13.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb13.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 4:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP14.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb14.Text = i.sp.TenSanPham;
                            
                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka14.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb14.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 5:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP15.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb15.Text = i.sp.TenSanPham;
                            
                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka15.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb15.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 6:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP16.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb16.Text = i.sp.TenSanPham;
                            
                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka16.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb16.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 7:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP17.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb17.Text = i.sp.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka17.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb17.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 8:
                        {
                            if (i.sp.Multimedia.LinkURL != null)
                            {
                                ImagineSP18.ImageUrl = i.sp.Multimedia.LinkURL;
                            }
                            tenSanPhamHyperLinkb18.Text = i.sp.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka18.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb18.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                }
                thuTu++;
            }
        }
    }
}