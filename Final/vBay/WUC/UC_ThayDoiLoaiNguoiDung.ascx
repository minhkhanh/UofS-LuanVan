<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_ThayDoiLoaiNguoiDung.ascx.cs" Inherits="vBay.WUC.UC_ThayDoiLoaiNguoiDung" %>
<div id="ThayDoiLoaiNguoiDung_MainDiv">
    <center>
        <asp:Label ID="Label1" runat="server" Text="THAY ĐỔI LOẠI NGƯỜI DÙNG" 
            Font-Bold="True" Font-Size="24px" ForeColor="Red"></asp:Label>
    </center>
    <center>
    <table>
    <tr>
        <td>
        <asp:Label ID="Label2" runat="server" Text="Tên tài khoản:" Font-Bold="True" 
        ForeColor="Black"></asp:Label>
        </td>
        <td>
        Quyền
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AutoGenerateSelectButton="True" DataSourceID="LinqDataSource2" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        onselectedindexchanging="GridView1_SelectedIndexChanging">
        <Columns>
        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" 
                SortExpression="UserName" />
                </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        ContextTypeName="vBay.DataEntityDataContext" EntityTypeName="" 
        Select="new (UserName)" TableName="aspnet_Users">
    </asp:LinqDataSource>
        </td>
        <td valign="top" align="center">
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="LinqDataSource1" 
            DataTextField="RoleName" DataValueField="RoleName">
    </asp:CheckBoxList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="vBay.DataEntityDataContext" EntityTypeName="" 
            Select="new (RoleName)" TableName="aspnet_Roles">
        </asp:LinqDataSource>
        </td>
    </tr>
    </table>
    </center>
    <center>
        <asp:Label ID="Label_ThayDoiLoaiTaiKhoanThanhCong" runat="server" 
            Text="Thay đổi loại tài khoản thành công" Font-Italic="True" ForeColor="Red" 
            Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button_Save" runat="server" Text="Save" 
            onclick="Button_Save_Click" Enabled="False" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button_BackToDefault" runat="server" Text="Exit" 
            PostBackUrl="~/Default.aspx" UseSubmitBehavior="False" />
    </center>
</div>
