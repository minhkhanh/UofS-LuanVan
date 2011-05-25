<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangKyTaiKhoan.ascx.cs" Inherits="DK_DauGia2.DangKyTaiKhoan" %>

<asp:Label ID="Label1" runat="server" Text="Đăng Ký Tài Khoản"></asp:Label>
<br />

<asp:Label ID="Label2" runat="server" Text="Tên Đăng Nhập"></asp:Label>
<asp:TextBox ID="tbTenDangNhap" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator
    ID="rfvTenDangNhap" runat="server" 
    ErrorMessage="Chưa điền Tên Đăng Nhập" ControlToValidate="tbTenDangNhap"></asp:RequiredFieldValidator>
<br />

<asp:Label ID="Label4" runat="server" Text="Mật khẩu"></asp:Label>
<asp:TextBox ID="tbMatKhau" runat="server" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" 
    ErrorMessage="Chưa điền Mật Khẩu" ControlToValidate="tbMatKhau"></asp:RequiredFieldValidator>
<br />

<asp:Label ID="Label6" runat="server" Text="Nhập Lại Mật Khẩu"></asp:Label>
<asp:TextBox ID="tbNhapLaiMatKhau" runat="server" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvNhapLaiMatKhau" runat="server" 
    ErrorMessage="Chưa điền Nhập Lại Mật Khẩu" ControlToValidate="tbNhapLaiMatKhau"></asp:RequiredFieldValidator>
<asp:CompareValidator ID="cvNhapLaiMatKhau" runat="server" 
    ErrorMessage="2 Mật Khẩu phải giống nhau" ControlToCompare="tbMatKhau" 
    ControlToValidate="tbNhapLaiMatKhau"></asp:CompareValidator>
<br />

<asp:Label ID="Label3" runat="server" Text="Avatar"></asp:Label>
<asp:TextBox ID="tbAvatar" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label5" runat="server" Text="Họ Tên"></asp:Label>
<asp:TextBox ID="tbHoTen" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvHoTen" runat="server" 
    ErrorMessage="Chưa điền Họ Tên" ControlToValidate="tbHoTen"></asp:RequiredFieldValidator>
<br />

<asp:Label ID="Label7" runat="server" Text="Ngày Sinh"></asp:Label>
<asp:TextBox ID="tbNgaySinh" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label8" runat="server" Text="Nơi Sinh"></asp:Label>
<asp:TextBox ID="tbNoiSinh" runat="server"></asp:TextBox>
<br />


<asp:Label ID="Label9" runat="server" Text="Địa Chỉ"></asp:Label>
<asp:TextBox ID="tbDiaChi" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label10" runat="server" Text="Số Điện Thoại"></asp:Label>
<asp:TextBox ID="tbSoDienThoai" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label11" runat="server" Text="Mã Thẻ Tín Dụng"></asp:Label>
<asp:TextBox ID="tbMaTheTinDung" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label13" runat="server" Text="Giới Tính"></asp:Label>
<asp:DropDownList ID="ddlGioiTinh" runat="server">
</asp:DropDownList>
<br />

<asp:Label ID="Label12" runat="server" Text="Email"></asp:Label>
<asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
<br />

<asp:Button ID="btNhapLai" runat="server" Text="Nhập Lại" 
    onclick="btNhapLai_Click" />
<asp:Button ID="btDangKy" runat="server" Text="Đăng Ký" 
    onclick="btDangKy_Click" />

<asp:Label ID="lbKetQua" runat="server" Text="Label"></asp:Label>