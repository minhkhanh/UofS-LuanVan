<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCDateSelect.ascx.cs"
    Inherits="vBay.WUCDateSelect" %>
<script type="text/javascript">
    function year_KeyPress(evt) {
        evt = (evt) ? evt : ((window.event) ? event : null);

        if (evt) {
            var elem = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
            if (elem) {
                var charCode = (evt.charCode) ? evt.charCode : ((evt.which) ? evt.which : evt.keyCode);
                //alert(charCode);
                if ((charCode == 8) || (charCode == 46) || (charCode >= 37 && charCode <= 40) || (charCode >= 48 && charCode <= 57)) {
                    return true;
                } else {
                    return false;
                }
            }
        }
    }

    function getFebDayNum(year) {
        if (isNaN(year) || year % 4 == 0)
            return 29;

        return 28;
    }

    function monthyear_Change() {
        var day = parseInt($("#<%= drlDay.ClientID%>").val(), 10);
        var month = parseInt($("#<%= drlMonth.ClientID %>").val(), 10);

        $("#<%= drlDay.ClientID%> option:gt(" + 28 + ")").remove();

        switch (month) {
            case 2:
                var febDayNum = getFebDayNum($("#<%= txbYear.ClientID%>").val());
                if (day > febDayNum)
                    day = 0;
                    //$("#<%= drlDay.ClientID%>").val("0");


                if (febDayNum == 29)
                    $("#<%= drlDay.ClientID%>").append('<option value="29">29</option>');
                break;
            case 4:
            case 6:
            case 9:
            case 11:
                if (day > 30)
                //$("#<%= drlDay.ClientID%>").val("0");
                    day = 0;

                $("#<%= drlDay.ClientID%>").append('<option value="29">29</option>');
                $("#<%= drlDay.ClientID%>").append('<option value="30">30</option>');

                break;
            default:
                $("#<%= drlDay.ClientID%>").append('<option value="29">29</option>');
                $("#<%= drlDay.ClientID%>").append('<option value="30">30</option>');
                $("#<%= drlDay.ClientID%>").append('<option value="31">31</option>');
        }

        $("#<%= drlDay.ClientID%>").val(day.toString());

        if (($("#<%= drlDay.ClientID%> option:selected").text() == "day" && $("#<%= drlMonth.ClientID%> option:selected").text() == "month" && ($("#<%= txbYear.ClientID%>").val() == "year" || $("#<%= txbYear.ClientID%>").val() == "")) || ($("#<%= drlDay.ClientID%> option:selected").text() != "day" && $("#<%= drlMonth.ClientID%> option:selected").text() != "month" && $("#<%= txbYear.ClientID%>").val() != "year" && $("#<%= txbYear.ClientID%>").val() != ""))
            $("#<%=lblErrMess.ClientID %>").text("");
        else
            $("#<%=lblErrMess.ClientID %>").text("*");
    }

    function test() {
        alert("test");
    }

    function blurYearText() {
        if (document.getElementById("<%=txbYear.ClientID %>").value == "")
            document.getElementById("<%=txbYear.ClientID %>").value = "year";  // pure js
    }

    function focusYearText() {
        if ($("#<%=txbYear.ClientID %>").val() == "year")
            $("#<%=txbYear.ClientID %>").val("");      // user jquery
    }
</script>
<table>
    <tr>
        <td>
            <asp:DropDownList ID="drlMonth" runat="server" CssClass="blurElem" ClientIDMode="Inherit"
                onchange="monthyear_Change()">
                <asp:ListItem Selected="True" Value="0">month</asp:ListItem>
                <asp:ListItem Value="1">January</asp:ListItem>
                <asp:ListItem Value="2">February</asp:ListItem>
                <asp:ListItem Value="3">March</asp:ListItem>
                <asp:ListItem Value="4">April</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">June</asp:ListItem>
                <asp:ListItem Value="7">July</asp:ListItem>
                <asp:ListItem Value="8">August</asp:ListItem>
                <asp:ListItem Value="9">September</asp:ListItem>
                <asp:ListItem Value="10">October</asp:ListItem>
                <asp:ListItem Value="11">November</asp:ListItem>
                <asp:ListItem Value="12">December</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:DropDownList ID="drlDay" runat="server" CssClass="blurElem"
            onchange="monthyear_Change()">
                <asp:ListItem Selected="True" Value="0">day</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:TextBox ID="txbYear" runat="server" CssClass="blurElem"
                MaxLength="4" Width="80px" onblur="blurYearText()" onfocus="focusYearText()"
                onchange="monthyear_Change()" onkeypress="return year_KeyPress(event)">year</asp:TextBox>
        </td>
        <td>
            <!-- <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="*" ClientValidationFunction="checkDate"></asp:CustomValidator> -->
            <!-- <asp:HiddenField ID="hidFlag" runat="server" ClientIDMode="Static" Value="true" /> -->
            <asp:Label ID="lblErrMess" runat="server" ClientIDMode="Inherit" Font-Bold="True" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>

<script type="text/javascript">
    $(".blurElem").css({ "text-align": "right" });
</script>
