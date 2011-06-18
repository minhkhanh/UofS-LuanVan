<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerSite.master" AutoEventWireup="true" CodeBehind="LoaiSanPhamManager.aspx.cs" Inherits="vBay.LoaiSanPhamManager" %>
<%@ Register src="WUC/WUCLoaiSanPhamManager.ascx" tagname="WUCLoaiSanPhamManager" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <p>&nbsp;</p>
    <uc1:WUCLoaiSanPhamManager ID="WUCLoaiSanPhamManager1" runat="Server"/>
</asp:Content>
