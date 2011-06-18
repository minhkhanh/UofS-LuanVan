<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="vBay.UserProfile" %>
<%@ Register src="WUC/WUCThongTinTaiKhoan.ascx" tagname="WUCThongTinTaiKhoan" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:WUCThongTinTaiKhoan ID="WUCThongTinTaiKhoan1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
