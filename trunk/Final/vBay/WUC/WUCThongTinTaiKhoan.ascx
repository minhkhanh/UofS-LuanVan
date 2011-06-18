<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCThongTinTaiKhoan.ascx.cs"
    Inherits="vBay.ThongTinTaiKhoan" %>
<%@ Register Src="WUCDateSelect.ascx" TagName="WUCDateSelect" TagPrefix="uc1" %>
<table border="0" cellspacing="0" cellpadding="0" style="width: 53%">
    <tr>
        <td align="right">
            Username:
        </td>
        <td>
            <asp:TextBox ID="txbUsername" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Email:
        </td>
        <td align="left">
            <asp:TextBox ID="txbEmail" runat="server" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Fullname:
        </td>
        <td align="left">
            <asp:TextBox ID="txbFullname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Address:
        </td>
        <td align="left">
            <asp:TextBox ID="txbAddress" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            DOB:
        </td>
        <td align="left">
            <uc1:WUCDateSelect ID="WUCDateSelect1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="right">
            Credit Card Id:
        </td>
        <td align="left">
            <asp:TextBox ID="txbCreditCardId" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
            Phone Number:
        </td>
        <td align="left">
            <asp:TextBox ID="txbPhoneNumber" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="color: Red;">
            <asp:Label ID="lblMyErrMess" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnOK" runat="server" Text="Confirm" OnClick="btnOK_Click" />
        </td>
    </tr>
</table>

<p>
    &nbsp;</p>

<asp:ChangePassword ID="ChangePassword1" runat="server">
    <ChangePasswordTemplate>
        <table cellpadding="1" cellspacing="0" style="border-collapse: collapse;">
            <tr>
                <td>
                    <table cellpadding="0">
                        <tr>
                            <td align="left" colspan="2">
                                Password Changing</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ctl00$ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                    ErrorMessage="New Password is required." ToolTip="New Password is required."
                                    ValidationGroup="ctl00$ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                    ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required."
                                    ValidationGroup="ctl00$ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                    ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
                                    ValidationGroup="ctl00$ChangePassword1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: Red;">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword"
                                    Text="Change Password" ValidationGroup="ctl00$ChangePassword1" />
                            </td>
                            <td>
                                <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel"
                                    Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ChangePasswordTemplate>
</asp:ChangePassword>
