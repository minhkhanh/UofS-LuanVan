<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCDangKy.ascx.cs" Inherits="vBay.WUCDangKy" %>
<%@ Register src="WUCDateSelect.ascx" tagname="WUCDateSelect" tagprefix="uc1" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<style type="text/css">
    .style3
    {
        width: 344px;
    }
</style>
<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
    oncreateduser="CreateUserWizard1_CreatedUser" 
    oncreatinguser="CreateUserWizard1_CreatingUser" Width="475px">
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server">
            <ContentTemplate>
                <table>
                    <tr>
                        <td align="center" colspan="2">
                            Sign Up for Your New Account</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                Display="Dynamic" 
                                ErrorMessage="*" 
                                ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="Email" ErrorMessage="*" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="CreateUserWizard1"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblFullname" runat="server" AssociatedControlID="txbFullname">Fullname:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txbFullName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblFullname0" runat="server" AssociatedControlID="txbPhone">Phone:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txbPhone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblDOB" runat="server" AssociatedControlID="DOBSelect">DOB:</asp:Label>
                        </td>
                        <td class="style3">
                            <uc1:WUCDateSelect ID="DOBSelect" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblAddress" runat="server" AssociatedControlID="txbAddress">Address:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txbAddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblCreaditCardId" runat="server" AssociatedControlID="txbCreditCardId">Credit Card Id:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:TextBox ID="txbCreditCardId" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="lblSex" runat="server" 
                                AssociatedControlID="drlSex">Sex:</asp:Label>
                        </td>
                        <td class="style3">
                            <asp:DropDownList ID="drlSex" runat="server" 
                                DataSourceID="LinqDataSource1" DataTextField="TenGioiTinh" 
                                DataValueField="MaGioiTinh">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                                ContextTypeName="vBay.DataEntityDataContext" EntityTypeName="" 
                                Select="new (TenGioiTinh, MaGioiTinh)" TableName="GioiTinhs">
                            </asp:LinqDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="Label1" runat="server" Text="Avatar:"></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Image ID="Image1" runat="server" Height="64px" Width="64px" GenerateEmptyAlternateText="True"
                                AlternateText="Avatar" />
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:CheckBox ID="ckbNoAvatar" runat="server" Text="No avatar" />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Up" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            Captcha</td>
                        <td class="style3">
                             <recaptcha:RecaptchaControl ID="recaptcha" runat="server" 
                                PublicKey = "6LfL-sQSAAAAAM6gzAinlkFKkNgew8Ph7D6uw6Z7"
                                PrivateKey = "6LfL-sQSAAAAAG06cvgXZfhQiOp3gYhbdVbFF439"/>
                            </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="color:Red;">
                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            <br />
                            <asp:Label ID="lblErrMess" runat="server" Text=""></asp:Label>
                            <!-- <asp:Literal ID="Literal1" runat="server"></asp:Literal> -->
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:CreateUserWizardStep>
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>

