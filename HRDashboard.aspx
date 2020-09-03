<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 177px;
            height: 390px;
            text-align: center;
        }
        .auto-style4 {
            height: 390px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">GreenHR</td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #00FF00; font-family: Arial">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="auto-style4">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" DataMember="DefaultView">
                        
                    </asp:Repeater>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
