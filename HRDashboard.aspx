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
                                <td> <%# Eval("req_id") %> </td>
                                <td> <%# Eval("manager_name") %> </td>
                                 <td> <%# Eval("desg") %> </td>
                                 <td>
                                        <asp:Button ID="details" runat="server" Text="View Details"  CommandArgument='<%#Eval("req_id")%>'  OnClick="MyBtnHandler"/>
                                 </td>
                             </tr>
                          
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHRConnectionString %>" SelectCommand="SELECT [req_id], [manager_name], [desg] FROM [request_table] ORDER BY [date_request] DESC"></asp:SqlDataSource>
                    <br />
                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="req_id" DataSourceID="SqlDataSource2" ForeColor="#333333" OnPageIndexChanging="FormView1_PageIndexChanging">
                        <EditItemTemplate>
                            req_id:
                            <asp:DynamicControl ID="req_idDynamicControl" runat="server" DataField="req_id" Mode="ReadOnly" />
                            <br />
                            manager_name:
                            <asp:DynamicControl ID="manager_nameDynamicControl" runat="server" DataField="manager_name" Mode="Edit" />
                            <br />
                            desg:
                            <asp:DynamicControl ID="desgDynamicControl" runat="server" DataField="desg" Mode="Edit" />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            manager_name:
                            <asp:DynamicControl ID="manager_nameDynamicControl" runat="server" DataField="manager_name" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            desg:
                            <asp:DynamicControl ID="desgDynamicControl" runat="server" DataField="desg" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            req_id:
                            <asp:DynamicControl ID="req_idDynamicControl" runat="server" DataField="req_id" Mode="ReadOnly" />
                            <br />
                            manager_name:
                            <asp:DynamicControl ID="manager_nameDynamicControl" runat="server" DataField="manager_name" Mode="ReadOnly" />
                            <br />
                            desg:
                            <asp:DynamicControl ID="desgDynamicControl" runat="server" DataField="desg" Mode="ReadOnly" />
                            <br />

                        </ItemTemplate>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:FormView>
                    <br />
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="req_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="req_id" HeaderText="req_id" InsertVisible="False" ReadOnly="True" SortExpression="req_id" />
                            <asp:BoundField DataField="manager_name" HeaderText="manager_name" SortExpression="manager_name" />
                            <asp:BoundField DataField="desg" HeaderText="desg" SortExpression="desg" />
                        </Fields>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    </asp:DetailsView>
                    <br />
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2">
                        <series>
                            <asp:Series ChartType="Bubble" Name="Series1" XValueMember="manager_name" YValueMembers="req_id" YValuesPerPoint="2">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
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
