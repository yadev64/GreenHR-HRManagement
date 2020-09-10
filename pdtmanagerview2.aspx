<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pdtmanagerview2.aspx.cs" Inherits="WebApplication1.pdtmanagerview2" %>

<!DOCTYPE html>
<script runat="server">

    protected void LinkButton2_Click(object sender, EventArgs e)
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
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 252px;
        }
        .auto-style4 {
            width: 252px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Candidate id</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Candidate Name</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Skills</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Programming Language</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Highest Qualification</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">College</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">University</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Address</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Experience(in years)</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Notice period(in months)</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Latest Company</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Latest Designation</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Current Salary</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Registeration Date</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Age</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">DOB</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Interview Date</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Hired Date</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Date of Joining</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Appointment Sent(date)</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Appointment Confirm(date)</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Request id</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <br />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="resume_id" DataSourceID="SqlDataSource4" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="resume_id" HeaderText="resume_id" InsertVisible="False" ReadOnly="True" SortExpression="resume_id" />
                    <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" />
                    <asp:BoundField DataField="pdf_resume" HeaderText="pdf_resume" SortExpression="pdf_resume" />
                    <asp:HyperLinkField DataNavigateUrlFields="pdf_resume" HeaderText="Resume(pdf)" Text="View and Download" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString6 %>" SelectCommand="SELECT DISTINCT [resume_id], [candidate_id], [pdf_resume] FROM [resume_table] WHERE ([candidate_id] = @candidate_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="candidate_id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">home</asp:LinkButton>
                        </p>
    </form>
</body>
</html>
