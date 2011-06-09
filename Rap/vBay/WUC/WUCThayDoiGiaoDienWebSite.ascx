<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCThayDoiGiaoDienWebSite.ascx.cs" Inherits="vBay.WUC.WUCThayDoiGiaoDienWebSite" %>
<div id="UC_ThayDoiGiaoDienWebSiteDiv" Style="width:100%; height:auto; background-color: White;">
    <center>
        <asp:Label ID="Label1" runat="server" Text="THAY ĐỔI GIAO DIỆN WEB SITE" 
            Font-Bold="True" Font-Size="20px" ForeColor="Red"></asp:Label>
    </center>
    <asp:Label ID="Label3" runat="server" Text="Upload Logo từ máy tính: " 
        Width="35%"></asp:Label>  
    <asp:FileUpload ID="FileUpload_Logo" runat="server" Width="40%" />
    <asp:Button ID="Button_UploadLogo" runat="server" onclick="Button_UploadLogo_Click" 
        Text="Upload" />
    <br />
    <center>
        <asp:Label ID="Label_UploadLogoThanhCong" runat="server" Font-Italic="True" 
            ForeColor="Red" Text="Logo mới đã được upload thành công" Visible="False"></asp:Label>
        <br />
        <asp:Image ID="Image_Logo" runat="server" 
            AlternateText="Image can't be found" BorderColor="Black" BorderStyle="Solid" 
            BorderWidth="1px" GenerateEmptyAlternateText="True" />
        <br />
        <br />
    </center>
    <asp:Label ID="Label4" runat="server" Text="Upload file CSS từ máy tính: " 
        Width="35%"></asp:Label>
    <asp:FileUpload ID="FileUpload_StyleSheet" runat="server" Width="40%" />
    <asp:Button ID="Button_UploadCSS" runat="server" Text="Upload" 
        onclick="Button_UploadCSS_Click" style="height: 26px" />
    <br />
    <center>
        <asp:Label ID="Label_UploadCSSThanhCong" runat="server" 
            Text="StyleSheet mới đã được upload thành công" Font-Italic="True" 
            ForeColor="Red" Visible="False"></asp:Label>
        <br /><br />
        <asp:Label ID="Label_ReturnToDefault" runat="server" 
            Text="Vui lòng trở về trang chủ để cập nhật thay đổi" Font-Italic="True" 
            ForeColor="Red"></asp:Label>
    </center>
    <center>
        <asp:Button ID="Button_Default" runat="server" Text="Trở về trang chủ" 
            onclick="Button_Default_Click" PostBackUrl="~/MainContent.aspx" />
    </center>
</div>
