
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MaintentSanPham.ascx.cs" Inherits="vBay.SanPhamMoiNhat" %>
<link rel="stylesheet" type="text/css" href="../JQuery/engine1/style.css" media="screen" />
<style type="text/css">a#vlb{display:none}
 
    .sanPham1
    {        
        border: 2px solid #CCC;	
    }
    .sanPham2
    {        
        border: 2px solid #CCC;	
    }
    .sanPham3
    {        
        border: 2px solid #CCC;	
    }
    .sanPham4
    {        
        border: 2px solid #CCC;	
    }
    .sanPham5
    {        
        border: 2px solid #CCC;	
    }
    .sanPham6
    {        
        border: 2px solid #CCC;	
    }
    .sanPham7
    {        
        border: 2px solid #CCC;	
    }
    .sanPham8
    {        
        border: 2px solid #CCC;	
    }
    .sanPham9
    {        
        border: 2px solid #CCC;	
    }
    .mainSanPham
    {
        margin: 0 auto;
        text-align: center;
        position:inherit;
    } 
    .noiDungSanPhamMoiDang
    { 
        background:url(../imagine/khungvien1.png);
        background-color:white;
        margin: 0 auto;
        width: 627px;
        height: 440px;                        
        position:inherit;
    }
    .noiDungSanPhamTieuBieu
    { 
        background:url(../imagine/khungvien2.png);
        background-color:white;
        margin: 0 auto;
        width: 627px;
        height: 440px;                        
        position:inherit;
    }
    .dataListSanPhamMoiDang
    {
        width: 592px;
        margin: 28px auto 0 auto;
    }
    .noiDungSanPhamMoiDang, .noiDungSanPhamTieuBieu
    {
        margin: 0 auto;
        width: 0 auto;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
    }
    #wowslider-container1
    {
       background-color : #fff;  
    }
        
</style>
<script type="text/javascript" src="../JQuery/engine1/jquery.js"></script>
<div class = "mainSanPham">
    <p> </p>
    <div id="wowslider-container1">
	    <div class="ws_images">                        
            <a href="#"><asp:Image ID="wows0" ImageURL="" alt="Cannot load imagine"  title = "1" runat="server"/></a>
            <a href="#"><asp:Image ID="wows1" ImageURL="" alt="Cannot load imagine"  title = "2" runat="server"/></a>
            <a href="#"><asp:Image ID="wows2" ImageURL="" alt="Cannot load imagine"  title = "3" runat="server"/></a>
            <a href="#"><asp:Image ID="wows3" ImageURL="" alt="Cannot load imagine"  title = "4" runat="server"/></a>
            <a href="#"><asp:Image ID="wows4" ImageURL="" alt="Cannot load imagine"  title = "5" runat="server"/></a>
            <a href="#"><asp:Image ID="wows5" ImageURL="" alt="Cannot load imagine"  title = "6" runat="server"/></a>
            <a href="#"><asp:Image ID="wows6" ImageURL="" alt="Cannot load imagine"  title = "7" runat="server"/></a>
            <a href="#"><asp:Image ID="wows7" ImageURL="" alt="Cannot load imagine"  title = "8" runat="server"/></a>
            <a href="#"><asp:Image ID="wows8" ImageURL="" alt="Cannot load imagine"  title = "9" runat="server"/></a>                                                                      
        </div>    	     
    </div>                
    <script type="text/javascript" src="../JQuery/engine1/script.js"></script>           
    <p></p>    
    <div class ="noiDungSanPhamMoiDang">
    <table class="dataListSanPhamMoiDang"><br />                
        <tr>                                   
            <td class="sanPham1" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka1" runat="server"><asp:Image ID="ImagineSP1" runat="server" Height="100px" Width="140px" 
                                                                                 style="text-align: center" /></asp:HyperLink><br/>
                <asp:HyperLink ID="tenSanPhamHyperLinkb1" runat="server" Font-Bold="False" 
                                                                                 Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham2" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka2" runat="server"><asp:Image ID="ImagineSP2" runat="server" Height="100px" Width="140px" 
                                                                                 style="text-align: center" /></asp:HyperLink><br/>
                <asp:HyperLink ID="tenSanPhamHyperLinkb2" runat="server" Font-Bold="False" 
                                                                                 Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham3" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka3" runat="server"><asp:Image ID="ImagineSP3" runat="server" Height="100px" Width="140px" 
                                                                                 style="text-align: center" /></asp:HyperLink><br/>
                <asp:HyperLink ID="tenSanPhamHyperLinkb3" runat="server" Font-Bold="False" 
                                                                                 Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>                 
        </tr>                                               
        <tr>
            <td class="sanPham4" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka4" runat="server"><asp:Image ID="ImagineSP4" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center" /></asp:HyperLink><br />
                <asp:HyperLink ID="tenSanPhamHyperLinkb4" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham5" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka5" runat="server"><asp:Image ID="ImagineSP5" runat="server" Height="100px" Width="140px" 
                                                                                 style="text-align: center" /></asp:HyperLink><br />
                <asp:HyperLink  ID="tenSanPhamHyperLinkb5" runat="server" Font-Bold="False"                                                                              
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham6" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka6" runat="server"><asp:Image ID="ImagineSP6" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center" /></asp:HyperLink><br />              
                <asp:HyperLink ID="tenSanPhamHyperLinkb6" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="sanPham7" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka7" runat="server"><asp:Image ID="ImagineSP7" runat="server" Height="100px" Width="140px" 
                                                                                style="text-align: center"/></asp:HyperLink><br />
                <asp:HyperLink ID="tenSanPhamHyperLinkb7" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham8" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka8" runat="server"><asp:Image ID="ImagineSP8" runat="server" Height="100px" Width="140px" 
                                                                                style="text-align: center" /></asp:HyperLink><br />
                <asp:HyperLink ID="tenSanPhamHyperLinkb8" runat="server" Font-Bold="False"                                                                              
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham9" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka9" runat="server"><asp:Image ID="ImagineSP9" runat="server" Height="100px" Width="140px" 
                                                                                style="text-align: center"/></asp:HyperLink><br /> 
                <asp:HyperLink ID="tenSanPhamHyperLinkb9" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
        </tr>
        </table>     
    </div>

