<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCDangKy.ascx.cs" Inherits="vBay.WUCDangKy" %>
<%@ Register src="WUCDateSelect.ascx" tagname="WUCDateSelect" tagprefix="uc1" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<style type="text/css">
    .style4
    {
        width: 408px;
    }
    .style5
    {
        width: 128px;
    }
    .style6
    {
        width: 149px;
    }
    .style7
    {
        width: 531px;
    }
</style>
<asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
    oncreateduser="CreateUserWizard1_CreatedUser" 
    oncreatinguser="CreateUserWizard1_CreatingUser" Width="574px" 
    BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
    Font-Names="Verdana" Font-Size="1em" 
    CompleteSuccessText="Bạn vừa tạo tài khoản và đăng nhập thành công." 
    ContinueDestinationPageUrl="~/Default.aspx">
    <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        ForeColor="#284775" />
    <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        ForeColor="#284775" />
    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server">
            <ContentTemplate>
                <table style="width: 635px">
                    <tr>
                        <td align="center" colspan="2">
                            Đăng ký tài khoản mới&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Tên Đăng Nhập</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Mật Khẩu</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                AssociatedControlID="ConfirmPassword">Nhập lại Mật Khẩu</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                Display="Dynamic" 
                                ErrorMessage="*" 
                                ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="Email" ErrorMessage="*" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="CreateUserWizard1"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="lblFullname" runat="server" AssociatedControlID="txbFullname">Họ tên</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txbFullName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="lblFullname0" runat="server" AssociatedControlID="txbPhone">Điện thoại</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txbPhone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="lblDOB" runat="server" AssociatedControlID="DOBSelect">Ngày sinh</asp:Label>
                        </td>
                        <td class="style7">
                            <uc1:WUCDateSelect ID="DOBSelect" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="lblAddress" runat="server" AssociatedControlID="txbAddress">Địa chỉ</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txbAddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="lblCreaditCardId" runat="server" AssociatedControlID="txbCreditCardId">Mã Thẻ Tín Dụng</asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txbCreditCardId" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style6">
                            <asp:Label ID="lblSex" runat="server" 
                                AssociatedControlID="drlSex">Giới tính</asp:Label>
                        </td>
                        <td class="style7">
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
                        <td align="right" class="style6">
                            Captcha</td>
                        <td class="style7">
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
    <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
        Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
    <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
        ForeColor="#284775" />
    <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
    <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
        VerticalAlign="Top" />
    <StepStyle BorderWidth="0px" />
</asp:CreateUserWizard>

