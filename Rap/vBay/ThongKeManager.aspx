<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerSite.master" AutoEventWireup="true" CodeBehind="ThongKeManager.aspx.cs" Inherits="vBay.ThongKeManager" %>
<%@ Register Src="WUC/WUCThongKeBaoCaoManager.ascx" TagName="WUCThongKeBaoCaoManager" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <uc1:WUCThongKeBaoCaoManager ID="WUCThongKeBaoCaoManager1" runat="Server"/>
</asp:Content>
