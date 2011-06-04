<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCThongTinSanPhamVaShop.ascx.cs"
    Inherits="vBay.WUC.WUCThongTinSanPhamVaShop" %>
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
        zoom: 1;
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
    .left_content_shop
    {
        float: left;
        width: 730px;
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
    #wrapper .product_name
    {
        height: 28px;
        text-transform: lowercase;
        word-wrap: break-word;
        overflow: hidden;
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
    .detail_product .desc a.btn_order
    {
        display: block;
        background: url(../Images/btn_order.jpg) no-repeat;
        width: 116px;
        height: 32px;
        margin: 0 0 0 8px;
        cursor: pointer;
        text-indent: -9999px;
    }
    .detail_product .desc .option span.label
    {
        display: inline;
        float: left;
        width: 120px;
        margin-left: 8px;
    }
    .detail_product .desc .option .ex
    {
        color: #06C;
        font-size: 14px;
        font-weight: bold;
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
</style>
<div class="left_content_shop">
    <div class="detail_product">
        <div class="desc">
            <h1 class="product_name">
                <asp:Label ID="lbTenSanPham" runat="server" Text="Test website dau gia"></asp:Label>
            </h1>
            <span class="option"><span class="label">Giá khởi đầu</span> <strong class="price ex">
                <asp:Label ID="lbGiaKhoiDau" runat="server" Text="0"></asp:Label>
            </strong></span><span class="option"><span class="label">Giá hiện tại</span> <strong
                class="price ex">
                <asp:Label ID="lbGiaHienTai" runat="server" Text="0"></asp:Label>
            </strong></span><span class="option"><span class="label">Số lần đặt giá</span> <strong
                class="price ex">
                <asp:Label ID="lbSoLanDatGia" runat="server" Text="0"></asp:Label>
            </strong></span><span class="option"><span class="label">Thời gian còn</span> <strong
                class="price ex">
                <asp:Label ID="lbThoiGianCon" runat="server" Text="0"></asp:Label>
            </strong></span>
            <div class="clear">
            </div>
            <a rel="nofollow" id="btn_checkout" class="btn_order" style="cursor: pointer" target="_self"
                href="?flag=1">Đặt mua</a>
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
    <!--detail product-->
    <div class="full_description clear">
        <h3>
            Mô tả chi tiết sản phẩm</h3>
        <div class="full_description_inside">
            <asp:Label ID="lbMoTaSanPham" runat="server" Text="mô tả sản phẩm"></asp:Label>
        </div>
    </div>
</div>
