<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCSanPhamCungLoai.ascx.cs" Inherits="vBay.WUC.WUCSanPhamCungLoai" %>

<style type="text/css">
    body {
        color: #333333;
        font-family: Arial;
        font-size: 12px;
        font-weight: normal;
        text-align: left;
    }     
    .listSanPhamCungLoai
    {
        position:relative;
        width: 730px;
    }
    .listSanPhamCungLoai h3    
    {
        background:url(../Images/icon_oval.jpg) left 2px no-repeat;
        margin-bottom:6px;padding-left:18px;color:#333;font-size:13px;font-weight:bold;
    }
    .listSanPhamCungLoai .sanPham
    {
        position:relative;
        width: 150px;
    }
    .listSanPhamCungLoai .sanPham .picSanPham
    {
        margin-top: 2px;
        margin-left: 2px;        
    }  
    .listSanPhamCungLoai .sanPham .picSanPham a img
    {
        width: 150px;
        height: 200px;    
    }         
    .listSanPhamCungLoai .sanPham .motaSanPham
    {
        text-align: center;
        text-decoration: none;
    }     
    .listSanPhamCungLoai .sanPham .giaSanPham
    {
        color: #960000;
    }          
</style>
<div class="listSanPhamCungLoai">
    <h3>Sản phẩm cùng loại</h3>
    <asp:DataList ID="listSanPhamCungLoai" runat="server" 
        RepeatDirection="Horizontal" 
        onitemdatabound="listSanPhamCungLoai_ItemDataBound">
        <ItemTemplate>
            <div class="sanPham">
                <div class="picSanPham">                    
                    <asp:HyperLink ID="hypSanPham" runat="server" Width="150px" Height="200px"></asp:HyperLink>
                </div>                
                <div class="motaSanPham">
                    <asp:Label ID="lbGiaSanPham" runat="server" Text="Label" CssClass="giaSanPham"></asp:Label>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>