using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace vBay
{
    public partial class DauGiaThanhCong1 : System.Web.UI.Page
    {
        public void Page_Init(object sender, EventArgs e)
        {
            //if (!Page.User.Identity.IsAuthenticated)
            //    Response.Redirect("~/Login.aspx");

        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            m_iCurrentPage = (ddPage.SelectedIndex >= 0) ? ddPage.SelectedIndex : 0;
            m_iTotalPages = ddPage.Items.Count;

            if (!IsPostBack)
            {

            }


        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            HienThiDSSanPham();
            UpdateStatusButton();
            UpdateImageButton();
        }



        void HienThiDSSanPham()
        {
            
            DataEntityDataContext db = new DataEntityDataContext();
            var query = from dgtc in db.DauGiaThanhCongs
                        where dgtc.ChiTietDauGia.aspnet_User == Membership.GetUser()
                        select dgtc;

            
            m_iTotalPages = (query.Count() % NumPerPage == 0) ? query.Count() / NumPerPage : query.Count() / NumPerPage + 1;
            if (m_iCurrentPage >= m_iTotalPages && m_iTotalPages > 0)
            {
                m_iCurrentPage = m_iTotalPages - 1;
            }

            query = query.Skip(NumPerPage * m_iCurrentPage).Take(NumPerPage);
            lblCurrentPage.Text = (m_iCurrentPage + 1).ToString();
            lblTotalPages.Text = m_iTotalPages.ToString();
            ddPage.Items.Clear();
            for (int i = 0; i < m_iTotalPages; ++i)
            {
                ddPage.Items.Add("Trang " + (i + 1).ToString());
            }

            ddPage.SelectedIndex = m_iCurrentPage;
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

            Image imageSanPham = (Image)e.Item.FindControl("imageSanPham");
            if (dt.ChiTietDauGia.SanPham.Multimedia.LinkURL != null && dt.ChiTietDauGia.SanPham.Multimedia.LinkURL != "")
            {
                imageSanPham.ImageUrl = Page.Request.ApplicationPath + dt.ChiTietDauGia.SanPham.Multimedia.LinkURL;
            }
            else
            {
                imageSanPham.ImageUrl = Page.Request.ApplicationPath + @"Avatars/AvatarDefaul.jpg";
            }
            imageSanPham.Width = 100;
            imageSanPham.Height = 100;

            HyperLink hlTenSanPham = (HyperLink)e.Item.FindControl("hlTenSanPham");
            hlTenSanPham.NavigateUrl = "../xemchitietsanpham.aspx?MaSanPham=" + dt.ChiTietDauGia.SanPham.MaSanPham.ToString();

            Label lbTinhTrang = (Label)e.Item.FindControl("lbTinhTrang");
            Button btDaNhanHang = (Button)e.Item.FindControl("btDaNhanHang");

            if (dt.DaNhanHang)
            {
                lbTinhTrang.Text = "Đã nhận hàng";
                btDaNhanHang.Enabled = false;
            }
            else
            {
                lbTinhTrang.Text = "Chưa nhận hàng";
                btDaNhanHang.Enabled = true;
            }

        }

        //private int NumPerPage = 5;
        public int NumPerPage
        {
            get
            {
                int i = 0;
                int.TryParse(System.Web.Configuration.WebConfigurationManager.AppSettings.Get("NumsPerPage"), out i);
                if (i <= 0) i = 5;
                return i;
            }
            //set { NumPerPage = value; }
        }

        private int m_iCurrentPage = 0;
        private int m_iTotalPages;

        public int CurrentPage
        {
            get { return m_iCurrentPage; }
            //set { m_iCurrentPage = value; }
        }

        public int TotalPages
        {
            get { return m_iTotalPages; }
            //set { m_iTotalPages = value; }
        }

        protected string pathChiTietSanPham = "../xemchitietsanpham.aspx";
        public string PathChiTietSanPham
        {
            get { return pathChiTietSanPham; }
            set { pathChiTietSanPham = value; }
        }

        protected bool bXemTatCaSanPham = true;
        public bool XemTatCaSanPham
        {
            get { return bXemTatCaSanPham; }
            set { bXemTatCaSanPham = value; }
        }

        protected void ddPage_SelectedIndexChanged(object sender, EventArgs e)
        {
            m_iCurrentPage = ddPage.SelectedIndex;
        }

        protected void btnFirst_Click(object sender, ImageClickEventArgs e)
        {
            m_iCurrentPage = 0;
        }

        protected void btnPrevious_Click(object sender, ImageClickEventArgs e)
        {
            m_iCurrentPage = (m_iCurrentPage - 1);
        }

        protected void btnNext_Click(object sender, ImageClickEventArgs e)
        {
            m_iCurrentPage = (m_iCurrentPage + 1);
        }

        protected void btnLast_Click(object sender, ImageClickEventArgs e)
        {
            m_iCurrentPage = m_iTotalPages - 1;
        }

        private void UpdateStatusButton()
        {
            btnFirst.Enabled = false;
            btnLast.Enabled = false;
            btnNext.Enabled = false;
            btnPrevious.Enabled = false;
            if (m_iTotalPages <= 1)
            {
                return;
            }
            if (m_iCurrentPage == 0)
            {
                btnLast.Enabled = true;
                btnNext.Enabled = true;
                return;
            }
            if (m_iCurrentPage == m_iTotalPages - 1)
            {
                btnFirst.Enabled = true;
                btnPrevious.Enabled = true;
                return;
            }
            btnFirst.Enabled = true;
            btnLast.Enabled = true;
            btnNext.Enabled = true;
            btnPrevious.Enabled = true;
        }

        private void UpdateImageButton()
        {
            btnFirst.ImageUrl = (btnFirst.Enabled) ? btnFirst.ImageUrl.Remove(btnFirst.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnFirst.ImageUrl.Remove(btnFirst.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
            btnLast.ImageUrl = (btnLast.Enabled) ? btnLast.ImageUrl.Remove(btnLast.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnLast.ImageUrl.Remove(btnLast.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
            btnNext.ImageUrl = (btnNext.Enabled) ? btnNext.ImageUrl.Remove(btnNext.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnNext.ImageUrl.Remove(btnNext.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
            btnPrevious.ImageUrl = (btnPrevious.Enabled) ? btnPrevious.ImageUrl.Remove(btnPrevious.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnPrevious.ImageUrl.Remove(btnPrevious.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
        }
    }
}