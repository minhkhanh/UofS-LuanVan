<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_CapNhatThongTinTaiKhoan.ascx.cs" Inherits="vBay.UC_CapNhatThongTinTaiKhoan" %>
<link href="../Styles/UC_CapNhatThongTinCaNhan.css" rel="stylesheet" type="text/css" />
<div id="CapNhatThongTinCaNhan_MainContent">
    <br />
    <center>
        <div id="CapNhatThongTinCaNhan_DanhSachTaiKhoanDiv">
            <asp:Label ID="Label1" runat="server" Text="Danh sách tài khoản: " 
                Font-Bold="True"></asp:Label>
            <asp:DropDownList ID="List_DanhSachTaiKhoan" runat="server" AutoPostBack="True" 
                BackColor="White" ForeColor="Black" Height="20px" Width="300px" 
                onselectedindexchanged="List_DanhSachTaiKhoan_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <br /><br />
        <div id="CapNhatThongTinCaNhan_ThongTinTaiKhoanDiv">
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
                <asp:Label ID="Label4" runat="server" Text="Mật khẩu:" 
                    Font-Bold="True" Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_Pass" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="65%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Pass" runat="server" 
                    ControlToValidate="TextBox_Pass" ErrorMessage="RequiredFieldValidator" 
                    Font-Italic="True" ForeColor="Red" ValidationGroup="InfoValidation">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu:" 
                    Font-Bold="True" Width="30%" 
                    Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_RePass" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="65%"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator_RePass" runat="server" ControlToCompare="TextBox_Pass" 
                ControlToValidate="TextBox_RePass" ErrorMessage="Mật khẩu nhắc lại không khớp" 
                ForeColor="Red" Display="Dynamic" ValidationGroup="InfoValidation" 
                Font-Italic="True">*</asp:CompareValidator>
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
                <asp:Label ID="Label15" runat="server" Text="Mã thẻ tín dụng:" 
                    Font-Bold="True" Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_MaTheTinDung" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="10" Width="65%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_MaTheTinDung" 
                runat="server" ErrorMessage="Bạn chưa điền mã thẻ tín dụng" 
                ControlToValidate="TextBox_MaTheTinDung" Display="Dynamic" 
                ValidationGroup="InfoValidation" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label16" runat="server" Text="Email:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_Email" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="65%"></asp:TextBox>
                <br /><br />
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
