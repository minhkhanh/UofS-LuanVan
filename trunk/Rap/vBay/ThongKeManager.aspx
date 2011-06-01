<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThongKeManager.aspx.cs" Inherits="vBay.WebForm2" %>
<%@ Register src="WUC/TrangThongKeBaoCaoManager.ascx" tagname="TrangThongKeBaoCaoManager" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <uc1:TrangThongKeBaoCaoManager ID="TrangThongKeBaoCaoManager1" runat="server" />
    
</asp:Content>
