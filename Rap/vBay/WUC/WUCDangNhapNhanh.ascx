<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCDangNhapNhanh.ascx.cs"
    Inherits="vBay.WUCDangNhapNhanh" %>
<script type="text/javascript">

</script>
<asp:LoginView ID="QuickLoginView" runat="server" 
    onviewchanged="QuickLoginView_ViewChanged">
    <AnonymousTemplate>
        <div id="quicklogin">
            <asp:Login ID="Login1" runat="server" FailureText="Đăng nhập không thành công." 
                FailureAction="RedirectToLoginPage">
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Tên đăng nhập:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="ctl00$ctl00$Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật khẩu:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                ToolTip="Password is required." ValidationGroup="ctl00$ctl00$Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="1">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Ghi nhớ." />
                                        </td>
                                        <td align="right">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                                ValidationGroup="ctl00$ctl00$Login1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </AnonymousTemplate>
    <LoggedInTemplate>
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
    	<tr>
    		<td>
            <asp:HyperLink ID="HyperLink1" runat="Server" NavigateUrl="~/UserProfile.aspx">Thông tin tài khoản</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ThongKePhienDauGiaUser.aspx">Lịch sử giao dịch</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
            
            </td>
    	</tr>
    </table>
        
    </LoggedInTemplate>
</asp:LoginView>
