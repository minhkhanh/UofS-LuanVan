<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="vBay.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class= "content">
		<p align="left"> <font face="Calibri (Body), Geneva, sans-serif" color="#FF3300"><i><b>LIÊN HỆ HỖ TRỢ</b></i></font></p>        
		<marquee height="590" direction=down scrolldelay="5" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()"> 
		<p align="center"> <img src="imagine/anhkhoi.png"/></p>
		<p align="center"> <font face="Calibri (Body)" color="#336633"><b>Nguyễn Anh Khôi</b></font></p>
		<p align="center"> <img src="imagine/anhkhoa.png"/></p>
		<p align="center"> <font face="Calibri (Body)" color="#336633"><b>Trần Anh Khoa</b></font></p>            
		<p align="center"> <img src="imagine/minhkhanh.png"/></p>
		<p align="center"> <font face="Calibri (Body)" color="#336633"><b>Trần Minh Khánh</b></font></p>	
		<p align="center"> <img src="imagine/dangkhoa.png"/></p>
		<p align="center"> <font face="Calibri (Body)" color="#336633"><b>Phạm Đăng Khoa</b></font></p>
		<p align="center"> <img src="imagine/dinhluyen.png"/></p>	
		<p align="center"> <font face="Calibri (Body)" color="#336633"><b>Nguyễn Đình Luyến</b></font></p>

        </marquee>

    </div>
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolderGo">
<asp:Button runat="server" ID="ButtonChooseTheme"  Text="Go" 
                            onclick="ButtonChooseTheme_Click"/>
</asp:Content>