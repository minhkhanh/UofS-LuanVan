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
    body {
        color: #333333;
        font-family: Arial;
        font-size: 12px;
        font-weight: normal;
        text-align: left;
    }    
/* Comment */
.comment_product{position:relative;width:730px}
.comment_product h3{background:url(../Images/icon_oval.jpg) left 2px no-repeat;margin-bottom:6px;padding-left:18px;color:#333;font-size:13px;font-weight:bold}
.list_comment_product{background:url(../Images/bg_full_description.jpg) left top repeat-x;margin-bottom:10px;padding-top:10px}
.comment_post{position:relative;width:auto;padding:8px 0;border-bottom:1px solid #eaeaea}
.comment_post .closeAll{position:absolute;right:5px;top:5px}
.comment_post .avatar_min{float:left;width:50px;height:50px;padding:1px;border:1px solid #e0e0e0}
.comment_post .info_comment{float:right;width:665px}
    .comment_post .info_comment h4
    {
        float:left;margin-right:10px;
        color:#2068ab;font-size:12px;font-weight:bold
    }
.comment_post .info_comment h4 a{color:#2068ab;font-size:12px;font-weight:bold}
.comment_post .info_comment h4.urself a{color:#c30827}
.comment_post .info_comment span.update_time{float:left;color:#666;font-size:11px}
.comment_post .info_comment p{clear:both;padding-top:5px;color:#333;font-size:12px;word-wrap:break-word} 
.post_comment{background:#e9f0f8;width:auto;padding:8px}
.post_comment #emoticon{position:relative;width:auto}
.post_comment #emoticon .e1{position:absolute;z-index:999;right:10px;top:10px;background:#fff;border:1px solid #ddd;text-align:left}
.post_comment #emoticon_lose{position:relative;width:auto}
.post_comment #emoticon_lose .e1{position:absolute;z-index:9;width:25px;height:25px;right:10px;top:10px;background:#f6f6f6;border:1px solid #ddd;text-align:left}
.post_comment .typing_row{width:100%;overflow:hidden}
.post_comment .typing_row .type_left{float:left;width:50px;height:50px;margin-top:2px;margin-right:6px;padding:1px;border:1px solid #ddd}
.post_comment .typing_row .type_right{float:right;padding:2px 0}
.post_comment .typing_row .type_right #txtComment{display:block;background:#fff;width:646px;margin-bottom:5px;padding:5px 0px 5px 5px;height:50px;color:#333;font-size:12px;font-family:Arial;border:1px solid #97b3cb;overflow:auto}
<%--.post_comment .typing_row .type_right #txtComment{float:right; color:#333;font-size:12px;font-family:Arial}--%>
.post_comment .typing_row .type_right #buttComment{width:80px;height:24px;background:url(../Images/b_comment.jpg) no-repeat;border:0;cursor:pointer} 
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
        position: relative;
        left: 150px;
        color: Red;
        height:inherit;
    }
</style>
<asp:ScriptManager ID="scriptManager" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="updateComment" runat="server">
    <ContentTemplate>
        <div class="comment_product">
            <h3>
                Bình luận</h3>
            <div class="list_comment_product">
                <div ID="listComment">
                    <asp:DataList ID="dataListComment" runat="server" 
                        OnItemDataBound="listComment_ItemDataBound" Width="730px">
                        <ItemTemplate>
                            <div class="comment_post clearfix">
                                <div class="avatar_min">
                                    <asp:Image ID="imgUser" runat="server" Height="60px" Width="50px" />
                                </div>
                                <div class="info_comment">
                                    <h4>
                                        <asp:Label ID="lbTenNguoiComment" runat="server" ForeColor="#3366FF" 
                                            Text="Label"></asp:Label>
                                    </h4>
                                    <span class="update_time">
                                    <asp:Label ID="lbThoiDiemComment" runat="server" Text="Label"></asp:Label>
                                    </span>
                                    <p>
                                        <asp:Label ID="lbComment" runat="server" Text="Label"></asp:Label>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <div class="post_comment">
                <asp:Panel ID="panelPost" runat="server">
                    <div class="typing_row">
                        <div class="type_left">
                            <asp:Image ID="imgAvatar" runat="server" Height="60px" Width="50px" />
                        </div>
                        <div class="type_right">
                            <asp:TextBox ID="txtComment" runat="server" ClientIDMode="Static" 
                                onkeypress="textcommentchange(event)" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="typing_row">
                        <div class="type_right">
                            <asp:Button ID="buttComment" runat="server" ClientIDMode="Static" 
                                Enabled="False" OnClick="buttComment_Click" Text="" />
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="panelReqLogin" runat="server">
                    <div ID="reqlogin">
                        đăng nhập để có thể bình luận cho sản phẩm!</div>
                </asp:Panel>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>

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
