<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThayDoiLoaiNguoiDung.aspx.cs" Inherits="vBay.ThayDoiLoaiNguoiDung" %>
<%@ Register src="WUC/UC_ThayDoiLoaiNguoiDung.ascx" tagname="UC_ThayDoiLoaiNguoiDung" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UC_ThayDoiLoaiNguoiDung ID="UC_ThayDoiLoaiNguoiDung1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
