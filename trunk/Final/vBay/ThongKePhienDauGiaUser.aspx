<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ThongKePhienDauGiaUser.aspx.cs" Inherits="vBay.ThongKePhienDauGiaUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Các phiên đang đấu giá"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" runat="server" HorizontalAlign="Center">
        <HeaderTemplate>
            <table class="itemtable" border="0" cellspacing="0" cellpadding="0" width="100%">
                <tr id="header">
                    <td colspan="2" align="center">
                        Sản phẩm
                    </td>
                    <td>
                        Thời gian giao dịch
                    </td>
                    <td>
                        Giá giao dịch
                    </td>
                    <td>
                        Giá hiện tại
                    </td>
                    <td>
                        Ngày hết hạn
                    </td>
                </tr>
                <!-- </table> -->
        </HeaderTemplate>
        <ItemTemplate>
            <!-- <table border="0" cellspacing="0" cellpadding="0" width="100%"> -->
            <tr class="itemrow" align="center">
                <td valign="middle" align="left">
                    <asp:Image ID="imgSanPham" runat="server" Height="100px" Width="100px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.LinkURL") %>' ImageAlign="AbsMiddle" />
                </td>
                <td>
                    <asp:HyperLink ID="lnkTenSanPham" NavigateUrl='<%# "~/xemchitietsanpham.aspx?MaSanPham=" + DataBinder.Eval(Container, "DataItem.MaSanPham") %>' runat="server"><%# DataBinder.Eval(Container, "DataItem.TenSanPham") %></asp:HyperLink>
                </td>
                <td>
                    <asp:Label ID="lblThoiGianGiaoDich" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ThoiGianGiaoDich") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblGiaGiaoDich" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.GiaGiaoDich") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblGiaHienTai" runat="Server" Text='<%# DataBinder.Eval(Container, "DataItem.GiaHienTai") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblNgayHetHan" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.NgayHetHan") %>'></asp:Label>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>
    </asp:DataList>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Lịch sử đấu giá"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" HorizontalAlign="Center">
        <HeaderTemplate>
            <table class="itemtable" border="0" cellspacing="0" cellpadding="0" width="100%">
                    <tr id="header">
                        <td colspan="2" align="center">
                            Sản phẩm
                        </td>
                        <td>
                            Thời gian giao dịch
                        </td>
                        <td>
                            Giá giao dịch
                        </td>
        </HeaderTemplate>
        <ItemTemplate>
                <tr class="itemrow" align="center">
                    <td valign="middle" align="left">
                        <asp:Image ID="imgSanPham" ImageAlign="AbsMiddle" runat="server" Height="100px" Width="100px" ImageUrl='<%# DataBinder.Eval(Container, "DataItem.LinkURL") %>' />
                    </td>
                    <td>
                        <asp:HyperLink ID="lnkTenSanPham" NavigateUrl='<%# "~/xemchitietsanpham.aspx?MaSanPham=" + DataBinder.Eval(Container, "DataItem.MaSanPham") %>' runat="server"> <%# DataBinder.Eval(Container, "DataItem.TenSanPham") %></asp:HyperLink>
                    </td>
                    <td>
                        <asp:Label ID="lblThoiGianGiaoDich" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.ThoiGianGiaoDich") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblGiaGiaoDich" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.GiaGiaoDich") %>'></asp:Label>
                    </td>
                </tr>
         </ItemTemplate>
         <FooterTemplate>
         </table>
         </FooterTemplate>
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
