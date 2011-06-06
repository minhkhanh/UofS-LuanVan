<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCListSanPham.ascx.cs" Inherits="vBay.WUC.WUCListSanPham" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height: 176px;
    }
    .style2
    {
        width: 86px;
    }
    .style3
    {
        height: 35px;
    }
    .style4
    {
        height: 10px;
    }
    .style5
    {
        height: 27px;
    }
    .style7
    {
        height: 44px;
    }
</style>

<asp:ScriptManager ID="scriptManager" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="updateComment" runat="server">
    <ContentTemplate>
<asp:DataList ID="dataListSP" runat="server" style="margin-right: 7px" 
    Width="532px" onitemdatabound="dataListSP_ItemDataBound">
    <ItemTemplate>
        <table class="style1">
            <tr>
                <td class="style2" rowspan="3">
                    <strong>
                    <asp:Image ID="imgHinhMoTa" runat="server" Height="155px" Width="108px" />
                    </strong>
                </td>
                <td class="style7" width="75%" colspan="2">
                    <asp:HyperLink ID="hlTieuDe" runat="server">hlTieuDe</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style5" width="40%">
                    <strong>Giá đấu:</strong></td>
                <td class="style5" width="60%">
                    <asp:Label ID="lbGiaDau" runat="server" Text="giá đấu"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <strong>Thời gian còn:</strong></td>
                <td class="style3">
                    <asp:Label ID="lbTimeOut" runat="server" Text="thời gian"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4" colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="1px" 
                        ImageUrl="~/imagine/line.jpg" Width="100%" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
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