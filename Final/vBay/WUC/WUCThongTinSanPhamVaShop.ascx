﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCThongTinSanPhamVaShop.ascx.cs"
    Inherits="vBay.WUC.WUCThongTinSanPhamVaShop" %>

<script src="../Scripts/jquery-1.6.1.min.js" type="text/javascript"></script>

<style type="text/css">
    *
    {
        margin: 0;
        padding: 0;
    }
    .clear
    {
        clear: both;
    }
    .clearfix
    {
        display: block;

    }
    .clearfix::after
    {
        clear: both;
        content: ".";
        display: block;
        font-size: 0;
        height: 0;
        line-height: 0;
        visibility: hidden;
    }
    a
    {
        color: #084B8B;
        text-decoration: none;
        outline: 0;
    }
    div
    {
        display: block;
    }
    body
    {
        color: #333;
        font-size: 12px;
        font-family: Arial;
        font-weight: normal;
        text-align: left;
    }
    h1
    {
        font-family: Arial;
        font-size: 18px;
        font-weight: bold;
        margin: 0;
        padding: 0;
    }
    h3
    {
        font-family: Arial;
        font-size: 11px;
        font-weight: bold;
        margin: 0;
        padding: 0;
    }
    .detail_product
    {
        float: left;
        width: 730px;
        margin-bottom: 20px;
    }
    .detail_product .desc
    {
        float: right;
        width: 420px;
    }

    .detail_product .product_name
    {
        height: auto !important;
        margin: 0 0 10px 8px;
        padding: 10px 0 6px;
        line-height: 20px;
        color: #06C;
        font-size: 18px;
        font-weight: normal;
        letter-spacing: -0.1px;
        border-bottom: 1px solid #CDDBE7;
    }
    .detail_product .desc .option
    {
        display: block;
        background: url(../Images/line_dot3.jpg) 120px top repeat-y;
        height: 24px;
        line-height: 24px;
        color: #333;
        font-size: 12px;
    }
    .detail_product .desc .option .delta
    {
        margin-right: 5px;
    }
    .detail_product .desc .option .delta .txtGiaCaoHon
    {
        margin: 0px, 0px, 0px, 0px;
        text-align:center;
    }    
    .detail_product .desc .btn_order
    {
        display: block;
        background: url(../Images/btn_order.jpg) no-repeat;
        width: 116px;
        height: 32px;
        margin: 15px 8px 8px 32px;
        cursor: pointer;
        text-indent: -9999px;
    }
    .detail_product .desc .option span.label
    {
        display: inline;
        float: left;
        width: 120px;        
    }
    .detail_product .desc .option .ex
    {
        color: #06C;
        font-size: 14px;
        font-weight: bold;     
    }
    .detail_product .desc .option .exp
    {
        color: #06C;
        font-size: 14px;
        font-weight: bold;
        float: left;
        width: 115px;
        margin-left: 2px;
    }
    .summary_info
    {
        position: relative;
        z-index: 97;
        background: #DEEBF8;
        width: 320px;
        margin: 16px 0 0 8px;
        border: 1px solid #B4C2DD;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
    }
    .summary_info .summary_info_box
    {
        background: #EAEFF7 url(../Images/bg_summary_info.jpg) top left repeat-x;
        margin: 0;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
        color: #555;
        border: 1px solid white;
        font-size: 11px;
    }
    .summary_info h3
    {
        float: left;
        background: url(../Images/icon_myshop.1.0.2.gif) 5px 8px no-repeat;
        width: 125px;
        height: 22px;
        margin-bottom: 5px;
        line-height: 22px;
        padding-top: 5px;
        padding-left: 26px;
        color: #005C99;
        font-size: 12px;
        overflow: hidden;
    }
    .summary_info .summary_info_inside
    {
        background-color: white !important;
        margin: 4px 4px 6px;
        padding: 6px 8px 6px;
        -moz-border-radius: 4px;
        -webkit-border-radius: 4px;
        border: 1px solid #B4C2DD !important;
    }
    .summary_info span.label
    {
        display: block;
        float: left;
        width: 60px;
        margin: 0;
        color: #2769A7;
    }
    .summary_info span.info {
        display: block;
        height: 1%;
        left: auto;
        margin-left: 60px;
        position: relative;
        text-transform: capitalize;
        top: auto;
        vertical-align: top;
    }
    .detail_product .desc .note
    {
        display: inline;
        float: left;
        width: 350px;
        margin: 12px 0 0 4px;
        padding-left: 6px;
        color: #CA6A00;
        font-size: 11px;
        font-style: italic;
    }
    .full_description .full_description_inside
    {
        background: url(../Images/bg_full_description.jpg) left top repeat-x;
        padding: 10px;
        border: 1px solid #DBDBDB;
        border-top: 0;
        color: #333;
        font-size: 12px;
        overflow: hidden;
    }
    .full_description .full_description_inside p
    {
        margin: 10px 0;
    }
/* Detail */

.detail_product .wrapper_pic{float:left;width:306px}
.detail_product .pic{width:300px;height:300px;margin-bottom:10px;padding:2px;border:1px solid #e8e8e8;overflow:hidden}
.detail_product .pic #thumb_big{width:300px;height:300px}
.detail_product .pic #slideshow {
    position:relative;
    height:350px;
}

.detail_product .pic #slideshow IMG {
    position:absolute;
    top:0;
    left:0;
    z-index:8;
    opacity:0.0;
}

.detail_product .pic #slideshow IMG.active {
    z-index:10;
    opacity:1.0;
}

