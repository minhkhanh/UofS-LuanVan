<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCTimKiemNangCao.ascx.cs" Inherits="vBay.WUC.WUCTimKiemNangCao" %>

<style type="text/css">
    .style8
    {
        width: 35px;
    }
    .style15
    {
        width: 46px;
    }
    .style17
    {
        width: 776px;
    }
    .style18
    {
        width: 261px;
    }
    .style19
    {
        width: 245px;
    }
</style>



<asp:Label ID="Label1" runat="server" Text="Tìm Kiếm Sản Phẩm Nâng Cao" 
        Font-Size="20pt"></asp:Label>
<br />

    <br />
    <table style="width: 85%; height: 72px;">
        <tr>
            <td class="style17">
                <asp:Label ID="Label2" runat="server" Text="Tên Sản Phẩm"></asp:Label>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                <asp:TextBox ID="tbTenSanPham" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label3" runat="server" Text="Loại Sản Phẩm"></asp:Label>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                <asp:DropDownList ID="ddlLoaiSanPham" runat="server" Height="19px" 
                    style="margin-left: 0px" Width="128px">
                </asp:DropDownList>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:Label ID="Label4" runat="server" Text="Người Đăng"></asp:Label>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                <asp:TextBox ID="tbNguoiDang" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                
                <asp:Label ID="Label5" runat="server" Text="Giá Khởi Điểm"></asp:Label>
                
            </td>
            <td class="style15">
                
                <asp:Label ID="Label6" runat="server" Text="Từ"></asp:Label>
                
            </td>
            <td class="style18">
                <asp:TextBox ID="tbGiaKhoiDiemTu" runat="server"></asp:TextBox>
            </td>
            <td class="style8">
                <asp:Label ID="Label7" runat="server" Text="Đến"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="tbGiaKhoiDiemDen" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="style17">
                
                <asp:Label ID="Label8" runat="server" Text="Giá Hiện Tại"></asp:Label>
                
            </td>
            <td class="style15">
                <asp:Label ID="Label9" runat="server" Text="Từ"></asp:Label>
            </td>
            <td class="style18">
                
                <asp:TextBox ID="tbGiaHienTaiTu" runat="server"></asp:TextBox>
                
            </td>
            <td class="style8">
                <asp:Label ID="Label10" runat="server" Text="Đến"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="tbGiaHienTaiDen" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="style17">
                
                <asp:Label ID="Label11" runat="server" Text="Ngày Đăng"></asp:Label>
                
            </td>
            <td class="style15">
                <asp:Label ID="Label12" runat="server" Text="Từ"></asp:Label>
            </td>
            <td class="style18">
                
                <asp:TextBox ID="tbNgayDangTu" runat="server"></asp:TextBox>
                
            </td>
            <td class="style8">
                <asp:Label ID="Label13" runat="server" Text="Đến"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="tbNgayDangDen" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="style17">
                
                <asp:Label ID="Label14" runat="server" Text="Ngày Hết Hạn"></asp:Label>
                
            </td>
            <td class="style15">
                <asp:Label ID="Label15" runat="server" Text="Từ"></asp:Label>
            </td>
            <td class="style18">
                
                <asp:TextBox ID="tbNgayHetHanTu" runat="server"></asp:TextBox>
                
            </td>
            <td class="style8">
                <asp:Label ID="Label16" runat="server" Text="Đến"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="tbNgayHetHanDen" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="style17">
                
                <asp:Label ID="Label17" runat="server" Text="Tình trạng"></asp:Label>
                
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                
                <asp:TextBox ID="tbTinhTrang" runat="server"></asp:TextBox>
                
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>

    </table>
<br />

<asp:Button ID="btTimKiem" runat="server" Text="Tìm" onclick="btTimKiem_Click" 
     />
<br />

<asp:Label ID="lbKetQua" runat="server" Text="Label"></asp:Label>
    
    <br />
    <asp:Panel ID="Panel1" runat="server" Width="630px" Height="500px" 
    ScrollBars="Auto">
    <asp:GridView ID="gvDSSanPham" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" onpageindexchanging="gvDSSanPham_PageIndexChanging" 
        onrowdatabound="gvDSSanPham_RowDataBound" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="STT" />
            <asp:BoundField DataField="TenSanPham" HeaderText="Tên Sản Phẩm" />
            <asp:BoundField DataField="TenLoaiSanPham" HeaderText="Loại Sản Phẩm" />
            <asp:BoundField DataField="HoTen" HeaderText="Người Đăng" />
            <asp:BoundField DataField="GiaKhoiDiem" HeaderText="Giá Khởi Điểm" />
            <asp:BoundField DataField="GiaHienTai" HeaderText="Giá Hiện Tại" />
            <asp:BoundField DataField="NgayDang" HeaderText="Ngày Đăng" />
            <asp:BoundField DataField="NgayHetHan" HeaderText="Ngày Hết Hạn" />
            <asp:BoundField DataField="TenTinhTrangSanPham" HeaderText="Tình Trạng" />
            <asp:HyperLinkField DataNavigateUrlFields="MaSanPham" 
                DataNavigateUrlFormatString="../xemchitietsanpham.aspx?MaSanPham={0}" 
                HeaderText="Chi Tiết" Text="Chi Tiết" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />

</asp:Panel>