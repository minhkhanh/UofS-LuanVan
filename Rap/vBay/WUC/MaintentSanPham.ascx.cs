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
                            tenSanPhamHyperLink1.Text = i.TenSanPham;                            
                            tenSanPhamHyperLink1.NavigateUrl = "#";
                            break;
                        }
                    case 1:
                        {
                            wows1.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP2.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink2.Text = i.TenSanPham;                            
                            break;
                        }
                    case 2:
                        {
                            wows2.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP3.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink3.Text = i.TenSanPham;
                            break;
                        }
                    case 3:
                        {
                            wows3.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP4.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink4.Text = i.TenSanPham;
                            break;
                        }
                    case 4:
                        {
                            wows4.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP5.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink5.Text = i.TenSanPham;
                            break;
                        }
                    case 5:
                        {
                            wows5.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP6.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink6.Text = i.TenSanPham;
                            break;
                        }
                    case 6:
                        {
                            wows6.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP7.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink7.Text = i.TenSanPham;
                            break;
                        }
                    case 7:
                        {
                            wows7.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP8.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink8.Text = i.TenSanPham;
                            break;
                        }
                    case 8:
                        {
                            wows8.ImageUrl = i.Multimedia.LinkURL;
                            ImagineSP9.ImageUrl = i.Multimedia.LinkURL;
                            tenSanPhamHyperLink9.Text = i.TenSanPham;
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