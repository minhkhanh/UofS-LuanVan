<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCBinhLuanSanPham.ascx.cs"
    Inherits="vBay.WUC.WUCBinhLuanSanPham" %>
<style type="text/css">
    .style1
    {
        width: 99%;
        height: 100px;
        height:inherit;
    }
    
    h4
    {
        display: block;
        -webkit-margin-before: 1.33em;
        -webkit-margin-after: 1.33em;
        -webkit-margin-start: 0px;
        -webkit-margin-end: 0px;
        font-weight: bold;
        height:inherit;
    }
    /* Comment */
    
    .comment_product
    {
        position: relative;
        width: 730px;
        top: 0px;
        left: 0px;
        height: 459px;
        height: inherit;
    }
    
    .comment_product h3
    {
        background: url(./Images/icon_oval.jpg) left 2px no-repeat;
        margin-bottom: 6px;
        padding-left: 18px;
        color: #333;
        font-size: 13px;
        font-weight: bold;
        height:inherit;
    }
    
    .list_comment_product
    {
        background: url(./Images/bg_full_description.jpg) left top repeat-x;
        margin-bottom: 10px;
        padding-top: 10px;
        height:inherit;
    }
    
    .comment_post
    {
        position: relative;
        width: auto;
        padding: 8px 0;
        border-bottom: 1px solid #eaeaea;
        height:inherit;
    }
    
    .comment_post .closeAll
    {
        position: absolute;
        right: 5px;
        top: 5px;
        height:inherit;
    }
    
    .avatar_min
    {
        position: absolute;
        top: 5px;
        left: 5px;
        height:inherit;
    }
    
    .comment_post .info_comment
    {
        float: right;
        width: 665px;
        height:inherit;
    }  
    
    
    .style2
    {
        width: 100%;
        height: 77px;
        height:inherit;
    }
    .style3
    {
        width: 50px;
        height:inherit;
    }
    .style4
    {
        width: 568px;
        height:inherit;
    }
    
    #reqlogin
    {
        position: absolute;
        left: 150px;
        color: Red;
        height:inherit;
    }
</style>
<div class="comment_product">
    <h3>
        Bình luận</h3>
    <div class="list_comment_product">
        <asp:DataList ID="dataListComment" runat="server" OnItemDataBound="listComment_ItemDataBound"
            Width="717px">
            <ItemTemplate>
                <div class="comment_post" style="height: inherit">
                    <table class="style1">
                        <tr>
                            <td rowspan="2" width="50">
                                <asp:Image ID="imgUser" runat="server" Height="60px" Width="50px" CssClass="avatar_min" />
                            </td>
                            <td height="25" width="160">
                                <asp:Label ID="lbTenNguoiComment" runat="server" ForeColor="#3366FF" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbThoiDiemComment" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbComment" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="post_comment">
        <asp:Panel ID="panelPost" runat="server">
            <table class="style2">
                <tr>
                    <td align="char" class="style3">
                        <asp:Image ID="imgAvatar" runat="server" Height="60px" Width="50px" />
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txtComment" runat="server" Height="61px" Width="566px" TextMode="MultiLine"
                            onkeypress="textcommentchange(event)" ClientIDMode="Static"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="buttComment" runat="server" Text="Bình luận" ClientIDMode="Static"
                            OnClick="buttComment_Click" Enabled="False" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="panelReqLogin" runat="server">
            <div id="reqlogin">
                đăng nhập để có thể bình luận cho sản phẩm!</div>
        </asp:Panel>
    </div>
</div>
<script type="text/javascript">
    function textcommentchange(event) {
        if (document.getElementById("txtComment").value == "") {
            document.getElementById("buttComment").disabled = true;
        } else {
            document.getElementById("buttComment").disabled = false;
        }

        //alert(document.getElementById("txtComment").value);        
    }
</script>
