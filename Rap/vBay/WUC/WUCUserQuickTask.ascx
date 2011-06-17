<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCUserQuickTask.ascx.cs"
    Inherits="vBay.WUCUserQuickTask" %>
<script type="text/javascript">

    var countlnkLoginClick = 0;

    function lnkLogin_click() {

        if (countlnkLoginClick % 2 == 0)
            $('.loginbar').slideDown();
        else
            $('.loginbar').slideUp();

        ++countlnkLoginClick;
    }

</script>
<asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/SigningUp.aspx" runat="server">Đăng ký</asp:HyperLink>.
        <asp:HyperLink ID="lnkLogin" onclick="lnkLogin_click()" runat="server">Đăng nhập</asp:HyperLink>
    </AnonymousTemplate>
    <LoggedInTemplate>
        <table border="0" cellspacing="0" cellpadding="0" width="100%">
            <tr>
                <td align="left">
                    
                </td>
                <td align="right">
                    Chào,
                    <asp:LoginView ID="LoginView2" runat="server">
                        <LoggedInTemplate>
                            <asp:LoginName ID="LoginName2" runat="server" />
                        </LoggedInTemplate>
                        <RoleGroups>
                            <asp:RoleGroup Roles="Member">
                                <ContentTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" onclick="lnkLogin_click()">
                                        <asp:LoginName ID="LoginName1" runat="server" />
                                    </asp:HyperLink>,
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
                    .
                    <asp:LoginStatus ID="LoginStatus1" runat="server" 
                        LogoutPageUrl="~/Default.aspx" />
                    .
                </td>
            </tr>
        </table>
    </LoggedInTemplate>
</asp:LoginView>
