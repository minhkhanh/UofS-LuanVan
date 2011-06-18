using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace vBay
{
    public partial class UC_DangThongTinSanPham : System.Web.UI.UserControl
    {
        private DataEntityDataContext dataContext;
        static private String staticImagePath;
        static private String staticImageUrl;
        static private bool isUploadedImage = false;

        protected void Page_Init(object sender, EventArgs e)
        {
            //Phương hướng xử lí trong hàm Page_Init()
            //  1. Khởi tạo biến dataContext để đọc dữ liệu từ CSDL
            //  2. Đọc tên tài khoản đang đăng nhập và hiện tên đăng nhập vào TextBox_TenTaiKhoan
            //  3. Đọc danh sách các loại sản phẩm và load lên DropDownList_LoaiSanPham
            //  4. Đọc danh sách tình trạng sản phẩm và load lên DropDownList_TinhTrangSanPham

            //Tiến hành
            //  1. Khởi tạo biến dataContext để đọc dữ liệu từ CSDL
            dataContext = new DataEntityDataContext();

            //  2. Đọc tên tài khoản đang đăng nhập và hiện tên đăng nhập vào TextBox_TenTaiKhoan
            String userName = Page.User.Identity.Name;
            TextBox_TenTaiKhoan.Text = userName;

            //  3. Đọc danh sách các loại sản phẩm và load lên DropDownList_LoaiSanPham
            var loaiSanPham = from a in dataContext.LoaiSanPhams
                              select new { a.TenLoaiSanPham, a.MaLoaiSanPham };

            DropDownList_LoaiSanPham.DataSource = loaiSanPham;
            DropDownList_LoaiSanPham.DataBind();

            //  4. Đọc danh sách tình trạng sản phẩm và load lên DropDownList_TinhTrangSanPham
            var tinhTrangSanPham = from a in dataContext.TinhTrangSanPhams
                                   select new { a.TenTinhTrangSanPham, a.MaTinhTrangSanPham};

            DropDownList_TinhTrangSanPham.DataSource = tinhTrangSanPham;
            DropDownList_TinhTrangSanPham.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_DangThongTinSanPham_Click(object sender, EventArgs e)
        {
            //Phương hướng xử lí trong hàm Button_DangThongTinSanPham_Click()
            //Kiểm tra: Nếu người dùng chưa upload hình ảnh thì không tiếp tục phương thức
            //  1. Gọi hàm trừ tiền tài khoản; Nếu thành công thì tiến hành tiếp
            //Kiểm tra: Nếu giá trị tiền khởi điểm hợp lệ
            //  2. Khởi tạo biến sanPham để lưu thông tin sản phẩm cần đăng
            //  3. Lưu các thông tin sản phẩm mới vào biến sanPham
            //  4. Lưu thông tin maHinhMoTa vào biến sanPham
            //  5. Lưu biến sanPham vào CSDL và trả về maSanPham
            //  6. Khởi tạo các biến SanPham_Multimedia để lưu thông tin các hình mô tả có liên quan đến sản phẩm
            
            
            //Tiến hành
            //Kiểm tra: Nếu người dùng chưa upload hình ảnh thì không tiếp tục phương thức
            if (DropDownList_DanhSachHinhMinhHoa.Items.Count == 0)
                return;

            //  1. Gọi hàm trừ tiền tài khoản; Nếu thành công thì tiến hành tiếp
            aspnet_User user = dataContext.aspnet_Users.Single(p => p.UserName == TextBox_TenTaiKhoan.Text);
            Guid userId = user.UserId;            
            if (TruTien(userId) == false)
                return;

            //Kiểm tra: Nếu giá trị tiền khởi điểm hợp lệ
            int temp;
            if (int.TryParse(TextBox_GiaKhoiDiem.Text, out temp) == true)
            {
                //  2. Khởi tạo biến sanPham để lưu thông tin sản phẩm cần đăng
                SanPham sanPham = new SanPham();

                //  3. Lưu các thông tin sản phẩm mới vào biến sanPham
                sanPham.GiaHienTai = 0;
                sanPham.GiaKhoiDiem = double.Parse(TextBox_GiaKhoiDiem.Text);
                sanPham.MaLoaiSanPham = int.Parse(DropDownList_LoaiSanPham.SelectedItem.Value.ToString());
                sanPham.MaTinhTrangSanPham = int.Parse(DropDownList_TinhTrangSanPham.SelectedItem.Value.ToString());
                sanPham.MoTaSanPham = TextBox_MoTaSanPham.Text;
                sanPham.NgayDang = DateTime.Now;
                switch (DropDownList_ThoiGianDauGia.SelectedItem.Text)
                {
                    case "1 week":
                        {
                            sanPham.NgayHetHan = DateTime.Today.AddDays(7);
                            break;
                        }
                    case "2 weeks":
                        {
                            sanPham.NgayHetHan = DateTime.Today.AddDays(14);
                            break;
                        }
                    case "3 weeks":
                        {
                            sanPham.NgayHetHan = DateTime.Today.AddDays(21);
                            break;
                        }
                    case "1 month":
                        {
                            sanPham.NgayHetHan = DateTime.Today.AddMonths(1);
                            break;
                        }
                    case "2 months":
                        {
                            sanPham.NgayHetHan = DateTime.Today.AddMonths(2);
                            break;
                        }
                    case "3 months":
                        {
                            sanPham.NgayHetHan = DateTime.Today.AddMonths(3);
                            break;
                        }
                }

                sanPham.TenSanPham = TextBox_TenSanPham.Text;

                //  4. Lưu thông tin maHinhMoTa vào biến sanPham
                //      Khởi tạo chuỗi String fileName để lấy ra trường TenMT trong bảng Multimedia
                String fileName = DropDownList_DanhSachHinhMinhHoa.SelectedItem.Value.ToString();
                Multimedia multimedia = dataContext.Multimedias.Single(p => p.TenMT == fileName);
                sanPham.Multimedia = multimedia;

                //  5. Lưu biến sanPham vào CSDL và trả về maSanPham
                //      Lưu biến sanPham vào CSDL
                dataContext.SanPhams.InsertOnSubmit(sanPham);
                dataContext.SubmitChanges();

                //      Thực hiện tra cứu để lấy lại mã sản phẩm vừa thêm vào CSDL
                SanPham product = dataContext.SanPhams.Single(p => p.TenSanPham == TextBox_TenSanPham.Text && p.NgayDang == sanPham.NgayDang);
                
                //  6. Khởi tạo các biến SanPham_Multimedia để lưu thông tin các hình mô tả có liên quan đến sản phẩm
                for (int i = 0; i < DropDownList_DanhSachHinhMinhHoa.Items.Count; i++)
                {
                    //  Kiểm tra: Nếu fileName của hình được lưu trong Item[i].Value khác fileName được lưu trong product.Multimedia
                    if (DropDownList_DanhSachHinhMinhHoa.Items[i].Value != product.Multimedia.FileName)
                    {
                        //Khởi tạo biến SanPham_Multimedia
                        SanPham_Multimedia sanPham_Multimedia = new SanPham_Multimedia();

                        //Lưu thông tin sản phẩm vào sanPham_Multimedia
                        sanPham_Multimedia.SanPham = product;

                        //Đọc CSDL để lấy thông tin Multimedia trùng với fileName được lưu trong Item[i].Value
                        //     Dùng chuỗi String fileName để lấy ra trường TenMT trong bảng Multimedia
                        fileName = DropDownList_DanhSachHinhMinhHoa.SelectedItem.Value.ToString();
                        Multimedia multi = dataContext.Multimedias.Single(p => p.TenMT == fileName);
                        sanPham_Multimedia.Multimedia = multi;

                        //Lưu sanPham_Multimedia vào CSDL
                        dataContext.SanPham_Multimedias.InsertOnSubmit(sanPham_Multimedia);
                        dataContext.SubmitChanges();
                    }
                }
            }
        }

        private bool TruTien(Guid userId)
        {
            //Xỉn cài đặt

            return true;
        }

        protected void Button_Upload_Click(object sender, EventArgs e)
        {
            String filePath;            //Đường dẫn dùng để lưu file xuống server
            String fileUrl;             //Url đại diện cho file dùng để load image
            String fileName = "";       //Tên file
            String fileExtent = "";     //Phần mở rộng (đuôi file)

            //Phương hướng xử lí:
            //Kiểm tra: Nếu người dùng đã chọn hình ảnh để upload => upload file lên server theo path mong muốn
            //  1. Xử lí fileName để tránh bị trùng với những file trước đó
            //  2. Lưu file ảnh xuống server với fileName đã được chỉnh sửa
            //  3. Khởi tạo biến Multimedia để lưu thông tin file ảnh vừa được lưu xuống CSDL
            //  4. Lưu biến Multimedia vừa được tạo vào CSDL
            //Kiểm tra: Nếu isUploadedImage == false
            //  1. Enable các DropDownList_DanhSachHinhAnhMinhHoa, Image_HinhAnhMinhHoa và Label phía dưới
            //  2. Thêm List_Item vào DropDownList_HinhAnhMinhHoa
            //  3. Load hình ảnh vừa được upload lên Image_HinhMinhHoa


            //Tiến hành
            //Kiểm tra: Nếu người dùng đã chọn hình ảnh để upload => upload file lên server theo path mong muốn
            if (FileUpload_HinhAnhMinhHoa.HasFile == true)
            {
                //  1. Xử lí fileName để tránh bị trùng với những file trước đó
                //      Tìm kiếm vị trí cuối cùng của dấu "." để tách tên và phần mở rộng của file
                int dotIndex = FileUpload_HinhAnhMinhHoa.FileName.LastIndexOf(".");

                //      Tách phần mở rộng của file và lưu vào fileExtent
                for (int i = dotIndex; i < FileUpload_HinhAnhMinhHoa.FileName.Length; i++)
                    fileExtent += FileUpload_HinhAnhMinhHoa.FileName[i];

                //      Tách phần tên file và lưu vào fileName
                for (int i = 0; i < dotIndex; i++)
                    fileName += FileUpload_HinhAnhMinhHoa.FileName[i];

                //      Xử lí fileName: Lưu vào phía sau fileName ngày và thời gian hiện tại của hệ thống                
                fileName = fileName + "[" + DateTime.Today.Day.ToString() + "-" + DateTime.Today.Month.ToString() + "-" + DateTime.Today.Year.ToString() + "]";
                fileName = fileName + "[" + DateTime.Now.Hour.ToString() + "-" + DateTime.Now.Minute.ToString() + "-" + DateTime.Now.Second.ToString() + "]";
                fileName = fileName + fileExtent;

                //      Xuất chuỗi Path đường dẫn dùng để lưu file xuống server
                staticImagePath = Page.Request.PhysicalApplicationPath + "imagine\\";
                filePath = staticImagePath + fileName;

                //      Xuất chuỗi Url dùng để load file lên page 
                staticImageUrl = "~/imagine/";
                fileUrl = staticImageUrl + fileName;

                //  2. Lưu file ảnh xuống server với fileName đã được chỉnh sửa
                FileUpload_HinhAnhMinhHoa.SaveAs(filePath);

                //  3. Khởi tạo biến Multimedia để lưu thông tin file ảnh vừa được lưu xuống CSDL
                Multimedia image = new Multimedia();
                image.TenMT = fileName;
                image.DungLuong = FileUpload_HinhAnhMinhHoa.PostedFile.ContentLength;
                image.LinkURL = fileUrl;

                //  4. Lưu biến Multimedia vừa được tạo vào CSDL
                dataContext.Multimedias.InsertOnSubmit(image);
                dataContext.SubmitChanges();

                //Kiểm tra: Nếu isUploadedImage == false
                if (isUploadedImage == false)
                {
                    //  1. Enable các DropDownList_DanhSachHinhAnhMinhHoa, Image_HinhAnhMinhHoa và Label phía dưới
                    DropDownList_DanhSachHinhMinhHoa.Visible = true;
                    Image_HinhAnhMinhHoa.Visible = true;
                    Label_HinhAnhMinhHoa.Visible = true;

                    //  2. Thêm List_Item vào DropDownList_HinhAnhMinhHoa
                    ListItem newItem = new ListItem(FileUpload_HinhAnhMinhHoa.FileName, fileName);
                    DropDownList_DanhSachHinhMinhHoa.Items.Add(newItem);

                    //  3. Load hình ảnh vừa được upload lên Image_HinhMinhHoa
                    Image_HinhAnhMinhHoa.ImageUrl = staticImageUrl + DropDownList_DanhSachHinhMinhHoa.SelectedItem.Value;
                }                
            }      
        }

        protected void DropDownList_DanhSachHinhMinhHoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Hướng xử lí
            //  1. Thay đổi ImageUrl của Image_HinhAnhMinhHoa bằng Url được lưu trong SelectedItem.value của DropDownList_DanhSachHinhAnhMinhHoa


            //Tiến hành
            //  1. Thay đổi ImageUrl của Image_HinhAnhMinhHoa bằng Url được lưu trong SelectedItem.value của DropDownList_DanhSachHinhAnhMinhHoa
            Image_HinhAnhMinhHoa.ImageUrl = staticImageUrl + DropDownList_DanhSachHinhMinhHoa.SelectedItem.Value;
        }
    }
}