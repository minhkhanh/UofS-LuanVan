<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_CapNhatThongTinTaiKhoan.ascx.cs" Inherits="vBay.UC_CapNhatThongTinTaiKhoan" %>
<link href="Styles/UC_CapNhatThongTinCaNhan.css" rel="stylesheet" type="text/css" />
<div id="CapNhatThongTinCaNhan_MainContent">
    <br />
    <center>
        <div id="CapNhatThongTinCaNhan_DanhSachTaiKhoanDiv">
            <asp:Label ID="Label1" runat="server" Text="Danh sách tài khoản: " Font-Bold="True" ForeColor="White" BackColor="Black"></asp:Label>
            <asp:DropDownList ID="List_DanhSachTaiKhoan" runat="server" AutoPostBack="True" 
                BackColor="White" ForeColor="Black" Height="20px" Width="300px" 
                onselectedindexchanged="List_DanhSachTaiKhoan_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <br /><br />
        <div id="CapNhatThongTinCaNhan_ThongTinTaiKhoanDiv">
            <asp:Label ID="Label2" runat="server" Text="THÔNG TIN TÀI KHOẢN" 
                BackColor="Black" Font-Bold="True" Font-Size="20px" ForeColor="White"></asp:Label>
                <br />
            <div id="CapNhatThongTinCaNhan_ThongTinTaiKhoanContent">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Tên tài khoản:" Width="30%" 
                    BackColor="Black" Font-Bold="True" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_TenTaiKhoan" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="68%" ReadOnly="True" 
                    Enabled="False"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Mật khẩu:" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_Pass" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="68%" 
                    TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Nhập lại mật khẩu:" 
                    BackColor="Black" Font-Bold="True" ForeColor="White" Width="30%" 
                    Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_RePass" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="68%" 
                    TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Họ tên:" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_HoTen" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="68%"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Ngày sinh:" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_NgaySinh" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="30%" Enabled="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Text="Giới tính:" BackColor="Black" 
                    Font-Bold="True" ForeColor="White" Width="15%"></asp:Label>
                <asp:DropDownList ID="DropDownList_GioiTinh" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" Width="18%">
                </asp:DropDownList>
                <center>
                    <asp:Calendar ID="Calendar_NgaySinh" runat="server" BackColor="White" 
                        FirstDayOfWeek="Monday" ForeColor="Black" NextPrevFormat="FullMonth" 
                        Font-Size="13px" onselectionchanged="Calendar_NgaySinh_SelectionChanged" 
                        Width="150px" Height="100px">
                        <SelectedDayStyle BackColor="Blue" ForeColor="White" />
                        <TodayDayStyle BorderColor="Red" BorderStyle="Solid" BorderWidth="2px" />
                        <WeekendDayStyle BackColor="#FFFF66" />
                    </asp:Calendar>
                </center>
                <asp:Label ID="Label12" runat="server" Text="Địa chỉ:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_DiaChi" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="68%"></asp:TextBox>
                <br />
                <asp:Label ID="Label13" runat="server" Text="Số điện thoại:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_SoDienThoai" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="68%"></asp:TextBox>
                <br />
                <asp:Label ID="Label15" runat="server" Text="Mã thẻ tín dụng:" 
                    Font-Bold="True" Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_MaTheTinDung" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="10" Width="68%"></asp:TextBox>
                <br />
                <asp:Label ID="Label16" runat="server" Text="Email:" Font-Bold="True" 
                    Width="30%" Enabled="False"></asp:Label>
                <asp:TextBox ID="TextBox_Email" runat="server" BackColor="White" 
                    ForeColor="Black" Height="20px" MaxLength="50" Width="68%"></asp:TextBox>
                <br /><br />
            </div>
            <asp:CompareValidator ID="CompareValidator_RePass" runat="server" 
                BackColor="Black" ControlToCompare="TextBox_Pass" 
                ControlToValidate="TextBox_RePass" ErrorMessage="Mật khẩu nhắc lại không khớp" 
                ForeColor="White" Display="Dynamic" ValidationGroup="InfoValidation">Mật khẩu nhắc lại không khớp</asp:CompareValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_MaTheTinDung" 
                runat="server" ErrorMessage="Bạn chưa điền mã thẻ tín dụng" 
                ControlToValidate="TextBox_MaTheTinDung" Display="Dynamic" 
                ValidationGroup="InfoValidation">Bạn chưa điền mã thẻ tín dụng</asp:RequiredFieldValidator>
            <br />
            <asp:RangeValidator ID="RangeValidator_NgaySinh" runat="server" 
                ErrorMessage="Ngày sinh nhập không hợp lệ" 
                ControlToValidate="TextBox_NgaySinh" Display="Dynamic" 
                ValidationGroup="InfoValidation"></asp:RangeValidator>
            <br />
            <asp:Button ID="Button_Update" runat="server" Text="Save" BackColor="White" 
                Height="20px" Width="50px" onclick="Button_Update_Click" 
                ValidationGroup="InfoValidation" />
        </div>
    </center>
</div>
