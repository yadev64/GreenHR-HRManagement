<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="website.aspx.cs" Inherits="WebApplication1.website" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 1461px">
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                
                <HeaderTemplate>
                    <table border="1">
                    <tr>
                        <th>Open Date</th>
                        <th>Designation</th>
                    </tr>
                </HeaderTemplate>
                
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("date_application") %></td>
                        <td><%# Eval("designation") %></td>
                        
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Apply now" CommandArgument='<%#Eval("application_id") %>' OnClick="mybtnhandler"/>
                        </td>
                    </tr> 

                </ItemTemplate>
                   
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString3 %>" SelectCommand="SELECT [application_id], [designation], [date_application] FROM [application_table] WHERE ([application_status] = @application_status) ORDER BY [date_application] DESC">
              
                <SelectParameters>
                    <asp:Parameter DefaultValue="inprogress" Name="application_status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>

    
    <p>
        &nbsp;</p>
</body>
</html>

