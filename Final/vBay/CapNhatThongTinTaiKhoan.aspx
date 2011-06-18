<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CapNhatThongTinTaiKhoan.aspx.cs" Inherits="vBay.CapNhatThongTinTaiKhoan" %>
<%@ Register src="WUC/UC_CapNhatThongTinTaiKhoan.ascx" tagname="UC_CapNhatThongTinTaiKhoan" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UC_CapNhatThongTinTaiKhoan ID="UC_CapNhatThongTinTaiKhoan" 
        runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
