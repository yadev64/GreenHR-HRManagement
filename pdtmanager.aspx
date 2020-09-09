<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pdtmanager.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 720px;
        }
        .auto-style2 {
            width: 335px;
            text-align: center;
            height: 564px;
            background-color: #33CC33;
        }
        .auto-style3 {
            height: 564px;
        }
        .auto-style4 {
            width: 335px;
            text-align: center;
            height: 119px;
            background-color: #33CC33;
        }
        .auto-style5 {
            height: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            GreenHR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="New Request" Width="143px" />
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Status</asp:LinkButton>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="request_id" DataSourceID="SqlDataSource1" OnRowCommand="GridView2_RowCommand" OnRowCreated="GridView2_RowCreated" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                            <asp:BoundField DataField="request_id" HeaderText="request_id" InsertVisible="False" ReadOnly="True" SortExpression="request_id" />
                            <asp:BoundField DataField="project_name" HeaderText="project_name" SortExpression="project_name" />
                            <asp:BoundField DataField="date_request" HeaderText="date_request" SortExpression="date_request" />
                            <asp:BoundField DataField="request_status" HeaderText="request_status" SortExpression="request_status" />
                            <asp:ButtonField ButtonType="Button" CommandName="ViewDetails" HeaderText="view details" Text="View Details" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString2 %>" SelectCommand="SELECT [designation], [request_id], [project_name], [date_request], [request_status] FROM [request_table] WHERE ([manager_name] = @manager_name) ORDER BY [request_id] DESC">
                         <SelectParameters>
                            <asp:SessionParameter Name="manager_name" SessionField="username" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>


                    
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="......"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton2" runat="server">Change Password</asp:LinkButton>
                </td>
                <td class="auto-style5"></td>
            </tr>
        </table>
    </form>
</body>
</html>

