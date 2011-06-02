<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainContent.aspx.cs" Inherits="vBay.WebForm1" %>
<%@ Register src="WUC/MaintentSanPham.ascx" tagname="MaintentSanPham" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">    
    <uc1:MaintentSanPham ID="MaintentSanPham1" runat="server" />    
</asp:Content>