<p></p>
    <div class ="noiDungSanPhamTieuBieu">
    <table class="dataListSanPhamMoiDang"><br />                
        <tr>                                   
            <td class="sanPham1" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka10" runat="server"><asp:Image ID="ImagineSP10" runat="server" Height="100px" Width="140px"                                                                                  
                                                                                style="text-align: center" /></asp:HyperLink><br/>
                <asp:HyperLink ID="tenSanPhamHyperLinkb10" runat="server" Font-Bold="False"                                                                       
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham2" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka11" runat="server"><asp:Image ID="ImagineSP11" runat="server" Height="100px" Width="140px"                                                                                  
                                                                                style="text-align: center" /></asp:HyperLink><br/>
                <asp:HyperLink ID="tenSanPhamHyperLinkb11" runat="server" Font-Bold="False"                                                                                  
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham3" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka12" runat="server"><asp:Image ID="ImagineSP12" runat="server" Height="100px" Width="140px"                                                                                  
                                                                                style="text-align: center" /></asp:HyperLink><br/>
                <asp:HyperLink ID="tenSanPhamHyperLinkb12" runat="server" Font-Bold="False"                                                                                  
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>                 
        </tr>                                               
        <tr>
            <td class="sanPham4" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka13" runat="server"><asp:Image ID="ImagineSP13" runat="server" Height="100px" Width="140px"                                                                              
                                                                                style="text-align: center" /></asp:HyperLink><br />
                <asp:HyperLink ID="tenSanPhamHyperLinkb13" runat="server" Font-Bold="False"                                                                              
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham5" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka14" runat="server"><asp:Image ID="ImagineSP14" runat="server" Height="100px" Width="140px"                                                                              
                                                                                style="text-align: center" /></asp:HyperLink><br />
                <asp:HyperLink  ID="tenSanPhamHyperLinkb14" runat="server" Font-Bold="False"                                                                                                                                                           
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            <td class="sanPham6" align="center">
                <asp:HyperLink ID="tenSanPhamHyperLinka15" runat="server"><asp:Image ID="ImagineSP15" runat="server" Height="100px" Width="140px"                                                                              
                                                                                style="text-align: center" /></asp:HyperLink><br />              
                <asp:HyperLink ID="tenSanPhamHyperLinkb15" runat="server" Font-Bold="False"                                                                              
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
            </td>
            </tr>
            <tr>
                <td class="sanPham7" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka16" runat="server"><asp:Image ID="ImagineSP16" runat="server" Height="100px" Width="140px"                                                                              
                                                                                style="text-align: center"/></asp:HyperLink><br />
                    <asp:HyperLink ID="tenSanPhamHyperLinkb16" runat="server" Font-Bold="False"                                                                              
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham8" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka17" runat="server"><asp:Image ID="ImagineSP17" runat="server" Height="100px" Width="140px"                                                                              
                                                                                style="text-align: center" /></asp:HyperLink><br />
                    <asp:HyperLink ID="tenSanPhamHyperLinkb17" runat="server" Font-Bold="False"                                                                                                                                                           
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham9" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka18" runat="server"><asp:Image ID="ImagineSP18" runat="server" Height="100px" Width="140px"                                                                              
                                                                                style="text-align: center"/></asp:HyperLink><br /> 
                    <asp:HyperLink ID="tenSanPhamHyperLinkb18" runat="server" Font-Bold="False"                                                                              
                                                                                Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                </td>
            </tr>
        </table>     
    </div>
</div>        
        
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>    
        



        
        
        

