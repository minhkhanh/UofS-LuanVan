<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4Test.aspx.cs" Inherits="vBay.WebForm4Test" %>

<%@ Register src="WUC/WUCListSanPham.ascx" tagname="WUCListSanPham" tagprefix="uc1" %>

<%@ Register src="WUC/WUCThongTinSanPhamVaShop.ascx" tagname="WUCThongTinSanPhamVaShop" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server">
        </asp:ListView>
        <%--<uc2:WUCThongTinSanPhamVaShop ID="WUCThongTinSanPhamVaShop1" runat="server" />--%>
        <asp:ListBox ID="ListBox1" runat="server" EnableTheming="True">
            <asp:ListItem>a</asp:ListItem>
            <asp:ListItem>b</asp:ListItem>
            <asp:ListItem>c</asp:ListItem>
            <asp:ListItem>d</asp:ListItem>
        </asp:ListBox>
    </div>
    </form>
</body>
</html>
