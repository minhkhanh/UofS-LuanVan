
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MaintentSanPham.ascx.cs" Inherits="vBay.SanPhamMoiNhat" %>
<link rel="stylesheet" type="text/css" href="../JQuery/engine1/style.css" media="screen" />
<style type="text/css">a#vlb{display:none}
 
    .dataListSanPhamTieuBieu
    {
        width: 549px;
        margin: 28px auto 0 auto;
    }
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
    .noiDungSanPham
   { 
        background:url(../imagine/khungvien.jpg);
        background-color:white;
        margin: 0 auto;
        width: 627px;
        height: 440px;                
        border: 1px solid #8080FF;	
        position:inherit;
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
    <div class ="noiDungSanPham">
    <table class="dataListSanPhamTieuBieu">            
    <p></p>
                <tr>                                   
                    <td class="sanPham1" align="center">
                        <asp:HyperLink ID="tenSanPhamHyperLinka1" runat="server" BackColor="White"><asp:Image ID="ImagineSP1" runat="server" Height="100px" Width="140px" 
                                                                                 style="text-align: center" /><br/></asp:HyperLink>
                        <asp:HyperLink ID="tenSanPhamHyperLinkb1" runat="server" Font-Bold="False" 
                                                                                 Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                    </td>
                    <td class="sanPham2" align="center">
                        <asp:HyperLink ID="tenSanPhamHyperLinka2" runat="server" BorderColor="White"><asp:Image ID="ImagineSP2" runat="server" Height="100px" Width="140px" 
                                                                                 style="text-align: center" /><br/></asp:HyperLink>
                        <asp:HyperLink ID="tenSanPhamHyperLinkb2" runat="server" Font-Bold="False" 
                                                                                 Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                    </td>
                    <td class="sanPham3" align="center">
                        <asp:HyperLink ID="tenSanPhamHyperLinka3" runat="server"><asp:Image ID="ImagineSP3" runat="server" Height="100px" Width="140px" 
                                                                                 style="text-align: center" /><br/></asp:HyperLink>
                        <asp:HyperLink ID="tenSanPhamHyperLinkb3" runat="server" Font-Bold="False" 
                                                                                 Font-Overline="False" Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                    </td>                 
                </tr>                                               
            <tr>
                <td class="sanPham4" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka4" runat="server"><asp:Image ID="ImagineSP4" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center" /><br /></asp:HyperLink>                
                    <asp:HyperLink ID="tenSanPhamHyperLinkb4" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham5" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka5" runat="server"><asp:Image ID="ImagineSP5" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center" /><br /></asp:HyperLink>                
                   <asp:HyperLink  ID="tenSanPhamHyperLinkb5" runat="server" Font-Bold="False"                                                                              
                                                                             Font-Underline="False" Font-Italic="True" BorderColor="White">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham6" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka6" runat="server" BorderColor="White"><asp:Image ID="ImagineSP6" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center" /><br /></asp:HyperLink>                
                    <asp:HyperLink ID="tenSanPhamHyperLinkb6" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="sanPham7" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka7" runat="server"><asp:Image ID="ImagineSP7" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center"/><br /></asp:HyperLink>                  
                    <asp:HyperLink ID="tenSanPhamHyperLinkb7" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham8" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka8" runat="server"><asp:Image ID="ImagineSP8" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center" /><br /></asp:HyperLink>                  
                    <asp:HyperLink ID="tenSanPhamHyperLinkb8" runat="server" Font-Bold="False"                                                                              
                                                                             Font-Underline="False" Font-Italic="True" BorderColor="White">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham9" align="center">
                    <asp:HyperLink ID="tenSanPhamHyperLinka9" runat="server" BorderColor="White"><asp:Image ID="ImagineSP9" runat="server" Height="100px" Width="140px" 
                                                                             style="text-align: center"/><br /></asp:HyperLink>                  
                    <asp:HyperLink ID="tenSanPhamHyperLinkb9" runat="server" Font-Bold="False" 
                                                                             Font-Underline="False" Font-Italic="True">HyperLink</asp:HyperLink>
                </td>
            </tr>
        </table>     
    </div>
</div>        
        
        
        



        
        
        

