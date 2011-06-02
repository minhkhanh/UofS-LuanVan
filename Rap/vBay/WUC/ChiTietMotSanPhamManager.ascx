﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietMotSanPhamManager.ascx.cs" Inherits="vBay.ChiTietMotSanPhamManager" %>
<style type="text/css">
    .headerSanPham
    {
        text-align: center;
    }
</style>
<p class="headerSanPham"> <font face= "Calibri" color= "red" size = "5pt"><b>QUẢN LÝ CHI TIẾT TỪNG SẢN PHẨM</b></font></p>
<p><font face= "Calibri" color= "black" size = "2pt"><b>&nbsp;&nbsp;&nbsp;&nbsp; Tên sản phẩm:</b></font></p>
<asp:DropDownList ID="DanhSachTenSanPham" 
                  DataSourceID = "DanhSachSanPham"
                  DataValueField = "MaSanPham"
                  DataTextField = "TenSanPham"
                  AutoPostBack = "True"
                  runat="server" Font-Bold="True" 
                  Font-Names="Bodoni MT Condensed" 
                  Font-Overline="False" 
                  ForeColor="Black" 
                  Font-Size="13pt" style="margin-left: 16px"/>                              
<asp:LinqDataSource ID="DanhSachSanPham" runat="server" 
                    ContextTypeName="vBay.DataEntityDataContext" 
                    EntityTypeName="" 
                    TableName="SanPhams" 
                    Select="new (MaSanPham, TenSanPham)">    
</asp:LinqDataSource>

<asp:Panel ID="PanelSanPham" runat="server" ScrollBars="Auto"> 
<p><font face= "Calibri" color= "black" size = "2pt"><b>&nbsp;&nbsp;&nbsp; Thông tin chi tiết Comment:</b></font></p>
<asp:GridView ID="ChiTietComment" runat="server" 
              AllowPaging="True" 
              AutoGenerateColumns="False" 
              DataSourceID="CommentDataSource" 
              CellPadding="4" 
              ForeColor="#333333" 
              GridLines="None" 
              PageSize="5" style="margin-left: 12px" 
              AutoGenerateDeleteButton="True" Height="48px" 
              DataKeyNames="MaComment">    
    <AlternatingRowStyle BackColor="White" />
    <Columns>        
       <asp:TemplateField HeaderText="Tên tài khoản">
            <ItemTemplate>                
                <%# Eval("aspnet_User.UserName")%>                    
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        </asp:TemplateField>                
        <asp:BoundField DataField="NoiDungComment" HeaderText="Nội dung Commnent" 
            SortExpression="NoiDungComment" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="NgayComment" HeaderText="Ngày Comment" 
            SortExpression="NgayComment" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:LinqDataSource ID="CommentDataSource" runat="server" 
                    ContextTypeName="vBay.DataEntityDataContext" 
                    EnableDelete="True" 
                    EnableInsert="True" 
                    EnableUpdate="True" 
                    EntityTypeName="" 
                    TableName="Comments" Where="MaSanPham == @MaSanPham">
    <WhereParameters>
        <asp:ControlParameter ControlID="DanhSachTenSanPham" Name="MaSanPham" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<p><font face= "Calibri" color= "black" size = "2pt"><b>&nbsp;&nbsp;&nbsp; Thông tin chi tiết từng lượt đấu giá: </b></font></p>
<asp:GridView ID="ChiTietDauGia" runat="server" 
              AllowPaging="True" 
              AutoGenerateColumns="False" 
              CellPadding="4" 
              DataSourceID="ChiTietDauGiaDataSource" 
              ForeColor="#333333" 
              GridLines="None" 
              PageSize="5" style="margin-left: 12px" Height="48px" 
    DataKeyNames="MaChiTietDauGia">
    <AlternatingRowStyle BackColor="White" />
    <Columns>        
       <asp:TemplateField HeaderText="Tên tài khoản">
            <ItemTemplate>                
                <%# Eval("aspnet_User.UserName")%>                    
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        </asp:TemplateField>                        
        <asp:BoundField DataField="GiaGiaoDich" HeaderText="Giá giao dịch" 
            SortExpression="GiaGiaoDich" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="ThoiGianGiaoDich" HeaderText="Thời gian giao dịch" 
            SortExpression="ThoiGianGiaoDich" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:LinqDataSource ID="ChiTietDauGiaDataSource" runat="server" 
    ContextTypeName="vBay.DataEntityDataContext" EntityTypeName="" 
    TableName="ChiTietDauGias" Where="MaSanPham == @MaSanPham">
    <WhereParameters>
        <asp:ControlParameter ControlID="DanhSachTenSanPham" Name="MaSanPham" 
            PropertyName="SelectedValue" Type="Int32" />
    </WhereParameters>
</asp:LinqDataSource>
<p><font face= "Calibri" color= "black" size = "2pt"><b>&nbsp;&nbsp;&nbsp; Thông tin chi tiết sản phẩm: </b></font>
<asp:GridView ID="ChiTietSanPham" runat="server" 
              AutoGenerateColumns="False" 
              AutoGenerateDeleteButton="True" 
              CellPadding="4" 
              DataSourceID="SanPhamDataSource" 
              ForeColor="#333333" GridLines="None" 
              Width="1092px" 
              style="margin-left: 11px" 
              DataKeyNames="MaSanPham" onrowdeleted="ChiTietSanPham_RowDeleted">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm" 
                        SortExpression="TenSanPham" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        
        <asp:TemplateField HeaderText="Tình trạng sản phẩm">
            <ItemTemplate>                
                <%# Eval("TinhTrangSanPham.TenTinhTrangSanPham")%>                    
            </ItemTemplate>
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>                
        
        <asp:BoundField DataField="GiaKhoiDiem" HeaderText="Giá khởi điểm" 
            SortExpression="GiaKhoiDiem" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="GiaHienTai" HeaderText="Giá hiện tại" 
            SortExpression="GiaHienTai" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" 
            SortExpression="NgayDang" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="NgayHetHan" HeaderText="Ngày hết hạn" 
            SortExpression="NgayHetHan" >
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="Hình Ảnh">
            <ItemTemplate>
                <asp:Image ID="HinhAnh" runat="server" 
                    ImageUrl='<%# Eval("Multimedia.LinkURL") %>' Height="70px" 
                    ImageAlign="Middle" Width="70px"/>
            </ItemTemplate>
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
    </Columns>                              
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
</p>
<asp:LinqDataSource ID="SanPhamDataSource" runat="server" 
        ContextTypeName="vBay.DataEntityDataContext" EntityTypeName="" 
        TableName="SanPhams" Where="MaSanPham == @MaSanPham" 
    EnableDelete="True">
        <WhereParameters>
            <asp:ControlParameter ControlID="DanhSachTenSanPham" Name="MaSanPham" 
            PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
</asp:LinqDataSource> 
&nbsp;&nbsp; <asp:Label ID="LabelDelete" runat="server" Text="" Font-Bold="True" Font-Size="15pt"></asp:Label>
</asp:Panel>