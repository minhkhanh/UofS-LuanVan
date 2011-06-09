<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThayDoiGiaoDienWebSite.aspx.cs" Inherits="vBay.ThayDoiGiaoDienWebSite" %>
<%@ Register src="WUC/WUCThayDoiGiaoDienWebSite.ascx" tagname="WUCThayDoiGiaoDienWebSite" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:WUCThayDoiGiaoDienWebSite ID="WUCThayDoiGiaoDienWebSite" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
