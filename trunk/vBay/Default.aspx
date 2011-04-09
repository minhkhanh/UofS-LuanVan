<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="vBay._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p><img src="imagine/content.jpg" width="493" height="301"alt="Can not load imgaine!"/></p>
    <%--<p align="center"> <font color="#336633"><b>Main Content</b></font></p>--%>
    <h2>
        Phần hiện thị nội dung sản phẩm chính!
    </h2>
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolderGo">
<asp:Button runat="server" ID="ButtonChooseTheme"  Text="Go" 
                            onclick="ButtonChooseTheme_Click"/>
</asp:Content>
