<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resume.aspx.cs" Inherits="WebApplication1.resume" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 58px;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Application id</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Candidate id</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;Full Name</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Resume</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
