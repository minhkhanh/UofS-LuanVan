<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="DK_DauGia3._Default" %>

<%@ Register src="UC_TimKiemCoBan.ascx" tagname="UC_TimKiemCoBan" tagprefix="uc1" %>

<%@ Register src="UC_TimKiemNangCao.ascx" tagname="UC_TimKiemNangCao" tagprefix="uc2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <uc2:UC_TimKiemNangCao ID="UC_TimKiemNangCao1" runat="server" />
</asp:Content>
