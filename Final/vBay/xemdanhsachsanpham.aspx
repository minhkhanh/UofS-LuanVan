﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="xemdanhsachsanpham.aspx.cs" Inherits="vBay.xemdanhsachsanpham" %>
<%@ Register src="WUC/WUCListSanPham.ascx" tagname="WUCListSanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:WUCListSanPham ID="WUCListSanPham1" runat="server" />
</asp:Content>

