<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangThongTinSanPham.aspx.cs" Inherits="vBay.DangThongTinSanPham" %>
<%@ Register src="WUC/UC_DangThongTinSanPham.ascx" tagname="UC_DangThongTinSanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UC_DangThongTinSanPham ID="UC_DangThongTinSanPham" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
