<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="QuanLiTaiKhoan.aspx.cs" Inherits="vBay.QuanLiTaiKhoan" %>
<%@ Register src="WUC/UC_QuanLiTaiKhoan.ascx" tagname="UC_QuanLiTaiKhoan" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
    <uc1:UC_QuanLiTaiKhoan ID="UC_QuanLiTaiKhoan1" runat="server" />
</asp:Content>