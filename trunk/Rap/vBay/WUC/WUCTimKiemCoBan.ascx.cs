using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay.WUC
{
    public partial class WUCTimKiemCoBan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbKetQua.Visible = false;
        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {
            HienThiDSSanPham();
        }

        void HienThiDSSanPham()
        {
            DataEntityDataContext db = new DataEntityDataContext();
            var query = from sp in db.SanPhams
                        join tk in db.aspnet_Users on sp.MaTaiKhoan equals tk.UserId
                        where sp.TenSanPham.Contains(tbTenSanPham.Text.Trim())
                        select new
                        {
                            sp.MaSanPham,
                            sp.TenSanPham,
                            tk.ThongTinTaiKhoan.HoTen,
                            tk.ThongTinTaiKhoan.Avatar,
                            sp.GiaKhoiDiem,
                        };


            dlDSSanPham.DataSource = query;
            dlDSSanPham.DataBind();
        }

        protected void dlDSSanPham_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            dynamic dt = e.Item.DataItem as dynamic;
            if (dt == null)
            {
                return;
            }

            Image img = (Image)e.Item.FindControl("imageSanPham");
            if (dt.Avatar != null && dt.Avatar != "")
            {
                img.ImageUrl = Page.Request.ApplicationPath + dt.Avatar;
            }
            else
            {
                img.ImageUrl = Page.Request.ApplicationPath + @"Avatars/AvatarDefaul.jpg";
            }

            HyperLink hl = (HyperLink)e.Item.FindControl("hlChitiet");
            hl.NavigateUrl = "../xemchitietsanpham.aspx?MaSanPham=" + dt.MaSanPham.ToString();
        }
    
    }
}