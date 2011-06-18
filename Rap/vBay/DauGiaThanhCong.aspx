<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DauGiaThanhCong.aspx.cs" Inherits="vBay.DauGiaThanhCong1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    .style2
    {
        width: 171px;
    }
    .style4
    {
        width: 264px;
    }
        .style6
        {
            width: 376px;
        }
        .style7
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style1">
        Đấu giá thành công</p>
    <p>


    <asp:DataList ID="dlDSSanPham" runat="server" 
        onitemdatabound="dlDSSanPham_ItemDataBound" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black" Width="720px" style="margin-top: 19px">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <table style="width: 100%; margin-top: 0px;">
                <tr>
                    <td class="style2" rowspan="4">
                        <asp:Image ID="imageSanPham" runat="server" />
                    </td>
                    <td class="style7">
                        Mã phiên đấu giá</td>
                    <td class="style6">
                        <asp:Label ID="lbMaPhienDauGia" runat="server" Font-Size="14pt" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.ChiTietDauGia.MaChiTietDauGia") %>'></asp:Label>
                    </td>
                    <td class="style4" rowspan="2">
                        <asp:Button ID="btDaNhanHang" runat="server" style="text-align: center" 
                            Text="Đã Nhận Hàng" onclick="btDaNhanHang_Click1" />
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Tên Sản Phẩm</td>
                    <td class="style6">
                        <asp:HyperLink ID="hlTenSanPham" runat="server" Font-Size="14pt" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.ChiTietDauGia.SanPham.TenSanPham") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Giá Thắng Cuộc</td>
                    <td class="style6">
                        <asp:Label ID="lbGiaThangCuoc" runat="server" Font-Size="14pt" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.GiaKhopLenh") %>'></asp:Label>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        Tình Trạng</td>
                    <td class="style6">
                        <asp:Label ID="lbTinhTrang" runat="server" Font-Size="14pt"></asp:Label>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SeparatorTemplate>
            ------------------------------------------------------------
        </SeparatorTemplate>
    </asp:DataList>
    </p>


<table width="100%" __designer:mapid="28">

    <tr __designer:mapid="29">

        <td __designer:mapid="2a">(Trang

            <asp:label id="lblCurrentPage" Runat="server"></asp:label>&nbsp;/&nbsp;

            <asp:label id="lblTotalPages" Runat="server"></asp:label>)

        </td>

        <td valign="top" align="right" __designer:mapid="2d">

            Trang

            <asp:DropDownList id="ddPage" runat="server"

                AutoPostBack="true" onselectedindexchanged="ddPage_SelectedIndexChanged"></asp:DropDownList>

        </td> 

        <td align="right" __designer:mapid="2f"> 

            <asp:imagebutton id="btnFirst" Runat="server" Enabled="false" 

                ImageUrl = "~/Images/NavFirstPageDisabled.gif" onclick="btnFirst_Click" /> 

            <asp:imagebutton id="btnPrevious" Runat="server" Enabled="false"

               ImageUrl="~/Images/NavPreviousPageDisabled.gif" 
                onclick="btnPrevious_Click" /> 

            <asp:imagebutton id="btnNext" Runat="server" Enabled="false"

               ImageUrl="~/Images/NavNextPageDisabled.gif" onclick="btnNext_Click" /> 

            <asp:imagebutton id="btnLast" Runat="server" Enabled="false" 

               ImageUrl="~/Images/NavLastPageDisabled.gif" onclick="btnLast_Click" /> 

        </td> 

    </tr>

</table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
