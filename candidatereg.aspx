<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidatereg.aspx.cs" Inherits="WebApplication1.candidatereg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            margin-left: 40px;
        }
        .auto-style4 {
            height: 29px;
            width: 326px;
        }
        .auto-style5 {
            width: 326px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Application id<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">job description</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">min qualification</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">prefered qualificatiom</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Responsibilities</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Skills</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Programming Languages Known</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">experience (in years)</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Designation</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Last date </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
