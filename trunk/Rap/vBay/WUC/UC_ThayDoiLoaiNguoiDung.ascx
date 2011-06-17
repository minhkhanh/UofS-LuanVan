<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_ThayDoiLoaiNguoiDung.ascx.cs" Inherits="vBay.WUC.UC_ThayDoiLoaiNguoiDung" %>
<div id="ThayDoiLoaiNguoiDung_MainDiv">
    <center>
        <asp:Label ID="Label1" runat="server" Text="THAY ĐỔI LOẠI NGƯỜI DÙNG" 
            Font-Bold="True" Font-Size="24px" ForeColor="Red"></asp:Label>
    </center>
    <asp:Label ID="Label2" runat="server" Text="Tên tài khoản:" Font-Bold="True" 
        ForeColor="Black" Width="35%"></asp:Label>
    <asp:DropDownList ID="DropDownList_DanhSachTaiKhoan" runat="server" 
        AutoPostBack="True" ForeColor="Black" Width="60%" 
        onselectedindexchanged="DropDownList_DanhSachTaiKhoan_SelectedIndexChanged">
        <asp:ListItem>Choose user name...</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Loại người dùng hiện tại:" 
        Font-Bold="True" Width="35%" ForeColor="Black"></asp:Label>
    <asp:TextBox ID="TextBox_LoaiNguoiDungHienTai" runat="server" Enabled="False" 
        ForeColor="Gray" ReadOnly="True" Width="59%"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Loại người dùng mới:" 
        Font-Bold="True" Width="35%" ForeColor="Black"></asp:Label>
    <asp:DropDownList ID="DropDownList_LoaiNguoiDungMoi" runat="server" 
        ForeColor="Black" Width="60%" AutoPostBack="True" 
        onselectedindexchanged="DropDownList_LoaiNguoiDungMoi_SelectedIndexChanged">
    </asp:DropDownList>
    <br /><br />
    <center>
        <asp:Label ID="Label_ThayDoiLoaiTaiKhoanThanhCong" runat="server" 
            Text="Thay đổi loại tài khoản thành công" Font-Italic="True" ForeColor="Red" 
            Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button_Save" runat="server" Text="Save" 
            onclick="Button_Save_Click" Enabled="False" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button_BackToDefault" runat="server" Text="Exit" 
            PostBackUrl="~/Default.aspx" UseSubmitBehavior="False" />
    </center>
</div>
