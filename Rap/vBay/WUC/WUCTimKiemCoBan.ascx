<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCTimKiemCoBan.ascx.cs" Inherits="vBay.WUC.WUCTimKiemCoBan" %>


<style type="text/css">
    .style2
    {
        width: 102px;
    }
    .style3
    {
        width: 112px;
    }
    .style4
    {
        width: 264px;
    }
</style>




<asp:Label ID="Label2" runat="server" Text="Tìm Kiếm Sản Phẩm Cơ Bản" 
        Font-Size="20pt"></asp:Label>
<br />
<asp:Label ID="Label1" runat="server" Text="Tên Sản Phẩm"></asp:Label>
<asp:TextBox ID="tbTenSanPham" runat="server" style="margin-left:10px;"></asp:TextBox>

<asp:Button ID="btTimKiem" runat="server" Text="Tìm" 
    onclick="btTimKiem_Click" />
<br />
<asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
    <br />

<asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Height="500" Width="630">
    <asp:DataList ID="dlDSSanPham" runat="server" 
        onitemdatabound="dlDSSanPham_ItemDataBound" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <table style="width: 100%; margin-top: 0px;">
                <tr>
                    <td class="style2" rowspan="3">
                        <asp:Image ID="imageSanPham" runat="server" />
                    </td>
                    <td class="style3">
                        Tên Sản Phẩm</td>
                    <td class="style4">
                        <asp:Label ID="lbTenSanPham" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.TenSanPham") %>' 
                            Font-Size="14pt"></asp:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlChiTiet" runat="server">Chi Tiết</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Người Đăng</td>
                    <td class="style4">
                        <asp:Label ID="lbNguoiDang" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.HoTen") %>' 
                            Font-Size="14pt"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Giá Khởi Điểm</td>
                    <td class="style4">
                        <asp:Label ID="lbGiaKhoiDiem" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.GiaKhoiDiem") %>' 
                            Font-Size="14pt"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SeparatorTemplate>
            ------------------------------------------------------------
        </SeparatorTemplate>
    </asp:DataList>
    <br />

</asp:Panel>