<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="DK_DauGia2.TrangChu" %>
<%@ Register src="TimKiemSPCoBan.ascx" tagname="TimKiemSPCoBan" tagprefix="uc1" %>


<%@ Register src="TimKiemSPNangCao.ascx" tagname="TimKiemSPNangCao" tagprefix="uc2" %>


<%@ Register src="DangKyTaiKhoan.ascx" tagname="DangKyTaiKhoan" tagprefix="uc3" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DK Trang Chủ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <uc3:DangKyTaiKhoan ID="DangKyTaiKhoan1" runat="server" />


    </div>
    </form>
</body>
</html>
