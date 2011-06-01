﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCDangNhapNhanh.ascx.cs" Inherits="vBay.WUCDangNhapNhanh" %>
<style type="text/css">

    .style3
    {
        width: 168px;
    }

    .style8
    {
        width: 105px;
    }
    .style9
    {
        width: 154px;
    }

    .style10
    {
        width: 169px;
    }

</style>

<div class="mm">
<asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        <asp:Login ID="Login1" runat="server" Width="425px">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;" >
                    <tr>
                        <td >
                            <table cellpadding="0">
                                <tr>
                                    <td align="right" class="style8">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td class="style10" >
                                        <asp:TextBox ID="UserName" runat="server" style="margin-left: 0px" TabIndex="1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                            ToolTip="User Name is required." ValidationGroup="ctl00$ctl02$Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="style3">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me?" TabIndex="3" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style8">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td class="style10" >
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" TabIndex="2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                            ToolTip="Password is required." ValidationGroup="ctl00$ctl02$Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="style3">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Sign In" 
                                            ValidationGroup="ctl00$ctl02$Login1" />
                                        <asp:Button ID="Button1" runat="server" Text="Sign up" 
                                            PostBackUrl="~/SigningUp.aspx"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" style="color:Red;">
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PasswordRecovering.aspx">Forget password?</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
    </AnonymousTemplate>
    <LoggedInTemplate>
        Welcome,
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserProfile.aspx">
            <asp:LoginName ID="LoginName1" runat="server" />
        </asp:HyperLink>
        
        .&nbsp;<asp:LoginStatus ID="LoginStatus1" runat="server" />
        &nbsp;
    </LoggedInTemplate>
</asp:LoginView>
</div>