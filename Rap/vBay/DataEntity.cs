using System;
namespace vBay
{     
    partial class LoaiSanPham
    {
         partial void OnTenLoaiSanPhamChanging(string value)
        {
            //Tên sản phẩm không chứa giá trị null
            if (value.Length < 2)
            {
                throw new Exception("Tên loại sản phẩm không ít hơn 1 ký tự");
            }
        }
    }
}
    
