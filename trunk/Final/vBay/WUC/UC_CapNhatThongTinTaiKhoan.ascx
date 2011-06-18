<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_CapNhatThongTinTaiKhoan.ascx.cs" Inherits="vBay.UC_CapNhatThongTinTaiKhoan" %>
<link href="../Styles/UC_CapNhatThongTinCaNhan.css" rel="stylesheet" type="text/css" />
<div id="CapNhatThongTinCaNhan_MainContent">
    <br />
    <center>
        <div id="CapNhatThongTinCaNhan_ThongTinTaiKhoanDiv">
            <br />
            <asp:Label ID="Label2" runat="server" Text="THÔNG TIN TÀI KHOẢN" 
                Font-Bold="True" Font-Size="20px"></asp:Label>
                <br />
            <div id="CapNhatThongTinCaNhan_ThongTinTaiKhoanContent">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Tên tài khoản:" Width="30%" 
                    Font-Bold="True" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_TenTaiKhoan" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="65%" ReadOnly="True" 
                    Enabled="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Họ tên:" 
                    Font-Bold="True" Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_HoTen" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="35%"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Text="Giới tính:" 
                    Font-Bold="True" Width="10%"></asp:Label>
                <asp:DropDownList ID="DropDownList_GioiTinh" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" Width="16%">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Ngày sinh:" 
                    Font-Bold="True" Width="30%" Enabled="False"></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="Ngày" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DropDownList_Date" runat="server" Width="60px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="tháng"></asp:Label>
                <asp:DropDownList ID="DropDownList_Month" runat="server" Width="60px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="năm"></asp:Label>
                <asp:DropDownList ID="DropDownList_Year" runat="server" Width="70px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:CustomValidator ID="Validation_NgaySinh" runat="server" 
                    ErrorMessage="Ngày sinh không hợp lệ" Font-Italic="True" ForeColor="Red" 
                    ValidationGroup="InfoValidation" ControlToValidate="DropDownList_Date" 
                    EnableClientScript="False" 
                    onservervalidate="Validation_NgaySinh_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                <br />
                <asp:Label ID="Label12" runat="server" Text="Địa chỉ:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_DiaChi" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="65%"></asp:TextBox>
                <br />
                <asp:Label ID="Label13" runat="server" Text="Số điện thoại:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_SoDienThoai" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="65%"></asp:TextBox>
                <br />
                <asp:Label ID="Label16" runat="server" Text="Email:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_Email" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="65%"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Avatar:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                        <asp:Image ID="AvatarImg" runat="server" AlternateText="Avatar" 
                            GenerateEmptyAlternateText="True" Height="64px" Width="64px" 
                    ImageUrl="~/Avatars/AvatarDefaul.jpg" />
                        <asp:FileUpload ID="AvatarUploadCtrl" runat="server" />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="Upload" 
                            onclick="Button1_Click1" />
                        <asp:CheckBox ID="ckbNoAvatar" runat="server" Text="No avatar" />
                <br />
            </div>
            <br />
            <div id="CapNhatThongTinCaNhan_ThongTinTheTinDung">
            <p align="left">
            Sau đây là phần nội dung bắt buộc:
            </p>
                <center>
                    <asp:Label ID="Label8" runat="server" Text="THÔNG TIN THẺ TÍN DỤNG" 
                        Font-Bold="True" Font-Size="20px"></asp:Label>
                    <br />
                </center>
                <asp:Label ID="Label9" runat="server" Text="First name:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_FirstName" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_FirstName" runat="server" 
                    ErrorMessage="Bạn chưa điền thông tin First name" 
                    ControlToValidate="TextBox_FirstName" ForeColor="Red" 
                    ValidationGroup="InfoValidation" EnableClientScript="False">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Last name:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_LastName" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_LastName" runat="server" 
                    ErrorMessage="Bạn chưa điền thông tin Last name" 
                    ControlToValidate="TextBox_LastName" ForeColor="Red" 
                    EnableClientScript="False">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Address:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_Address" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Address" runat="server" 
                    ControlToValidate="TextBox_Address" 
                    ErrorMessage="Bạn chưa điền thông tin Address" ForeColor="Red" 
                    ValidationGroup="InfoValidation" EnableClientScript="False">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label20" runat="server" Text="Country:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_Country" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Country" runat="server" 
                    ErrorMessage="Bạn chưa điền thông tin Country" 
                    ControlToValidate="TextBox_Country" ForeColor="Red" 
                    ValidationGroup="InfoValidation" EnableClientScript="False">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label15" runat="server" Text="State:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_State" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_State" runat="server" 
                    ControlToValidate="TextBox_State" ErrorMessage="Bạn chưa điền thông tin State" 
                    ForeColor="Red" ValidationGroup="InfoValidation" 
                    EnableClientScript="False">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label21" runat="server" Text="Zip code" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_ZipCode" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_ZipCode" runat="server" 
                    ControlToValidate="TextBox_ZipCode" 
                    ErrorMessage="Bạn chưa điền thông tin Zipcode" ForeColor="Red" 
                    ValidationGroup="InfoValdidation" EnableClientScript="False">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label22" runat="server" Text="Card type:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_CardType" runat="server" Width="65%" Enabled="False" 
                    ReadOnly="True">Visa</asp:TextBox>
                <br />
                <asp:Label ID="Label23" runat="server" Text="Card number:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_CardNumber" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_CardNumber" runat="server" 
                    ControlToValidate="TextBox_CardNumber" 
                    ErrorMessage="Bạn chưa điền thông tin Card number" ForeColor="Red" 
                    ValidationGroup="InfoValidation" EnableClientScript="False">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label24" runat="server" Text="Expried time:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:Label ID="Label25" runat="server" Text="Month" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList_ExpiredMonth" runat="server" Width="70px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label26" runat="server" Text="Year" Font-Bold="True"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList_ExpiredYear" runat="server" Width="70px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:CustomValidator ID="CustomValidator_ExpiredTime" runat="server" 
                    ControlToValidate="DropDownList_ExpiredMonth" 
                    ErrorMessage="Thông tin Expired time không hợp lệ" ForeColor="Red" 
                    ValidationGroup="InfoValidation" 
                    onservervalidate="CustomValidator_ExpiredTime_ServerValidate" 
                    EnableClientScript="False">*</asp:CustomValidator>
                <br />
                <asp:Label ID="Label27" runat="server" Text="CVV2:" Font-Bold="True" 
                    Width="30%"></asp:Label>
                <asp:TextBox ID="TextBox_CVV2" runat="server" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_CVV2" runat="server" 
                    ControlToValidate="TextBox_CVV2" ErrorMessage="Bạn chưa điền thông tin CVV2" 
                    ForeColor="Red" ValidationGroup="InfoValidation" 
                    EnableClientScript="False">*</asp:RequiredFieldValidator>
            </div>
            <asp:ValidationSummary ID="ValidationSummary" runat="server" Font-Italic="True" 
                ForeColor="Red" ValidationGroup="InfoValidation" />
            <br />
            <asp:Button ID="Button_Update" runat="server" Text="Save" BackColor="White" 
                Height="20px" Width="50px" OnClick="Button_Update_Click" 
                ValidationGroup="InfoValidation" />
        </div>
    </center>
</div>
