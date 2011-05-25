<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimKiemSPNangCao.ascx.cs" Inherits="DK_DauGia2.TimKiemSPNangCao" %>



<asp:Label ID="Label1" runat="server" Text="Tìm Kiếm Sản Phẩm Nâng Cao"></asp:Label>
<br />

<asp:Label ID="Label2" runat="server" Text="Tên Sản Phẩm"></asp:Label>
<asp:TextBox ID="tbTenSanPham" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label3" runat="server" Text="Loại Sản Phẩm"></asp:Label>
<asp:DropDownList ID="ddlLoaiSanPham" runat="server">
</asp:DropDownList>
<br />

<asp:Label ID="Label4" runat="server" Text="Người Đăng"></asp:Label>
<asp:TextBox ID="tbNguoiDang" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label5" runat="server" Text="Giá Khởi Điểm"></asp:Label>
<asp:Label ID="Label6" runat="server" Text="Từ"></asp:Label>
<asp:TextBox ID="tbGiaKhoiDiemTu" runat="server"></asp:TextBox>
<asp:Label ID="Label7" runat="server" Text="Đến"></asp:Label>
<asp:TextBox ID="tbGiaKhoiDiemDen" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label8" runat="server" Text="Giá Hiện Tại"></asp:Label>
<asp:Label ID="Label9" runat="server" Text="Từ"></asp:Label>
<asp:TextBox ID="tbGiaHienTaiTu" runat="server"></asp:TextBox>
<asp:Label ID="Label10" runat="server" Text="Đến"></asp:Label>
<asp:TextBox ID="tbGiaHienTaiDen" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label11" runat="server" Text="Ngày Đăng"></asp:Label>
<asp:Label ID="Label12" runat="server" Text="Từ"></asp:Label>
<asp:TextBox ID="tbNgayDangTu" runat="server"></asp:TextBox>
<asp:Label ID="Label13" runat="server" Text="Đến"></asp:Label>
<asp:TextBox ID="tbNgayDangDen" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label14" runat="server" Text="Ngày Hết Hạn"></asp:Label>
<asp:Label ID="Label15" runat="server" Text="Từ"></asp:Label>
<asp:TextBox ID="tbNgayHetHanTu" runat="server"></asp:TextBox>
<asp:Label ID="Label16" runat="server" Text="Đến"></asp:Label>
<asp:TextBox ID="tbNgayHetHanDen" runat="server"></asp:TextBox>
<br />

<asp:Label ID="Label17" runat="server" Text="Tình trạng"></asp:Label>
<asp:TextBox ID="tbTinhTrang" runat="server"></asp:TextBox>
<br />

<asp:Button ID="btTimKiem" runat="server" Text="Tìm" 
    onclick="btTimKiem_Click" />
<br />

<asp:Label ID="lbKetQua" runat="server" Text="Label"></asp:Label>

<asp:Panel ID="Panel1" runat="server" Width="800" Height="700" ScrollBars="Auto">
<asp:GridView ID="gvDSSanPham" runat="server" AllowPaging="True" 
    onpageindexchanging="gvDSSanPham_PageIndexChanging">
</asp:GridView>

</asp:Panel>
