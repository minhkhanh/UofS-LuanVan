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
.comment_product h3{background:url(./Images/icon_oval.jpg) left 2px no-repeat;margin-bottom:6px;padding-left:18px;color:#333;font-size:13px;font-weight:bold}
.list_comment_product{background:url(./Images/bg_full_description.jpg) left top repeat-x;margin-bottom:10px;padding-top:10px}
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
.post_comment .typing_row .type_right #buttComment{width:80px;height:24px;background:url(./Images/b_comment.jpg) no-repeat;border:0;cursor:pointer} 
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
    <div id="listComment">
        <asp:DataList ID="dataListComment" runat="server" OnItemDataBound="listComment_ItemDataBound"
            Width="730px">
            <ItemTemplate>
                <div class="comment_post clearfix" >
                    <div class="avatar_min">
                        <asp:Image ID="imgUser" runat="server" Height="60px" Width="50px"  />
                    </div>
                    <div class="info_comment">
                        <h4>
                            <asp:Label ID="lbTenNguoiComment" runat="server" ForeColor="#3366FF" Text="Label"></asp:Label>
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
<%--            <div style="display: none;" id="emoticon">
                <div class="e1">
                    <table cellspacing="0" cellpadding="0" border="0" width="450">
                        <tbody>
                            <tr>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':)');" src="http://img.me.zdn.vn/images/smilley/default/1.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':~');" src="http://img.me.zdn.vn/images/smilley/default/2.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':b');" src="http://img.me.zdn.vn/images/smilley/default/3.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':|');" src="http://img.me.zdn.vn/images/smilley/default/4.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg('8-)');" src="http://img.me.zdn.vn/images/smilley/default/5.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':-((');" src="http://img.me.zdn.vn/images/smilley/default/6.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':$');" src="http://img.me.zdn.vn/images/smilley/default/7.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':x');" src="http://img.me.zdn.vn/images/smilley/default/8.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':z');" src="http://img.me.zdn.vn/images/smilley/default/9.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':((');" src="http://img.me.zdn.vn/images/smilley/default/10.gif"></td>
                                <td align="right" valign="middle" rowspan="4"><img onclick="emoticon_close()" style="cursor: pointer;" src="http://static.123mua.vn/c/images/emoticon_bar_close.gif"></td>
                            </tr>
                            <tr>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':-|');" src="http://img.me.zdn.vn/images/smilley/default/11.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':@');" src="http://img.me.zdn.vn/images/smilley/default/12.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':p');" src="http://img.me.zdn.vn/images/smilley/default/13.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':d');" src="http://img.me.zdn.vn/images/smilley/default/14.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':o');" src="http://img.me.zdn.vn/images/smilley/default/15.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':(');" src="http://img.me.zdn.vn/images/smilley/default/16.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg('--b');" src="http://img.me.zdn.vn/images/smilley/default/18.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':q');" src="http://img.me.zdn.vn/images/smilley/default/19.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':t');" src="http://img.me.zdn.vn/images/smilley/default/20.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';xx');" src="http://img.me.zdn.vn/images/smilley/default/39.gif"></td>
                            </tr>
                            <tr>

                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';p');" src="http://img.me.zdn.vn/images/smilley/default/21.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';-d');" src="http://img.me.zdn.vn/images/smilley/default/22.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';d');" src="http://img.me.zdn.vn/images/smilley/default/23.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';o');" src="http://img.me.zdn.vn/images/smilley/default/24.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';g');" src="http://img.me.zdn.vn/images/smilley/default/25.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg('|-)');" src="http://img.me.zdn.vn/images/smilley/default/26.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':!');" src="http://img.me.zdn.vn/images/smilley/default/27.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':l');" src="http://img.me.zdn.vn/images/smilley/default/28.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':&gt;');" src="http://img.me.zdn.vn/images/smilley/default/29.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(':;');" src="http://img.me.zdn.vn/images/smilley/default/30.gif"></td>
                            </tr>
                            <tr>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';f');" src="http://img.me.zdn.vn/images/smilley/default/31.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';-s');" src="http://img.me.zdn.vn/images/smilley/default/32.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';?');" src="http://img.me.zdn.vn/images/smilley/default/33.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';-x');" src="http://img.me.zdn.vn/images/smilley/default/34.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';@');" src="http://img.me.zdn.vn/images/smilley/default/35.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';8');" src="http://img.me.zdn.vn/images/smilley/default/36.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';!');" src="http://img.me.zdn.vn/images/smilley/default/37.gif"></td>
                                <td><img style="cursor: pointer;" onclick="emoticon_msg(';-!');" src="http://img.me.zdn.vn/images/smilley/default/38.gif"></td>

                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div style="display: block;" id="emoticon_lose">
                <div class="e1">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tbody>
                            <tr>
                                <td><img style="cursor: pointer;" onclick="emoticon_open()" src="http://img.me.zdn.vn/images/smilley/default/1.jpg" alt=":)"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <form id="from_interaction_comment_zCommentID" onsubmit="return false;" method="post" name="from_interaction_comment_zCommentID">
            </form>--%>
            <div class="typing_row">
                <div class="type_left">
                    <asp:Image ID="imgAvatar" runat="server" Height="60px" Width="50px" />
                </div>
                <div class="type_right">
                    <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"
                            onkeypress="textcommentchange(event)" ClientIDMode="Static"></asp:TextBox>
                </div>
                <div class="clear"></div>
            </div>
            <div class="typing_row">
                <div class="type_right">
                    <asp:Button ID="buttComment" runat="server" Text="" ClientIDMode="Static"
                            OnClick="buttComment_Click" Enabled="False" />
                </div>
                <div class="clear"></div>
            </div>
<%--            <table class="style2">
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
            </table>--%>
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
