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
            }
            LaySanPhamMoiNhat();
        }
        protected void LaySanPhamMoiNhat()
        {            
            int thuTu = 0;
            DataEntityDataContext dataContent = new DataEntityDataContext();
            var danhSachSanPhamMoiDang = from DauGia in dataContent.SanPhams
                                         orderby DauGia.NgayDang descending
                                         select DauGia;
            foreach (var i in danhSachSanPhamMoiDang)
            {
                switch (thuTu)
                {                    
                    case 0:
                        {
                            wows0.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP1.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb1.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka1.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb1.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 1:
                        {
                            wows1.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP2.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb2.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka2.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb2.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 2:
                        {
                            wows2.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP3.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb3.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka3.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb3.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 3:
                        {
                            wows3.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP4.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb4.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka4.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb4.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 4:
                        {
                            wows4.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP5.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb5.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka5.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb5.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 5:
                        {
                            wows5.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP6.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb6.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka6.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb6.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 6:
                        {
                            wows6.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP7.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb7.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka7.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb7.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 7:
                        {
                            wows7.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP8.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLinkb8.Text = i.TenSanPham;

                            // Vị trí chèn link theo từng sản phẩm để thêm chi tiết
                            tenSanPhamHyperLinka8.NavigateUrl = "#"; // Gán cho hình
                            tenSanPhamHyperLinkb8.NavigateUrl = "#"; // Gán cho chữ
                            break;
                        }
                    case 8:
                        {
                            wows8.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP9.ImageUrl = i.Multimedia.LinkURL;
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
            
        }
    }
}