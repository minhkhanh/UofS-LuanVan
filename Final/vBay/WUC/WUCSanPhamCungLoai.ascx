<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCSanPhamCungLoai.ascx.cs" Inherits="vBay.WUC.WUCSanPhamCungLoai" %>

<style type="text/css">
    body {
        color: #333333;
        font-family: Arial;
        font-size: 12px;
        font-weight: normal;
        text-align: left;
    }     

    /* relProduct */
    .relProduct
    {
        position:relative;
        width:730px;
        border:1px solid #c3d3f1;
    }
    .relProduct h3
    {
        background:url(../Images/icon_qsearch.png) left 7px no-repeat;
        margin-left:8px;
        padding-left:18px;
        height:26px;
        line-height:26px;
        color:#2b5cb3;
        font-size:12px;
        font-weight:bold;
        margin-bottom: 0px;
        margin-top: 0px;        
    }
    .relProduct_inside
    {
        background:#d3e0f7;
        border:1px solid #dfe8f9;
        margin-top: 0px;
    }
    .relProduct_inside_bdr
    {
        background:#fff;
        width:724px;
        height:200px;
        margin:4px 1px 1px 1px;
        border:1px solid #b4c8ed;
    }
    .relProduct_inside {width:730px}
    .relProduct_inside .product
    {
        float:left;
        background:url(../Images/line_dot3.jpg) right top repeat-y;
        width:140px;
        margin-top:16px;
        padding:0 19px 0 20px
    }
    .relProduct_inside .product .pic
    {
        float:left;
        background:url(../Images/bg_otherProduct.jpg) no-repeat;
        width:119px;
        height:119px;
        margin:0 0 7px;
        border:0
    }
    .relProduct_inside .product .pic a
    {
        display:block;
        position:relative;
        width:110px;
        height:110px;
        margin-top:3px;
        margin-left:3px;
        _overflow:hidden;
        word-wrap:break-word
    }
    .relProduct_inside .product .pic img
    {
        position:absolute;
        left:0;right:0;top:0;bottom:0;
        margin:auto;
        min-height:50px;
        min-width:50px;
        max-height:100%;
        max-width:100%;
        height:auto;
        -ms-interpolation-mode:bicubic
    }
    .relProduct_inside .product .product_name, .relProduct_inside .product .product_name a
    {
        position:relative;
        width:120px;height:30px;
        margin-bottom:2px;
        color:#333;
        font-size:12px;
        font-weight:normal;
        letter-spacing:0;
        overflow:hidden
    }
    .relProduct_inside .product .price
    {
        height:18px;
        margin:0;
        line-height:18px;
        color:#06c;
        font-size:12px;
        font-weight:bold;
        text-align:left
    } 
</style>
<div class="relProduct">
<div class="relProduct_inside">    
    <h3>Sản phẩm cùng loại</h3>
        <div class="relProduct_inside_bdr">        
            <asp:DataList ID="listSanPhamCungLoai" runat="server" 
                RepeatDirection="Horizontal" 
                onitemdatabound="listSanPhamCungLoai_ItemDataBound">
                <ItemTemplate>
                    <div class="product">
                        <div class="pic">                    
                            <asp:HyperLink ID="hypSanPham" runat="server" Width="110px" Height="110px"></asp:HyperLink>
                        </div>                
                        <div class="product_name">
                            <asp:HyperLink ID="hypTenSanPham" runat="server" >Ten san pham</asp:HyperLink>
                        </div>
                        <asp:Label ID="lbGiaSanPham" runat="server" Text="Label" CssClass="price"></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
</div>
</div>


<%--    .listSanPhamCungLoai
    {
        position:relative;
        width: 730px;
    }
    .listSanPhamCungLoai h3    
    {
        background:url(../Images/icon_oval.jpg) left 2px no-repeat;
        margin-bottom:6px;padding-left:18px;color:#333;font-size:13px;font-weight:bold;
    }
    .relProduct .sanPham
    {
        position:relative;
        width: 150px;
    }
    .relProduct .sanPham .picSanPham
    {
        margin-top: 2px;
        margin-left: 2px;        
    }  
    .relProduct .sanPham .picSanPham a img
    {
        width: 150px;
        height: 200px;    
    }         
    .relProduct .sanPham .motaSanPham
    {
        text-align: center;
        text-decoration: none;
    }     
    .relProduct .sanPham .giaSanPham
    {
        color: #960000;
    }--%>