<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCTimKiem.ascx.cs" Inherits="vBay.WUC.UCTimKiem" %>

<asp:TextBox ID="tbTenSanPham" runat="server" BackColor="White" 
    BorderStyle="Groove" ToolTip="Nhập tên sản phẩm"></asp:TextBox>
<asp:Button ID="btTimKiem" runat="server" Text="Tìm" 
    onclick="btTimKiem_Click" />