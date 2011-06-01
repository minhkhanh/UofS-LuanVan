<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="xemchitietsanpham.aspx.cs" Inherits="vBay.xemchitietsanpham" %>
<%@ Register src="WUC/WUCChiTietSanPham.ascx" tagname="WUCChiTietSanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <uc1:WUCChiTietSanPham ID="WUCChiTietSanPham1" runat="server" />
</asp:Content>
