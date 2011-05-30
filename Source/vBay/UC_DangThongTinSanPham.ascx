<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_DangThongTinSanPham.ascx.cs" Inherits="vBay.UC_DangThongTinSanPham" %>
<link href="Styles/UC_DangThongTinSanPham.css" rel="stylesheet" 
    type="text/css" />
<div id="DangThongTinSanPham_MainDiv">
    <center>
        <asp:Label ID="Label1" runat="server" Text="ĐĂNG THÔNG TIN SẢN PHẨM MỚI" 
            BackColor="Black" Font-Bold="True" Font-Size="20px" ForeColor="White"></asp:Label>
        <br />
        <asp:Image ID="Image_HinhAnhMinhHoa" runat="server" Height="150px" 
        ImageAlign="Top" Width="150px" Visible="False" />
        <br />
        <asp:DropDownList ID="DropDownList_DanhSachHinhMinhHoa" runat="server" 
            Width="200px" AutoPostBack="True" 
            onselectedindexchanged="DropDownList_DanhSachHinhMinhHoa_SelectedIndexChanged" 
            Visible="False">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label_HinhAnhMinhHoa" runat="server" 
            Text="Hình ảnh đang xem sẽ là hình ảnh mô tả chính của sản phẩm" 
            BackColor="Black" Font-Italic="True" Font-Size="15px" ForeColor="Yellow" 
            Visible="False"></asp:Label>
    </center>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Tên tài khoản" BackColor="Black" 
        Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:TextBox ID="TextBox_TenTaiKhoan" runat="server" BackColor="White" 
        Enabled="False" ForeColor="Black" ReadOnly="True" Width="60%"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Tên sản phẩm" BackColor="Black" 
        Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:TextBox ID="TextBox_TenSanPham" runat="server" BackColor="White" 
        ForeColor="Black" Width="60%"></asp:TextBox>
    <br />
    <center>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_TenSanPham" runat="server" 
            ErrorMessage="Bạn chưa nhập tên sản phẩm" BackColor="Black" 
            ControlToValidate="TextBox_TenSanPham" Font-Italic="True" ForeColor="Yellow" 
            ValidationGroup="Validation_DangThongTinSanPham">
        </asp:RequiredFieldValidator>
    </center>
    <asp:Label ID="Label10" runat="server" Text="Tình trạng sản phẩm" 
        BackColor="Black" Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:DropDownList ID="DropDownList_TinhTrangSanPham" runat="server" 
        BackColor="White" DataTextField="TenTinhTrangSanPham" 
        DataValueField="MaTinhTrangSanPham" ForeColor="Black" Width="60%">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Loại sản phẩm" BackColor="Black" 
        Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:DropDownList ID="DropDownList_LoaiSanPham" runat="server" 
        BackColor="White" DataTextField="TenLoaiSanPham" DataValueField="MaLoaiSanPham" 
        ForeColor="Black" Width="60%">
    </asp:DropDownList>
    <br />

    <br />
    <asp:Label ID="Label9" runat="server" Text="Thời gian đấu giá" 
        BackColor="Black" Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:DropDownList ID="DropDownList_ThoiGianDauGia" runat="server" 
        BackColor="White" ForeColor="Black" Width="60%">
        <asp:ListItem>1 week</asp:ListItem>
        <asp:ListItem>2 weeks</asp:ListItem>
        <asp:ListItem>3 weeks</asp:ListItem>
        <asp:ListItem>1 month</asp:ListItem>
        <asp:ListItem>2 months</asp:ListItem>
        <asp:ListItem>3 months</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Mô tả sản phẩm" BackColor="Black" 
        Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:TextBox ID="TextBox_MoTaSanPham" runat="server" BackColor="White" 
        ForeColor="Black" Height="100px" TextMode="MultiLine" Width="100%"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Hình ảnh minh họa" 
        BackColor="Black" Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:FileUpload ID="FileUpload_HinhAnhMinhHoa" runat="server" Width="48%" />
    <asp:Button ID="Button_Upload" runat="server" Text="Upload" 
        onclick="Button_Upload_Click" Width="60px" />
    
    <br />
    <asp:Label ID="Label4" runat="server" Text="Giá khởi điểm" BackColor="Black" 
        Font-Bold="True" ForeColor="White" Width="35%"></asp:Label>
    <asp:TextBox ID="TextBox_GiaKhoiDiem" runat="server" Width="200px" 
        BackColor="White" ForeColor="Black" 
        ValidationGroup="Validation_DangThongTinSanPham"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" BackColor="Black" ForeColor="White" 
        Text="VNĐ"></asp:Label>
    <br />
    <center>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_GiaKhoiDiem" 
            runat="server" BackColor="Black" ControlToValidate="TextBox_GiaKhoiDiem" 
            ErrorMessage="Bạn chưa nhập giá khởi điểm của sản phẩm" Font-Italic="True" 
            ForeColor="Yellow" ValidationGroup="Validation_DangThongTinSanPham">
        </asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator_GiaKhoiDiem" runat="server" 
            ErrorMessage="Bạn nhập giá khởi điểm không hợp lệ" BackColor="Black" 
            ControlToValidate="TextBox_GiaKhoiDiem" Font-Italic="True" ForeColor="Yellow" 
            Operator="GreaterThan" ValidationGroup="Validation_DangThongTinSanPham" 
            ValueToCompare="0"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Button_DangThongTinSanPham" runat="server" Text="Đăng" 
            onclick="Button_DangThongTinSanPham_Click" 
            ValidationGroup="Validation_DangThongTinSanPham" />
    </center>
    <br />
</div>

