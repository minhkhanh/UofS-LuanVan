<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="vBay.LienHe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style12
        {
            width: 97%;
            height: 167px;
        }
        .style13
        {
            font-size: x-large;
            background-color: #FFFFCC;
        }
        .style14
        {
            height: 19px;
            background-color: #FFFFCC;
        }
        .style15
        {
            font-size: large;
            background-color: #99FF99;
        }
        .style16
        {
            height: 19px;
            width: 184px;
            background-color: #FFFFCC;
        }
        .style17
        {
            width: 184px;
            background-color: #FFFFCC;
        }
        .style18
        {
            background-color: #99FF99;
        }
        .style19
        {
            width: 184px;
            background-color: #99FF99;
        }
        .style20
        {
            height: 19px;
            background-color: #99FF99;
        }
        .style21
        {
            height: 19px;
            width: 184px;
            background-color: #99FF99;
        }
        .style22
        {
            font-size: x-large;
            background-color: #99FF99;
        }
        .style23
        {
            background-color: #FFFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style12">
        <tr>
            <td class="style22" colspan="2" style="text-align: center">
                Liên Hệ</td>
        </tr>
        <tr>
            <td class="style15" colspan="2">
                Nhóm E4</td>
        </tr>
        <tr>
            <td class="style21">
                Trần Minh Khánh</td>
            <td class="style20">
                <a href="ymsgr:sendim?minhkhanhhaugiang"><img src="http://opi.yahoo.com/online?u=minhkhanhhaugiang&m=g&t=2" border=0/></a>
                </td>
        </tr>
        <tr>
            <td class="style19">
                Phạm Đăng Khoa</td>
            <td class="style18">
                <a href="ymsgr:sendim?onmyway133"><img src="http://opi.yahoo.com/online?u=onmyway133&m=g&t=2" border=0/></a>
                </td>
        </tr>
        <tr>
            <td class="style19">
                Nguyễn Đình Luyến</td>
            <td class="style18">
                <a href="ymsgr:sendim?nguyen_dinhluyen"><img src="http://opi.yahoo.com/online?u=nguyen_dinhluyen&m=g&t=2" border=0/></a>
                </td>
        </tr>
        <tr>
            <td class="style19">
                Nguyễn Anh Khôi</td>
            <td class="style18">
                <a href="ymsgr:sendim?khigianguyen"><img src="http://opi.yahoo.com/online?u=khigianguyen&m=g&t=2" border=0/></a>
                </td>
        </tr>
        <tr>
            <td class="style19">
                Trần Anh Khoa</td>
            <td class="style18">
                <a href="ymsgr:sendim?anhkhoahome"><img src="http://opi.yahoo.com/online?u=anhkhoahome&m=g&t=2" border=0/></a>
                </td>
        </tr>
    </table>

    <br />

    <table class="style12">
        <tr>
            <td class="style13" colspan="2" style="text-align: center">
                Gởi Thông Tin</td>
        </tr>
        <tr>
            <td class="style16">
                Họ tên</td>
            <td class="style14">
                <asp:TextBox ID="tbHoTen" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Điện thoại</td>
            <td class="style23">
                <asp:TextBox ID="tbSoDienThoai" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Email</td>
            <td class="style23">
                <asp:TextBox ID="tbEmail" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Nội dung</td>
            <td class="style23">
                <asp:TextBox ID="tbNoiDung" runat="server" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style23">
                <asp:Button ID="btGoiTin" runat="server" Text="Gởi tin" 
                    onclick="btGoiTin_Click" />
                <asp:Label ID="lbKetQua" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderGo" runat="server">
</asp:Content>
