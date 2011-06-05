using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Collections;

namespace vBay.WUC
{
    public partial class WUCListSanPham : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            m_iCurrentPage = (ddPage.SelectedIndex >= 0) ? ddPage.SelectedIndex : 0;
            m_iTotalPages = ddPage.Items.Count;
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            BindData();
            UpdateStatusButton();
            UpdateImageButton();            
        }
        private void UpdateImageButton()
        {
            btnFirst.ImageUrl = (btnFirst.Enabled) ? btnFirst.ImageUrl.Remove(btnFirst.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnFirst.ImageUrl.Remove(btnFirst.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
            btnLast.ImageUrl = (btnLast.Enabled) ? btnLast.ImageUrl.Remove(btnLast.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnLast.ImageUrl.Remove(btnLast.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
            btnNext.ImageUrl = (btnNext.Enabled) ? btnNext.ImageUrl.Remove(btnNext.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnNext.ImageUrl.Remove(btnNext.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
            btnPrevious.ImageUrl = (btnPrevious.Enabled) ? btnPrevious.ImageUrl.Remove(btnPrevious.ImageUrl.IndexOf("Page") + 4) + ".gif" : btnPrevious.ImageUrl.Remove(btnPrevious.ImageUrl.IndexOf("Page") + 4) + "Disabled.gif";
        }
        private void UpdateStatusButton()
        {
            btnFirst.Enabled = false;
            btnLast.Enabled = false;
            btnNext.Enabled = false;
            btnPrevious.Enabled = false;
            if (m_iTotalPages<=1)
            {                
                return;
            }
            if (m_iCurrentPage==0)
            {
                btnLast.Enabled = true;
                btnNext.Enabled = true;
                return;
            }
            if (m_iCurrentPage == m_iTotalPages-1)
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
        private void BindData()
        {
            DataEntityDataContext datacontext = new DataEntityDataContext();
            int id;
            int.TryParse(Request["MaLoai"], out id);
            var sp =
                from b in datacontext.SanPhams
                join c in datacontext.Multimedias on b.MaHinhMoTa equals c.MaMT
                where ((b.MaLoaiSanPham == id) && (XemTatCaSanPham || (!XemTatCaSanPham && b.NgayHetHan >= DateTime.Now)))
                select new { b.MaSanPham, b.TenSanPham, b.GiaHienTai, b.NgayHetHan, c.LinkURL };

            m_iTotalPages = (sp.Count() % m_iNumPerPage == 0) ? sp.Count() / m_iNumPerPage : sp.Count() / m_iNumPerPage + 1;
            if (m_iCurrentPage >= m_iTotalPages && m_iTotalPages > 0)
            {
                m_iCurrentPage = m_iTotalPages - 1;
            }

            sp = sp.Skip(m_iNumPerPage * m_iCurrentPage).Take(m_iNumPerPage);
            lblCurrentPage.Text = (m_iCurrentPage+1).ToString();
            lblTotalPages.Text = m_iTotalPages.ToString();
            ddPage.Items.Clear();
            for (int i = 0; i < m_iTotalPages; ++i)
            {
                ddPage.Items.Add("Trang " + (i + 1).ToString());
            }
            ddPage.SelectedIndex = m_iCurrentPage;
            dataListSP.DataSource = sp;
            dataListSP.DataBind();
        }

        protected void dataListSP_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            dynamic dt = e.Item.DataItem as dynamic;
            Image imgMoTa = (Image)e.Item.FindControl("imgHinhMoTa");
            imgMoTa.ImageUrl = Page.Request.ApplicationPath + dt.LinkURL;
            HyperLink hpl = (HyperLink)e.Item.FindControl("hlTieuDe");
            hpl.Text = dt.TenSanPham;
            hpl.NavigateUrl = PathChiTietSanPham + "?idSanPham=" + dt.MaSanPham;
            Label lb = (Label)e.Item.FindControl("lbGiaDau");
            lb.Text = ((double)dt.GiaHienTai).ToString();
            lb = (Label)e.Item.FindControl("lbTimeOut");
            lb.Text = GetTextTimeOut(dt.NgayHetHan);
        }

        private string GetTextTimeOut(DateTime time)
        {
            TimeSpan t = time - DateTime.Now;
            if (t.TotalSeconds<0)
            {
                return "Đã hết hạn đấu giá";
            }
            string str = "";
            if (t.Days>0)
            {
                str += t.Days.ToString() + " ngày ";
            }
            if (t.Hours > 0)
            {
                str += t.Hours.ToString() + " giờ ";
            }
            if (t.Minutes > 0)
            {
                str += t.Minutes.ToString() + " phút ";
            }
            return str;
        }

        private int m_iNumPerPage = 5;
        public int NumPerPage
        {
            get { return m_iNumPerPage; }
            set { m_iNumPerPage = value; }
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

        protected string pathChiTietSanPham = "";
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
            m_iCurrentPage = (m_iCurrentPage - 1) ;
        }

        protected void btnNext_Click(object sender, ImageClickEventArgs e)
        {
            m_iCurrentPage = (m_iCurrentPage + 1) ;
        }

        protected void btnLast_Click(object sender, ImageClickEventArgs e)
        {
            m_iCurrentPage = m_iTotalPages - 1;
        }
    }
}