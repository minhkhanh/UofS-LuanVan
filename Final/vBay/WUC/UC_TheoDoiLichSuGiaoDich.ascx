﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_TheoDoiLichSuGiaoDich.ascx.cs" Inherits="vBay.UC_TheoDoiLichSuGiaoDich" %>
<link href="../Styles/UC_TheoDoiLichSuGiaoDich.css" rel="stylesheet" type="text/css" />
<div id="MainDiv">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Chọn tên tài khoản: " 
        Font-Bold="True"></asp:Label>
    <asp:DropDownList ID="List_DanhSachTaiKhoan" runat="server" Height="20px" 
        Width="200px">
    </asp:DropDownList>
    <asp:Button ID="Button_Search" runat="server" Text="Search" 
        onclick="Button_Search_Click" UseSubmitBehavior="False" />
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Lịch sử giao dịch: " 
        Font-Bold="True"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
        Text="Tài khoản thực hiện giao dịch:"></asp:Label>
    <asp:TextBox ID="TextBox_TenTaiKhoan" runat="server" Height="20px" 
        Width="200px" ReadOnly="True"></asp:TextBox>
    <br />
    <center>
        <asp:GridView ID="GridView_LichSuGiaoDich" runat="server" AllowPaging="True" 
            BackColor="White" ForeColor="Black" HorizontalAlign="Center" Width="100%" 
            AutoGenerateColumns="False" PageSize="20">
            <Columns>
                <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm" 
                    InsertVisible="False" ReadOnly="True">
                <ControlStyle Width="37%" />
                </asp:BoundField>
                <asp:BoundField DataField="ThoiGianGiaoDich" HeaderText="Thời gian giao dịch" 
                    InsertVisible="False" ReadOnly="True">
                <ControlStyle Width="30%" />
                </asp:BoundField>
                <asp:BoundField DataField="GiaGiaoDich" HeaderText="Giá giao dịch" 
                    InsertVisible="False" ReadOnly="True">
                <ControlStyle Width="30%" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </center>
    <br />

</div>

