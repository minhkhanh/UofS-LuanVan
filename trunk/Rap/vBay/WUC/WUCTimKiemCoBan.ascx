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

<asp:ScriptManager ID="scriptManager" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="updateComment" runat="server">
    <ContentTemplate>

<asp:Label ID="Label2" runat="server" Text="Tìm Kiếm Sản Phẩm Cơ Bản" 
        Font-Size="20pt"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/TimKiemNangCao.aspx">Chuyển sang Tìm Kiếm Nâng Cao</asp:HyperLink>
<br />
<asp:Label ID="Label1" runat="server" Text="Tên Sản Phẩm"></asp:Label>
<asp:TextBox ID="tbTenSanPham" runat="server" style="margin-left:10px;"></asp:TextBox>

<asp:Button ID="btTimKiem" runat="server" Text="Tìm" 
    onclick="btTimKiem_Click" />
<br />
<asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
    <br />


    <asp:DataList ID="dlDSSanPham" runat="server" 
        onitemdatabound="dlDSSanPham_ItemDataBound" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black" Width="720px">
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
                        <asp:HyperLink ID="hlTenSanPham" runat="server" Font-Size="14pt" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.TenSanPham") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Người Đăng</td>
                    <td class="style4">
                        <asp:Label ID="lbNguoiDang" runat="server" Font-Size="14pt" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.HoTen") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Giá Khởi Điểm</td>
                    <td class="style4">
                        <asp:Label ID="lbGiaKhoiDiem" runat="server" 
                            Text='<%# DataBinder.Eval(Container, "DataItem.GiaKhoiDiem") %>' 
                            Font-Size="14pt"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SeparatorTemplate>
            ------------------------------------------------------------
        </SeparatorTemplate>
    </asp:DataList>
    <br />


<table width="100%">

    <tr>

        <td>(Trang

            <asp:label id="lblCurrentPage" Runat="server"></asp:label>&nbsp;/&nbsp;

            <asp:label id="lblTotalPages" Runat="server"></asp:label>)

        </td>

        <td valign="top" align="right">

            Trang

            <asp:DropDownList id="ddPage" runat="server"

                AutoPostBack="true" onselectedindexchanged="ddPage_SelectedIndexChanged"></asp:DropDownList>

        </td> 

        <td align="right"> 

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

</ContentTemplate>
</asp:UpdatePanel>