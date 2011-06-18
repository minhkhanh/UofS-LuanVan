<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="DefaultPP.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PayPal Payment Demo</title>
    <style type="text/css">
        .style1
        {
            width: 433px;
            height: 381px;
            margin-left: 223px;
        }
    </style>
</head>
<body>
<div style="position:relative;">
    <form id="form1" runat="server">
    <div>
        <table style="width: 276px">
            <tr><td colspan="2"><hr /><b>Customer</b><hr /></td></tr>
            <tr align="left">
                <td>First name:</td>
                <td>
                    <asp:TextBox ID="tbfname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Last name:</td>
                <td>
                    <asp:TextBox ID="tblname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Address:</td>
                <td>
                    <asp:TextBox ID="tbadd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>State:</td>
                <td>
                    <asp:TextBox ID="tbstate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>ZipCode:</td>
                <td>
                    <asp:TextBox ID="tbzipcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Country:</td>
                <td>
                    <asp:TextBox ID="tbcountry" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Amount:$</td>
                <td>
                    <asp:TextBox ID="tbamount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr><td colspan="2"><hr /><b>Credit Card</b><hr /></td></tr>
            <tr align="left">
                <td>Card type:</td>
                <td>
                    <asp:DropDownList ID="Dropcard" runat="server">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="left">
                <td>Card number:</td>
                <td>
                    <asp:TextBox ID="tbcard" runat="server" Width="128px"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>Expire month:</td>
                <td> 
                    <asp:TextBox ID="tbmonth" runat="server" Width="26px" style="margin-left: 0px"></asp:TextBox>
                    &nbsp;&nbsp;Year: &nbsp;
                    <asp:TextBox ID="tbyear" runat="server" Width="37px"></asp:TextBox>
                </td>
            </tr>
            <tr align="left">
                <td>CVV2:</td>
                <td>
                    <asp:TextBox ID="tbcvv2" runat="server" Width="128px"></asp:TextBox>
                </td>
            </tr>
        </table>  
    </div>
    <hr />
    <div align="left">
        <table width="500px">
            <tr align="center">
                <td align="left"><b>DONATE NOW:</b></td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:ImageButton ID="btnCreditCard" ToolTip="Pay with PayPal Direct Payment" 
                        ImageUrl="App_Image/CreditCard.jpg" runat="server" 
                        onclick="btnCreditCard_Click" />
                </td>
            </tr>
        </table>      
    </div>
    <div style="position:absolute; left:300px; top:0; height:350px; border-left:solid 1px #aaa;">
        <div style="padding:5px; color:#090;">
            <asp:Literal ID="lblMsg" runat="server"></asp:Literal>
            <img alt="Thiên hạ vô địch rùa MU" class="style1" 
                src="App_Image/logoruamu.jpg" /></div>
    </div>
    </form>
</div>
</body>
</html>
