<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRDashboard.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>
<script runat="server">

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 177px;
            height: 465px;
            text-align: center;
        }
        .auto-style4 {
            height: 465px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2">GreenHR</td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #00FF00; font-family: Arial">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="auto-style4">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" DataMember="DefaultView" OnItemCommand="Repeater1_ItemCommand">
                        <HeaderTemplate>
                            <table border="1">
                                <tr>
                                    <td><b>Request ID</b></td>
                                    <td><b>Manager</b></td>
                                    <td><b>Designation</b></td>

                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                             <tr>
                                 <td> <%# Eval("request_id") %> </td>
                                 <td> <%# Eval("manager_name") %> </td>
                                 <td> <%# Eval("designation") %> </td>
                                 <td>
                                        <asp:Button ID="details" runat="server" Text="View Details"  CommandArgument='<%#Eval("request_id")%>'  OnClick="MyBtnHandler"/>
                                 </td>
                             </tr>
                          
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString3 %>" SelectCommand="SELECT [request_id], [manager_name], [designation] FROM [request_table] ORDER BY [date_request] DESC"></asp:SqlDataSource>
                    <br />
                    
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
