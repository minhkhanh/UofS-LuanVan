<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_QuanLiTaiKhoan.ascx.cs" Inherits="vBay.UC_QuanLiTaiKhoan" %>
<link href="Styles/UC_QuanLiTaiKhoan.css" rel="stylesheet" type="text/css" />
<div id="QuanLiTaiKhoan_MainContent">
    <%-- Thông điệp tạm --%>    <%--<asp:Label ID="Label1" runat="server" Text="Trần Anh Khoa" ForeColor="White" BackColor="Black"></asp:Label>--%><%-- Nội dung chính --%>
    <br />
    <div id="QuanLiTaiKhoan_MainLockDiv">
        <center>
            <asp:Label ID="Label2" runat="server" Text="TIẾN HÀNH KHÓA TÀI KHOẢN" 
                Font-Bold="True" BackColor="Black" ForeColor="White" Font-Size="20px"></asp:Label>
            <br />
        </center>
        <asp:Label ID="Label3" runat="server" Text="Tên tài khoản cần khóa:" 
            Width="40%" BackColor="Black" ForeColor="White"></asp:Label>
        <asp:DropDownList ID="DropDownList_TenTaiKhoanCanKhoa" runat="server" 
            BackColor="White" DataTextField="TenTaiKhoan" DataValueField="MaTaiKhoan" 
            ForeColor="Black" Width="57%">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Thời hạn khóa:" Width="40%" 
            BackColor="Black" ForeColor="White"></asp:Label>
        <asp:DropDownList ID="DropDownList_ThoiHanKhoa" runat="server" 
            BackColor="White" ForeColor="Black" Width="50px">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Đơn vị:" BackColor="Black" 
            ForeColor="White"></asp:Label>
        <asp:DropDownList ID="DropDownList_DonViThoiGian" runat="server" 
            BackColor="White" ForeColor="Black" Width="70px">
            <asp:ListItem>Tuần</asp:ListItem>
            <asp:ListItem>Tháng</asp:ListItem>
            <asp:ListItem>Vĩnh viễn</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <center>
            <asp:Button ID="Button_Lock" runat="server" Text="Khóa tài khoản" 
                onclick="Button_Lock_Click" />
        </center>
    </div>
    <br />
    <div id="QuanLiTaiKhoan_LockedDiv">
        <center>
            <asp:Label ID="Label6" runat="server" 
                Text="DANH SÁCH CÁC TÀI KHOẢN ĐANG BỊ KHÓA" BackColor="Black" Font-Bold="True" 
                ForeColor="White" Font-Size="20px"></asp:Label>
            <br /><br />
            <asp:GridView ID="GridView_DanhSachTaiKhoanBiKhoa" runat="server" 
                AllowPaging="True" AutoGenerateColumns="False" BackColor="White" 
                ForeColor="Black" 
                onpageindexchanging="GridView_DanhSachTaiKhoanBiKhoa_PageIndexChanging" 
                Width="100%">
                <Columns>
                    <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên tài khoản" 
                        InsertVisible="False" ReadOnly="True">
                    <ControlStyle Width="65%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ThoiDiemUnlock" HeaderText="Thời hạn Unlock" 
                        InsertVisible="False" ReadOnly="True">
                    <ControlStyle Width="35%" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>            
        </center>
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text="Chọn tài khoản cần Unlock:" 
            BackColor="Black" Font-Bold="True" ForeColor="White" Width="40%"></asp:Label>
        <asp:DropDownList ID="DropDownList_DanhSachTaiKhoanLocked" runat="server" 
            BackColor="White" DataTextField="TenTaiKhoan" DataValueField="MaTaiKhoan" 
            ForeColor="Black" Width="57%">
        </asp:DropDownList>
        <br /><br />
        <center>
            <asp:Button ID="Button_Unlock" runat="server" Text="Unlock" 
                onclick="Button_Unlock_Click" />
        </center>
    </div>
</div>

