﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCTimKiemCoBan.ascx.cs" Inherits="vBay.WUC.WUCTimKiemCoBan" %>


<asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Height="500" Width="630">

<asp:Label ID="Label2" runat="server" Text="Tìm Kiếm Sản Phẩm Cơ Bản" 
        Font-Size="20pt"></asp:Label>
<br />
<asp:Label ID="Label1" runat="server" Text="Tên Sản Phẩm"></asp:Label>
<asp:TextBox ID="tbTenSanPham" runat="server" style="margin-left:10px;"></asp:TextBox>

<asp:Button ID="btTimKiem" runat="server" Text="Tìm" 
    onclick="btTimKiem_Click" />
<br />
<asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
<asp:GridView ID="gvDSSanPham" runat="server" AllowPaging="True" 
    onpageindexchanging="gvDSSanPham_PageIndexChanging" Width="500px" 
        AllowSorting="True" onsorting="gvDSSanPham_Sorting">
</asp:GridView>

</asp:Panel>