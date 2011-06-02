<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoaiSanPhamManager.ascx.cs" Inherits="vBay.LoaiSanPhamManager" %>
<style type="text/css">
    .headerLoaiSanPham
    {
        text-align: center;
        height: 55px;
        width: 757px;
    }    
    .ChiTietLoaiSanPham
    {
        margin: 0 auto;
    }
</style>
<div class="headerLoaiSanPham">
    <font face= "Calibri" color= "red" size = "5pt"><b>QUẢN LÝ CHI TIẾT LOẠI SẢN PHẨM</b></font>
</div>
<asp:Panel ID="PanelLoaiSanPham" runat="server" style="margin-right: 289px" 
    Width="756px">
<asp:GridView ID="ChiTietLoaiSanPham" runat="server" 
              AllowPaging="True" 
              AllowSorting="True" 
              AutoGenerateColumns="False" 
              CellPadding="4" 
              DataKeyNames="MaLoaiSanPham" 
              DataSourceID="ChiTietLoaiSanPhamManager" 
              PageSize="15" 
              Width="578px"
              ShowFooter = "True" style="
              margin-left: 87px; margin-right: 4px; text-align: left;" onrowdeleted="ChiTietLoaiSanPham_RowDeleted" 
    onrowupdated="ChiTietLoaiSanPham_RowUpdated" ForeColor="#333333" 
        GridLines="None">              
    <AlternatingRowStyle BackColor="White" />
    <Columns>        
        <asp:CommandField 
                          ShowEditButton="True" CancelText="Hủy bỏ" DeleteText="Xóa" 
            EditText="Sửa" UpdateText="Cập nhật" ShowDeleteButton="True" >
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        
        </asp:CommandField>                
        <asp:TemplateField HeaderText ="Tên loại sản phẩm">
            <ItemTemplate>
                <asp:Label ID="LabelTenLoaiSanPham" runat="server" Text='<%# Bind("TenLoaiSanPham") %>' />                      
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="tbTenLoaiSanPham" runat="server" Text='<%# Bind("TenLoaiSanPham") %>'/>
            </EditItemTemplate>                        
            <FooterTemplate>              
                <p>Tên loại sản phẩm:</p> <asp:TextBox ID="txTenLoaiSanPham" runat="server" Width = "300pt"></asp:TextBox> 
                <asp:Button ID="AddLoaiSanPham" runat="server" Text="Thêm" Width = "80px" OnClick = "ThemSanPham"/>            
            </FooterTemplate>    
            <ControlStyle Width="400px" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        </asp:TemplateField>                               
    </Columns>
    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True"/>        
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />    
</asp:GridView>
<asp:LinqDataSource ID="ChiTietLoaiSanPhamManager" runat="server" 
                    ContextTypeName="vBay.DataEntityDataContext" 
                    EnableDelete="True" 
                    EnableInsert="True" 
                    EnableUpdate="True" EntityTypeName="" 
                    TableName="LoaiSanPhams">
</asp:LinqDataSource>
<p><font face="Calibri"color="back"size="2pt"><b> Thông báo: </b></font>
<asp:Label ID="LabelSanPhamVuaThem" runat="server" 
    BackColor="White" Font-Bold="True" Font-Size="15pt" ForeColor="Black"></asp:Label>
</asp:Panel></p>