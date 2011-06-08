<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCChiTietSanPham.ascx.cs" Inherits="vBay.WUC.WUCChiTietSanPham" %>
<%@ Register src="WUCBinhLuanSanPham.ascx" tagname="WUCBinhLuanSanPham" tagprefix="uc1" %>

<%@ Register src="WUCThongTinSanPhamVaShop.ascx" tagname="WUCThongTinSanPhamVaShop" tagprefix="uc2" %>

<%@ Register src="WUCSanPhamCungLoai.ascx" tagname="WUCSanPhamCungLoai" tagprefix="uc3" %>

<uc2:WUCThongTinSanPhamVaShop ID="WUCThongTinSanPhamVaShop1" runat="server" />


<uc1:WUCBinhLuanSanPham ID="WUCBinhLuanSanPham1" runat="server" />




<uc3:WUCSanPhamCungLoai ID="WUCSanPhamCungLoai1" runat="server" />






