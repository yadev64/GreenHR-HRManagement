<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewApplicationEditor.aspx.cs" Inherits="WebApplication1.NewApplicationEditor" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 763px;
        }
        .auto-style3 {
            height: 71px;
            font-size: xx-large;
            text-align: center;
            background-color: #99FF66;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" onload="Page_Load">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2">REQUEST EDITOR</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Load data" Width="1054px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Application id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" ReadOnly="True" Width="281px"></asp:TextBox>
                </td>
            </tr>
            
            
            <tr>
                <td class="auto-style2">Request id</td>
                <td>
                    <asp:TextBox ID="TextBox17" runat="server" BorderStyle="None" ReadOnly="True" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Application Status</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" BorderStyle="None" ReadOnly="True" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Manager name</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None" ReadOnly="True" Width="281px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Designation</td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Project name</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" BorderStyle="None" ReadOnly="True" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Date of application</td>
                <td>
                    <asp:TextBox ID="TextBox16" runat="server" BorderStyle="None" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Period In Months</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None" ReadOnly="True" Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    No of vaccancies</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" BorderStyle="None" ReadOnly="True" Width="281px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Skills</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server" Height="60px" TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Languages known</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server" Height="60px" TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Experience in years</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server" Height="60px" TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
            </tr>
            
            
            <tr>
                <td class="auto-style2">Job Description</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="60px" TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Minimum qualification</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="60px" TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Preferred Qualification</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="60px" TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Responsibility</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="60px" TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
            </tr>
            </table>
                <p>
                    <asp:Button ID="Button1" runat="server" Text="Upload to Jobportal" OnClick="Button1_Click" />
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </p>
    </form>
</body>
</html>