.detail_product .pic #slideshow IMG.last-active {
    z-index:9;
}
</style>
<div class="left_content_shop">
    <div class="detail_product">
        <div class="wrapper_pic">
            <div class="pic">
                <a id="slideshow">
                    <script type="text/javascript">
                        function slideSwitch() {
                            var $active = $('#slideshow IMG.active');

                            if ($active.length == 0) $active = $('#slideshow IMG:last');

                            // use this to pull the images in the order they appear in the markup
                            var $next = $active.next().length ? $active.next(): $('#slideshow IMG:first');
                            if ($next.attr('id') == $active.attr('id')) {
                                $next.css({ opacity: 1.0 });
                                return;
                            }
                            // uncomment the 3 lines below to pull the images in random order

                            // var $sibs  = $active.siblings();
                            // var rndNum = Math.floor(Math.random() * $sibs.length );
                            // var $next  = $( $sibs[ rndNum ] );


                            $active.addClass('last-active');

                            $next.css({ opacity: 0.0 })
                                .addClass('active')
                                .animate({ opacity: 1.0 }, 1000, function () {
                                    $active.removeClass('active last-active');
                                });
                            }

                        $(function () {
                            setInterval("slideSwitch()", 5000);
                        });
                    </script>
                    <asp:Repeater ID="repImages" runat="server" 
                    onitemdatabound="repImages_ItemDataBound">
                        <ItemTemplate>
                            <asp:Image ID="repImage" runat="server" Width="300" Height="300" />
                        </ItemTemplate>
                    </asp:Repeater>
                </a>
            </div>
        </div>

        <div class="desc">
            <h1 class="product_name">
                <asp:Label ID="lbTenSanPham" runat="server" Text="Test website dau gia"></asp:Label>
            </h1>
            <span class="option">
                <span class="label">Giá khởi đầu</span> 
                <strong class="price ex">
                    <asp:Label ID="lbGiaKhoiDau" runat="server" Text="0"></asp:Label>
                </strong>
            </span>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="5000">
                </asp:Timer>
            <span class="option">
                <span class="label">Giá hiện tại</span> 
                <strong class="price exp">
                    <asp:Label ID="lbGiaHienTai" runat="server" Text="0"></asp:Label>
                </strong>                
                <span class="delta">
                    <span class="dauCong">+</span>
                    <span class="txtGiaCaoHon">
                        <asp:TextBox ID="txtGiaCaoHon" runat="server" Text="1" Width="91px"></asp:TextBox>
                    </span>
                    <span class="validation">
                        <asp:RangeValidator ID="rangeValidation" runat="server" 
                ErrorMessage="&lt;img src='../Images/icon_oval.jpg'/&gt;" 
                ControlToValidate="txtGiaCaoHon" MinimumValue="1" 
                Type="Integer" MaximumValue="100000"></asp:RangeValidator>
                    </span>
                </span>
            </span>
            <span class="option">
                <span class="label">Số lần đặt giá</span> 
                <strong class="price ex">
                    <asp:Label ID="lbSoLanDatGia" runat="server" Text="0"></asp:Label>
                </strong>
            </span>
            <span class="option">
                <span class="label">Thời gian còn</span> 
                <strong class="price ex">
                <asp:Label ID="lbThoiGianCon" runat="server" Text="0"></asp:Label>
                </strong>
            </span>
            <span class="option">
                <span class="label">Người có sản phẩm</span> 
                <strong class="price ex">
                <asp:Label ID="lbHienDangCoSanPham" runat="server" Text="0"></asp:Label>
                </strong>
            </span>
            </ContentTemplate>
            </asp:UpdatePanel>
            <div class="clear">
            </div>
            <asp:Button ID="btn_checkout" runat="server" Text="" CssClass="btn_order" 
                ClientIDMode="Static" onclick="btn_checkout_Click" />
            <div class="summary_info">
                <div class="summary_info_box clearfix">
                    <h3>
                        Thông tin người bán
                    </h3>
                    <div class="summary_info_inside clear">
                        <p>
                            <span class="label">Họ tên:</span> 
                            <span class="info">
                                <strong>
                                    <asp:Label ID="lbHoTenNguoiBan" runat="server" Text="họ tên"></asp:Label>
                                </strong>
                            </span>
                        </p>
                        <p>
                            <span class="label">Điện thoại:</span> <span class="info">
                                <asp:Label ID="lbDienThoaiNguoiBan" runat="server" Text="điện thoại"></asp:Label>
                            </span>
                        </p>
                        <p>
                            <span class="label">Địa chỉ:</span> <span class="info">
                                <asp:Label ID="lbDiaChiNguoiBan" runat="server" Text="địa chỉ"></asp:Label><br/>
                            </span>
                        </p>
                        <p>
                            <span class="label">Điểm mua:</span> <span class="info">
                                <asp:Label ID="lbDiemMuaNguoiBan" runat="server" Text="địa chỉ"></asp:Label><br/>
                            </span>
                        </p>
                        <p>
                            <span class="label">Điểm bán:</span> <span class="info">
                                <asp:Label ID="lbDiemBanNguoiBan" runat="server" Text="địa chỉ"></asp:Label><br/>
                            </span>
                        </p>
                    </div>
                </div>
            </div>
            <p class="note">
                <strong>Chú ý:</strong> chúng tôi không chịu trách nhiệm về chất lượng sản phẩm.
                Vui lòng xem kỹ mô tả sản phẩm khi đặt mua.<br>
            </p>
        </div>
    </div>

    <div class="full_description clear">
        <h3>
            Mô tả chi tiết sản phẩm</h3>
        <div class="full_description_inside">
            <asp:Label ID="lbMoTaSanPham" runat="server" Text="mô tả sản phẩm"></asp:Label>
        </div>
    </div>
</div>
