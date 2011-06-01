
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MaintentSanPham.ascx.cs" Inherits="vBay.SanPhamMoiNhat" %>
<link rel="stylesheet" type="text/css" href="../JQuery/engine1/style.css" media="screen" />
<style type="text/css">a#vlb{display:none}
 
    .dataListSanPhamTieuBieu
    {
        width: 549px;
        margin: 0 auto;        
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
    .main
    {
        margin: 0 auto;
    } 
    .wowslider-container1   
    {
        
    }
</style>
<script type="text/javascript" src="../JQuery/engine1/jquery.js"></script>
<div class = "main">
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
        <table class="dataListSanPhamTieuBieu">            
                <tr>                                   
                    <td class="sanPham1" align="center">
                        <asp:Image ID="ImagineSP1" runat="server" Height="120px" Width="170px" 
                            style="text-align: center" /><br />                
                        <asp:HyperLink ID="tenSanPhamHyperLink1" runat="server">HyperLink</asp:HyperLink>
                    </td>
                    <td class="sanPham2" align="center">
                        <asp:Image ID="ImagineSP2" runat="server" Height="120px" Width="170px" 
                            style="text-align: center" /><br/>
                        <asp:HyperLink ID="tenSanPhamHyperLink2" runat="server">HyperLink</asp:HyperLink>
                    </td>
                    <td class="sanPham3" align="center">
                        <asp:Image ID="ImagineSP3" runat="server" Height="120px" Width="170px" 
                            style="text-align: center" /><br/>
                         <asp:HyperLink ID="tenSanPhamHyperLink3" runat="server">HyperLink</asp:HyperLink>
                    </td>                 
                </tr>                                               
            <tr>
                <td class="sanPham4" align="center">
                <asp:Image ID="ImagineSP4" runat="server" Height="120px" Width="170px" 
                        style="text-align: center" /><br />                
                    <asp:HyperLink ID="tenSanPhamHyperLink4" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham5" align="center">
                <asp:Image ID="ImagineSP5" runat="server" Height="120px" Width="170px" 
                        style="text-align: center" /><br />                
                   <asp:HyperLink ID="tenSanPhamHyperLink5" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham6" align="center">
                <asp:Image ID="ImagineSP6" runat="server" Height="120px" Width="170px" 
                        style="text-align: center" /><br />                
                    <asp:HyperLink ID="tenSanPhamHyperLink6" runat="server">HyperLink</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="sanPham7" align="center">
                <asp:Image ID="ImagineSP7" runat="server" Height="120px" Width="170px" 
                        style="text-align: center" /><br />                
                    <asp:HyperLink ID="tenSanPhamHyperLink7" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham8" align="center">
                <asp:Image ID="ImagineSP8" runat="server" Height="120px" Width="170px" 
                        style="text-align: center" /><br />                
                    <asp:HyperLink ID="tenSanPhamHyperLink8" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td class="sanPham9" align="center">
                <asp:Image ID="ImagineSP9" runat="server" Height="120px" Width="170px" 
                        style="text-align: center" /><br />                
                    <asp:HyperLink ID="tenSanPhamHyperLink9" runat="server">HyperLink</asp:HyperLink>
                </td>
            </tr>
        </table>     
</div>        
        
        
        

