using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.Configuration;

namespace vBay
{
    public partial class ThongKePhienDauGiaUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] roles = Roles.GetRolesForUser(Page.User.Identity.Name);
            var list = roles.Where(i => i == "Member");
            if (list.Count() == 0)
            {
                Response.Redirect(WebConfigurationManager.AppSettings["StopPage"]);
                return;
            }

            DataEntityDataContext dc = new DataEntityDataContext();

            var listDangDauGia = from i in dc.ChiTietDauGias
                       where i.aspnet_User.UserName == Page.User.Identity.Name && i.SanPham.MaTinhTrangSanPham == 2
                       select new {
                           i.SanPham.MaSanPham,
                           i.SanPham.Multimedia.LinkURL, 
                           i.SanPham.TenSanPham,
                           i.ThoiGianGiaoDich,
                           i.SanPham.NgayDang, 
                           i.SanPham.NgayHetHan,
                           i.SanPham.GiaKhoiDiem,
                           i.GiaGiaoDich,
                           i.SanPham.GiaHienTai
                       };

            DataList1.DataSource = listDangDauGia;
            DataList1.DataBind();

            var listDauGiaThanhCong = from i in dc.DauGiaThanhCongs
                                      where i.ChiTietDauGia.aspnet_User.UserName == Page.User.Identity.Name
                                      select new { 
                                          i.ChiTietDauGia.SanPham.MaSanPham,
                                          i.ChiTietDauGia.SanPham.Multimedia.LinkURL,
                                          i.ChiTietDauGia.SanPham.TenSanPham,
                                          i.ChiTietDauGia.ThoiGianGiaoDich,
                                          i.ChiTietDauGia.GiaGiaoDich
                                      };

            DataList2.DataSource = listDauGiaThanhCong;
            DataList2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
        }
    }
}