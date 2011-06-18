<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TimKiemNangCao.aspx.cs" Inherits="vBay.TimKiemNangCao" %>
<%@ Register src="WUC/WUCTimKiemNangCao.ascx" tagname="WUCTimKiemNangCao" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:WUCTimKiemNangCao ID="WUCTimKiemNangCao1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
