<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChiTietMotSanPhamManager.aspx.cs" Inherits="vBay.WebForm3" %>

<%@ Register src="WUC/ChiTietMotSanPhamManager.ascx" tagname="ChiTietMotSanPhamManager" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"> </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"> 
    <uc1:ChiTietMotSanPhamManager ID="ChiTietMotSanPhamManager1" runat="server" />
</asp:Content>
