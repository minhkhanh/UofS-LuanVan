using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay.WUC
{
    public partial class WUCSanPhamCungLoai : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            BindData();
        }

        protected void listSanPhamCungLoai_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            dynamic data = e.Item.DataItem as dynamic;
            HyperLink img = (HyperLink)e.Item.FindControl("hypSanPham");
            img.ImageUrl = data.LinkURL;
            img.NavigateUrl = LinkChiTietSanPham + "?MaSanPham=" + data.MaSanPham;
            Label lbPrice = (Label)e.Item.FindControl("lbGiaSanPham");
            lbPrice.Text = data.GiaHienTai.ToString();
        }
        private void BindData()
        {
            DataEntityDataContext datacontext = new DataEntityDataContext();
            int id;
            int.TryParse(Request["MaSanPham"], out id);
            var loai = (from b in datacontext.SanPhams
                        where (b.MaSanPham == id)
                        select new { b.MaLoaiSanPham }).FirstOrDefault();
            if (loai == null) return;
            
            var sp =
                from b in datacontext.SanPhams
                join c in datacontext.Multimedias on b.MaHinhMoTa equals c.MaMT
                where ((b.MaLoaiSanPham == loai.MaLoaiSanPham) && (b.NgayHetHan >= DateTime.Now))
                select new { b.MaSanPham, b.GiaKhoiDiem, b.GiaHienTai, c.LinkURL };

            if (sp == null) return;
            int num = sp.Count();
            if (num>SoLuongSanPhamToiDa)
            {
                HashSet<int> set = new HashSet<int>();
                while (set.Count < SoLuongSanPhamToiDa)
                {
                    Random rand = new Random();
                    set.Add(sp.ElementAt(rand.Next(num)).MaSanPham);
                    sp = sp.Where(item => set.Contains(item.MaSanPham));
                }
            }
            listSanPhamCungLoai.DataSource = sp;
            listSanPhamCungLoai.DataBind();
        }
        public int SoLuongSanPhamToiDa
        {
            get { return 5; }
        }
        public string LinkChiTietSanPham
        {
            get { return ""; }
        }
    }
}