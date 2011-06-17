using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
namespace vBay
{
    public partial class WUCLoaiSanPhamManager : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void ThemSanPham(object sender, EventArgs e)
        {
            ThemLoaiSanPham();
        }
        protected void ThemLoaiSanPham()
        {
            string tenLoaiSanPham = ((TextBox)ChiTietLoaiSanPham.FooterRow.FindControl("txTenLoaiSanPham")).Text;
            if (tenLoaiSanPham.Length < 2)
            {
                LabelSanPhamVuaThem.Text = "Tên loại sản phẩm không ít hơn 1 ký tự! Thêm loại sản phẩm thất bại";
                LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                LabelSanPhamVuaThem.BackColor = Color.Red;
            }
            else
            {
                try
                {
                    DataEntityDataContext dataContent = new DataEntityDataContext();
                    LoaiSanPham loaiSanPham = new LoaiSanPham();
                    loaiSanPham.TenLoaiSanPham = tenLoaiSanPham;
                    dataContent.LoaiSanPhams.InsertOnSubmit(loaiSanPham);
                    dataContent.SubmitChanges();
                    LabelSanPhamVuaThem.Text = "Tên loại sản phẩm vừa thêm: " + tenLoaiSanPham;
                    LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                    LabelSanPhamVuaThem.BackColor = Color.Green;
                }
                catch (System.Exception ex)
                {
                    LabelSanPhamVuaThem.Text = "Không thêm được loại sản phẩm mới";
                    LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                    LabelSanPhamVuaThem.BackColor = Color.Red;
                }
            }
        }

        protected void ChiTietLoaiSanPham_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                LinqDataSourceValidationException linqException = e.Exception as LinqDataSourceValidationException;
                if (linqException == null)
                {
                    LabelSanPhamVuaThem.Text = "Data error";
                    LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                    LabelSanPhamVuaThem.BackColor = Color.Red;
                }
                else
                {
                    LabelSanPhamVuaThem.Text = "";
                    foreach (Exception err in linqException.InnerExceptions.Values)
                        LabelSanPhamVuaThem.Text += err.Message + "<br/>";
                    LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                    LabelSanPhamVuaThem.BackColor = Color.Red;
                }
                e.ExceptionHandled = true;
            }
            else
            {
                LabelSanPhamVuaThem.Text = "Cập nhật thành công";
                LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                LabelSanPhamVuaThem.BackColor = Color.Green;                    
            }
        }

        protected void ChiTietLoaiSanPham_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                LinqDataSourceValidationException linqException = e.Exception as LinqDataSourceValidationException;
                if (linqException == null)
                {
                    LabelSanPhamVuaThem.Text = "Loại sản phẩm này đang được sử dụng! Xóa thất bại";
                    LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                    LabelSanPhamVuaThem.BackColor = Color.Red;
                }
                else
                {
                    
                }
                e.ExceptionHandled = true;
            }
            else
            {
                LabelSanPhamVuaThem.Text = "Xóa thành công";
                LabelSanPhamVuaThem.ForeColor = Color.Yellow;
                LabelSanPhamVuaThem.BackColor = Color.Green;                    
            }
        }      
    }
}