<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCChiTietSanPham.ascx.cs" Inherits="vBay.WUC.WUCChiTietSanPham" %>
<%@ Register src="WUCBinhLuanSanPham.ascx" tagname="WUCBinhLuanSanPham" tagprefix="uc1" %>

<%@ Register src="WUCThongTinSanPhamVaShop.ascx" tagname="WUCThongTinSanPhamVaShop" tagprefix="uc2" %>

<div>

    <uc2:WUCThongTinSanPhamVaShop ID="WUCThongTinSanPhamVaShop1" runat="server" />

</div>

<div>
<uc1:WUCBinhLuanSanPham ID="WUCBinhLuanSanPham1" runat="server" />
</div>



