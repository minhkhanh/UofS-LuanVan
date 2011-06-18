<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TimKiemCoBan.aspx.cs" Inherits="vBay.TimKiemCoBan" %>
<%@ Register src="WUC/WUCTimKiemCoBan.ascx" tagname="WUCTimKiemCoBan" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:WUCTimKiemCoBan ID="WUCTimKiemCoBan1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
