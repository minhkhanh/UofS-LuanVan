<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4Test.aspx.cs" Inherits="vBay.WebForm4Test" %>

<%@ Register src="WUC/WUCListSanPham.ascx" tagname="WUCListSanPham" tagprefix="uc1" %>

<%@ Register src="WUC/WUCThongTinSanPhamVaShop.ascx" tagname="WUCThongTinSanPhamVaShop" tagprefix="uc2" %>

<%@ Register src="WUC/WUCSanPhamCungLoai.ascx" tagname="WUCSanPhamCungLoai" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <uc3:WUCSanPhamCungLoai ID="WUCSanPhamCungLoai1" runat="server" />

    </div>
    </form>
</body>
</html>
