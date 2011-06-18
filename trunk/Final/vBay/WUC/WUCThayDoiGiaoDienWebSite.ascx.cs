using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vBay.WUC
{
    public partial class WUCThayDoiGiaoDienWebSite : System.Web.UI.UserControl
    {
        private DataEntityDataContext dataContext;
        private String staticLogoBeginUrl;
        private String staticLogoBeginPath;
        private String staticCSSBeginUrl;
        private String staticCSSBeginPath;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Page_Init()
            //  1. Khởi tạo biến dataContext
            //  2. Truy vấn CSDL đọc các đường dẫn và lưu vào các biến staticLogoBeginUrl, staticLogoBeginPath
            //  3. Truy vấn CSDL đọc các đường dẫn và lưu vào các biến staticCSSBeginUrl, staticCSSBeginPath
            //  4. Lấy Image Url của Logo trong CSDL thông qua dataContext và gán vào Image_Logo
            //  5. Thiết lập trạng thái Invisible cho Label_UploadLogoThanhCong
            //  6. Thiết lập trạng thái Invisible cho Label_UploadCSSThanhCong
            //  7. Thiết lập trạng thái Invisible cho Label_ReturnToDefault
            

            //Tiến hành
            //  1. Khởi tạo biến dataContext
            dataContext = new DataEntityDataContext();

            //  2. Truy vấn CSDL đọc các đường dẫn và lưu vào các biến staticLogoBeginUrl, staticLogoBeginPath
            staticLogoBeginPath = Page.Request.PhysicalApplicationPath + "Images\\";
            staticLogoBeginUrl = "~/Images/";
            
            //  3. Truy vấn CSDL đọc các đường dẫn và lưu vào các biến staticCSSBeginUrl, staticCSSBeginPath
            staticCSSBeginPath = Page.Request.PhysicalApplicationPath + "Styles\\";
            staticCSSBeginUrl = "../Styles/";

            //  4. Lấy Image Url của Logo trong CSDL thông qua dataContext và gán vào Image_Logo
            THAMSO thamSo = dataContext.THAMSOs.Single(p => p.TenThamSo == "Logo");
            String imageUrl = thamSo.GiaTri;
            Image_Logo.ImageUrl = imageUrl;

            //  5. Thiết lập trạng thái Invisible cho Label_UploadThanhCong
            Label_UploadLogoThanhCong.Visible = false;

            //  6. Thiết lập trạng thái Invisible cho Label_UploadCSSThanhCong
            Label_UploadCSSThanhCong.Visible = false;

            //  7. Thiết lập trạng thái Invisible cho Label_ReturnToDefault
            Label_ReturnToDefault.Visible = false;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_UploadLogo_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_Save_Click
            //Kiểm tra: Nếu người dùng đã chọn hình ảnh Logo để upload => Tiến hành upload hình ảnh lên server
            //  1. Khai báo và xử lí chuỗi Path để upload hình ảnh lên server theo chuỗi path này
            //  2. Lưu hình ảnh upload lên server theo Path đã xử lí
            //  3. Khai báo và xử lí url để thiết lập Image Source cho Image_Logo
            //  4. Truy cập CSDL thông qua dataContext và cập nhật lại Logo
            //  5. Cập nhật lại ImageUrl cho Image_Logo
            //  6. Hiện label báo hiện đã upload thành công logo mới
            //  7. Hiện Label trở về trang Default


            //Tiến hành
            //Kiểm tra: Nếu người dùng đã chọn hình ảnh Logo để upload => Tiến hành upload hình ảnh lên server
            if (FileUpload_Logo.HasFile == true)
            {
                //  1. Khai báo và xử lí chuỗi Path để upload hình ảnh lên server theo chuỗi path này
                String path = staticLogoBeginPath + FileUpload_Logo.FileName;

                //  2. Lưu hình ảnh upload lên server theo Path đã xử lí
                FileUpload_Logo.SaveAs(path);

                //  3. Khai báo và xử lí url để thiết lập Image Source cho Image_Logo
                String url = staticLogoBeginUrl + FileUpload_Logo.FileName;

                //  4. Truy cập CSDL thông qua dataContext và cập nhật lại Logo
                THAMSO thamSo = dataContext.THAMSOs.Single(p => p.TenThamSo == "Logo");
                thamSo.GiaTri = url;
                dataContext.SubmitChanges();

                //  5. Cập nhật lại ImageUrl cho Image_Logo
                Image_Logo.ImageUrl = url;

                //  6. Hiện label báo hiện đã upload thành công logo mới
                Label_UploadLogoThanhCong.Visible = true;

                //  7. Hiện Label trở về trang Default
                Label_ReturnToDefault.Visible = true;
            }
        }

        protected void Button_Default_Click(object sender, EventArgs e)
        {            
            //Doing nothing here
        }

        protected void Button_UploadCSS_Click(object sender, EventArgs e)
        {
            //Hướng xử lí trong hàm Button_UploadCSS_Click
            //Kiểm tra: Nếu người dùng đã chọn file để upload
            //  1. Kiểm tra: Nếu file được chọn để upload đúng là file CSS
            //  2. Xử lí đường dẫn lưu file và lưu vào biến cssPath
            //  3. Upload file css được chọn theo đường dẫn đã xử lí
            //  4. Cập nhật giá trị bộ StyleSheet trong bảng THAMSO
            //  5. Hiện label báo file css đã được upload thành công
            //  6. Hiện Label trở về trang Default


            //Tiến hành
            //Kiểm tra: Nếu người dùng đã chọn file để upload
            if (FileUpload_StyleSheet.HasFile == true)
            {
                //  1. Kiểm tra: Nếu file được chọn để upload đúng là file CSS
                String fileName = FileUpload_StyleSheet.FileName;
                if (fileName.EndsWith(".css") == true)
                {
                    //  2. Xử lí đường dẫn lưu file và lưu vào biến cssPath
                    String cssPath = staticCSSBeginPath + FileUpload_StyleSheet.FileName;
                    String cssUrl = staticCSSBeginUrl + FileUpload_StyleSheet.FileName;

                    //  3. Upload file css được chọn theo đường dẫn đã xử lí
                    FileUpload_StyleSheet.SaveAs(cssPath);

                    //  4. Cập nhật giá trị bộ StyleSheet trong bảng THAMSO
                    THAMSO thamSoCSS = dataContext.THAMSOs.Single(p => p.TenThamSo == "StyleSheet");
                    thamSoCSS.GiaTri = cssUrl;
                    dataContext.SubmitChanges();

                    //  5. Hiện label báo file css đã được upload thành công
                    Label_UploadCSSThanhCong.Visible = true;

                    //  6. Hiện Label trở về trang Default
                    Label_ReturnToDefault.Visible = true;
                }
            }
        }
    }
}