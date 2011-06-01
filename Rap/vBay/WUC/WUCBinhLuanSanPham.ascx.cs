using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace vBay.WUC
{
    public partial class WUCBinhLuanSanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Page_PreRender(object sender, EventArgs e)
        {
            UpdateLoginStatus();
            BindData();
        }
        private void Reset()
        {
            buttComment.Enabled = false;
            txtComment.Text = "";
        }
        private bool IsLogin()
        {
            return true;
        }
        private Guid GetUserId()
        {
            //return "5a01104a-dc94-4b37-85dd-ee444082d8f7";
            Guid id;
            Guid.TryParse("5a01104a-dc94-4b37-85dd-ee444082d8f7", out id);
            return id;
            //Guid g;
            //DataEntityDataContext dt = new DataEntityDataContext();
            //dt.aspnet_Users
            //Page.User.Identity
        }
        private void UpdateLoginStatus()
        {
            if (IsLogin())
            {
                panelPost.Visible = true;
                panelReqLogin.Visible = false;
                Guid id = GetUserId();
                DataEntityDataContext dt = new DataEntityDataContext();
                var user = (from u in dt.aspnet_Users
                           where u.UserId == id
                           select new { u.ThongTinTaiKhoan.Avatar }).FirstOrDefault();
                if (user != null && user.Avatar != null && user.Avatar != "")
                {
                    imgAvatar.ImageUrl = Page.Request.ApplicationPath + user.Avatar;
                }
                else
                {
                    imgAvatar.ImageUrl = Page.Request.ApplicationPath + @"Avatars/AvatarDefaul.jpg";
                }
            } 
            else
            {
                panelPost.Visible = false;
                panelReqLogin.Visible = true;
            }
            if (Request["idSanPham"]==null)
            {
                panelPost.Visible = false;
                panelReqLogin.Visible = false;
            }
        }
        private void BindData()
        {
            DataEntityDataContext dataContext = new DataEntityDataContext();
            int id;
            int.TryParse(Request["idSanPham"], out id);
            var comment = from c in dataContext.Comments
                          join u in dataContext.aspnet_Users on c.MaTaiKhoan equals u.UserId
                          join t in dataContext.ThongTinTaiKhoans on u.MaThongTinTaiKhoan equals t.MaThongTinTaiKhoan 
                          where c.MaSanPham == id 
                          select new { c.NoiDungComment, c.NgayComment, t.HoTen, t.Avatar };

            dataListComment.DataSource = comment;
            dataListComment.DataBind();
        }
        protected void listComment_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            dynamic dt = e.Item.DataItem as dynamic;
            if (dt == null)
            {
                return;
            }
            Image img = (Image)e.Item.FindControl("imgUser");
            if (dt.Avatar!=null && dt.Avatar != "")
            {
                img.ImageUrl = Page.Request.ApplicationPath + dt.Avatar;
            }
            else
            {
                img.ImageUrl = Page.Request.ApplicationPath + @"Avatars/AvatarDefaul.jpg";
            }
            Label lb = (Label)e.Item.FindControl("lbTenNguoiComment");
            lb.Text = dt.HoTen;
            lb = (Label)e.Item.FindControl("lbThoiDiemComment");
            lb.Text = GetTimeSpan(dt.NgayComment);
            lb = (Label)e.Item.FindControl("lbComment");
            lb.Text = dt.NoiDungComment;
        }
        private string GetTimeSpan(DateTime date)
        {
            TimeSpan t = DateTime.Now - date;
            if (t.TotalSeconds < 0)
            {
                return "Đồng hồ server chạy sai rồi!";
            }
            string str = "khoảng ";
            if (t.Days > 0)
            {
                str += t.Days.ToString() + " ngày ";
            } else
            if (t.Hours > 0)
            {
                str += t.Hours.ToString() + " giờ ";
            } else
            if (t.Minutes > 0)
            {
                str += t.Minutes.ToString() + " phút ";
            }
            else
            {
                str += t.Minutes.ToString() + " giây ";
            }
            str += "trước";
            return str;
        }

        protected void buttComment_Click(object sender, EventArgs e)
        {
            if (txtComment.Text.Length <= 0 || Request["idSanPham"]==null)
            {
                return;
            }
            Comment cm = new Comment();
            int id;
            int.TryParse(Request["idSanPham"], out id);
            cm.MaSanPham = id;
            cm.MaTaiKhoan = GetUserId();
            cm.NgayComment = DateTime.Now;
            cm.NoiDungComment = txtComment.Text;
            DataEntityDataContext dt = new DataEntityDataContext();
            dt.Comments.InsertOnSubmit(cm);
            dt.SubmitChanges();
            txtComment.Text = "";
        }
    }
}