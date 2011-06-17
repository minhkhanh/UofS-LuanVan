<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TheoDoiLichSuGiaoDich.aspx.cs" Inherits="vBay.TheoDoiLichSuGiaoDich" %>
<%@ Register src="WUC/UC_TheoDoiLichSuGiaoDich.ascx" tagname="UC_TheoDoiLichSuGiaoDich" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UC_TheoDoiLichSuGiaoDich ID="UC_TheoDoiLichSuGiaoDich" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
