﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRDashboard_ViewApplication.aspx.cs" Inherits="WebApplication1.HRDashboard_ViewApplication" %>

<!DOCTYPE html>
<script runat="server">
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 649px;
        }
        .auto-style2 {
            height: 450px;
        }
        .auto-style3 {
            height: 450px;
            width: 207px;
            background-color: #FFCC99;
        }
        .auto-style4 {
            height: 118px;
            background-color: #CCFF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style2">
                    
                    <br />
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <table border="1">
                                <tr>
                                    <td><b>Designation</b></td>
                                    <td><b>Application ID</b></td>
                                    <td><b>Status</b></td>
                                    <td><b>Date of Application</b></td>
                                    <td><b>Number of Vacancies</b></td>


                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                             <tr>
                                <td> <%# Eval("designation") %> </td>
                                <td> <%# Eval("application_id") %> </td>
                                 <td> <%# Eval("application_status") %> </td>
                                 <td> <%# Eval("date_application") %> </td>
                                 <td> <%# Eval("noof_vacancies") %> </td>
                                 <td>
                                        <asp:Button ID="details" runat="server" Text="View Details"  CommandArgument='<%#Eval("application_id")%>'  OnClick="MyBtnHandler"/>
                                 </td>
                             </tr>
                          
                        </ItemTemplate>    
                      
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString4 %>" SelectCommand="SELECT [application_id], [designation], [noof_vacancies], [date_application], [application_status] FROM [application_table] ORDER BY [date_application] DESC"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
