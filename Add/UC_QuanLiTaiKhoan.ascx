<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_QuanLiTaiKhoan.ascx.cs" Inherits="vBay.UC_QuanLiTaiKhoan" %>
<link href="Styles/UC_QuanLiTaiKhoan.css" rel="stylesheet" type="text/css" />
<div id="QuanLiTaiKhoan_MainContent">
    <%-- Thông điệp tạm --%><%--<asp:Label ID="Label1" runat="server" Text="Trần Anh Khoa" ForeColor="White" BackColor="Black"></asp:Label>--%>    <%-- Nội dung chính --%>
    <center>
        <div id="QuanLiTaiKhoan_DanhSachTaiKhoanDiv">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Danh sách tài khoản:" 
            BackColor="Black" Font-Bold="True" ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="List_DanhSachTaiKhoan" runat="server" BackColor="White" 
                ForeColor="Black" Width="300px" AutoPostBack="True" 
                onselectedindexchanged="List_DanhSachTaiKhoan_SelectedIndexChanged">
            </asp:DropDownList>
        </div>     
        <br />     
        <div id="QuanLiTaiKhoan_StatusContent">           
            <asp:Label ID="Label1" runat="server" Text="Tình trạng tài khoản: " 
                BackColor="Black" Font-Bold="True" ForeColor="White"></asp:Label>            
            &nbsp;&nbsp;&nbsp;            
            <asp:CheckBox ID="CheckBox_Lock" runat="server" 
                Font-Bold="True" ForeColor="White" Text="Locked" 
                Width="150px" />
            <asp:Button ID="Button_Update" runat="server" BackColor="White" 
                Font-Bold="True" ForeColor="Black" Text="Update" Width="100px" 
                onclick="Button_Update_Click" />
        </div>
    </center>
    <br />
    
</div>

