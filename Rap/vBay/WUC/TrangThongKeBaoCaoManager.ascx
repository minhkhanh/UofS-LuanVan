<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangThongKeBaoCaoManager.ascx.cs" Inherits="vBay.TrangThongKeBaoCaoManager" %>
<style type="text/css">
    .headerSanPham
    {
        text-align:center;
    }  
</style>

<script type="text/javascript">    
</script>

<asp:Panel ID="PanelThongke" runat="server" Width = "750px" Height = "812px">
<p class="headerSanPham"> <font face= "Calibri" color= "red" size = "5pt"><b>THỐNG KÊ BÁO CÁO</b></font></p>
<p style="margin-left: 8px">
<font face= "Calibri" color= "green" size = "3pt"> 
<b>Tháng&nbsp; :</b></font>
<asp:DropDownList ID="DropDownDanhSachThang" runat="server" 
                  style="margin-left: 14px" 
                  Font-Italic="False" 
                  Font-Names="bodoni mt poster compressed,15pt" 
                  Font-Size="13pt" 
                  Width="99px"/>
                  
<font face= "Calibri" color= "green" size = "3pt">
<b>&nbsp;&nbsp;&nbsp; Quý&nbsp;&nbsp;&nbsp;&nbsp; :</b></font>
<asp:DropDownList ID="DropDownDanhSachQuy" runat="server" 
                  Font-Names="bodoni mt poster compressed,15pt" 
                  Font-Size="13pt" 
                  style="margin-left: 17px" 
                  Width="99px" 
                  Enabled="True">
</asp:DropDownList> 

<font face= "Calibri" color= "green" size = "3pt"> 
<b>&nbsp;&nbsp; Năm&nbsp;&nbsp;&nbsp; :</b></font>
<asp:DropDownList ID="DropDownDanhSachNam" runat="server" 
                  style="margin-left: 17px" 
                  Font-Italic="False" 
                  Font-Names="Bodoni MT Poster Compressed" 
                  Font-Size="13pt" 
                  Width="99px">
</asp:DropDownList>

<asp:Button ID="Button1" runat="server" 
            Text="Thống kê" 
            Height="28px" 
            style="margin-left: 27px; margin-top: 1px;" 
            Width="92px" 
            Font-Bold="True" 
            Font-Names="Century Schoolbook" 
            Font-Size="12pt" 
            ForeColor="Red" /> 
</p>
<p style="margin-left: 16px">Mức phí đấu giá một sản phẩm:&nbsp;&nbsp;&nbsp;;        
    <asp:Label ID="LabelMucPhi" runat="server" Text="Label" Font-Bold="True" 
        Font-Size="13pt"></asp:Label>
<asp:TextBox ID="TextBoxThayDoiMucPhi" runat="server" AutoPostBack="True" 
        Width="91px"></asp:TextBox>&nbsp;VND&nbsp;&nbsp;
    <asp:Button ID="BtCapNhat" runat="server" Text="Cập nhật" onclick="BtCapNhat_Click" 
        Width="77px" Font-Bold="True" Font-Names="Century Schoolbook,12pt" 
        ForeColor="Red" />&nbsp;</p>


<p style="margin-left: 16px">Tổng doanh thu :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <asp:Label ID="LabelDoanhThu" runat="server" Font-Bold="True" Font-Size="13pt"/>&nbsp;VND</p>
    &nbsp;&nbsp;&nbsp;&nbsp;Tổng số sản phẩm giao dịch thành công :&nbsp;
<asp:Label ID="LabelSoSanPhamDuocGiaoDich" runat="server" Font-Bold="True" 
    Font-Size="13pt"/>&nbsp;sản phẩm
<p style="margin-left: 15px"><font face= "Calibri" color= "green" size = "4pt"> <b>Danh sách giao dịch thành công: </b></font></p>
<p>&nbsp;&nbsp;&nbsp; Tổng số lần giao dịch thành công :&nbsp;
<asp:Label ID="LabelTongSoLanGiaoDichThanhCong" runat="server" Font-Bold="True" Font-Size="13pt"/>&nbsp; lần </p>

<asp:GridView ID="gridViewThongTinChiTiet" runat="server" CellPadding="4" 
    ForeColor="#333333" style="margin-left: 173px; text-align: justify;" 
    GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
    HorizontalAlign="Center" VerticalAlign="Middle" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>

<p style="margin-left: 15px"><font face= "Calibri" color= "green" size = "4pt"> <b>Danh sách các lần giao dịch: </b></font>&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;Tổng số lần giao dịch :&nbsp;<asp:Label ID="LabelTongSoLanGiaoDich" runat="server" Font-Bold="True" 
    Font-Size="13pt"/>&nbsp; lần </p>
<asp:GridView ID="gridViewCacLanGiaoDich" runat="server" CellPadding="4" 
    ForeColor="#333333" GridLines="None" style="margin-left: 173px" >
    <AlternatingRowStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
    HorizontalAlign="Center" VerticalAlign="Middle" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<p> </p>
</asp:Panel>

