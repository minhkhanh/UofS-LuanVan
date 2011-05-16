<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_TheoDoiLichSuGiaoDich.ascx.cs" Inherits="vBay.UC_TheoDoiLichSuGiaoDich" %>
<link href="Styles/UC_TheoDoiLichSuGiaoDich.css" rel="stylesheet" type="text/css" />
<div id="MainDiv">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Chọn tên tài khoản: " 
        BackColor="Black" Font-Bold="True" ForeColor="White"></asp:Label>
    <asp:DropDownList ID="List_DanhSachTaiKhoan" runat="server" Height="20px" 
        Width="200px">
    </asp:DropDownList>
    <asp:Button ID="Button_Search" runat="server" Text="Search" 
        onclick="Button_Search_Click" UseSubmitBehavior="False" />
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Lịch sử giao dịch: " 
        BackColor="Black" ForeColor="White" Font-Bold="True"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" BackColor="Black" Font-Bold="True" 
        ForeColor="White" Text="Tài khoản thực hiện giao dịch:"></asp:Label>
    <asp:TextBox ID="TextBox_TenTaiKhoan" runat="server" BackColor="Black" 
        ForeColor="White" Height="20px" Width="200px"></asp:TextBox>
    <br />
    <asp:DetailsView ID="DetailsView_LichSuGiaoDich" runat="server" Height="30px" 
        Width="500px" BackColor="White" ForeColor="Black" HorizontalAlign="Left">
        <FieldHeaderStyle Width="100px" />
    </asp:DetailsView>
</div>

