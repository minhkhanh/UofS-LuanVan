using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace vBay
{
    public partial class WUCChiTietMotSanPhamManager : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {                                
                PhucHoiLable();
            }
        }
        
        protected void PhucHoiLable()
        {
            LabelDelete.Text = "";
        }

        protected void ChiTietSanPham_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                LinqDataSourceValidationException linqException = e.Exception as LinqDataSourceValidationException;
                if (linqException == null)
                {
                    LabelDelete.Text = "Sản phẩm này đang được sử dụng! Xóa thất bại";
                    LabelDelete.ForeColor = Color.Yellow;
                    LabelDelete.BackColor = Color.Red;
                }
                else
                {

                }
                e.ExceptionHandled = true;
            }
            else
            {
                LabelDelete.Text = "Xóa thành công";
                LabelDelete.ForeColor = Color.Yellow;
                LabelDelete.BackColor = Color.Green;
            }
        }
    }
}