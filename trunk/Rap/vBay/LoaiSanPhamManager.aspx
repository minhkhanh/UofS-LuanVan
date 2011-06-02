<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoaiSanPhamManager.aspx.cs" Inherits="vBay.WebForm4" %>
<%@ Register src="WUC/LoaiSanPhamManager.ascx" tagname="LoaiSanPhamManager" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:LoaiSanPhamManager ID="LoaiSanPhamManager1" runat="server" />
</asp:Content>
