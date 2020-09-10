<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidate_details.aspx.cs" Inherits="WebApplication1.candidate_details" %>

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
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style2">
                    
                    <br />
                    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="candidate_id" DataSourceID="SqlDataSource1" GridLines="Both" Width="696px">
                        <EditItemTemplate>
                            candidate_id:
                            <asp:Label ID="candidate_idLabel1" runat="server" Text='<%# Eval("candidate_id") %>' />
                            <br />
                            candidate_name:
                            <asp:TextBox ID="candidate_nameTextBox" runat="server" Text='<%# Bind("candidate_name") %>' />
                            <br />
                            skills:
                            <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                            <br />
                            program_language:
                            <asp:TextBox ID="program_languageTextBox" runat="server" Text='<%# Bind("program_language") %>' />
                            <br />
                            highest_qualification:
                            <asp:TextBox ID="highest_qualificationTextBox" runat="server" Text='<%# Bind("highest_qualification") %>' />
                            <br />
                            college:
                            <asp:TextBox ID="collegeTextBox" runat="server" Text='<%# Bind("college") %>' />
                            <br />
                            university:
                            <asp:TextBox ID="universityTextBox" runat="server" Text='<%# Bind("university") %>' />
                            <br />
                            address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            experience_year:
                            <asp:TextBox ID="experience_yearTextBox" runat="server" Text='<%# Bind("experience_year") %>' />
                            <br />
                            notice_period:
                            <asp:TextBox ID="notice_periodTextBox" runat="server" Text='<%# Bind("notice_period") %>' />
                            <br />
                            latest_company:
                            <asp:TextBox ID="latest_companyTextBox" runat="server" Text='<%# Bind("latest_company") %>' />
                            <br />
                            latest_designation:
                            <asp:TextBox ID="latest_designationTextBox" runat="server" Text='<%# Bind("latest_designation") %>' />
                            <br />
                            current_salary:
                            <asp:TextBox ID="current_salaryTextBox" runat="server" Text='<%# Bind("current_salary") %>' />
                            <br />
                            registration_date:
                            <asp:TextBox ID="registration_dateTextBox" runat="server" Text='<%# Bind("registration_date") %>' />
                            <br />
                            age:
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                            <br />
                            dob:
                            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                            <br />
                            request_id:
                            <asp:TextBox ID="request_idTextBox" runat="server" Text='<%# Bind("request_id") %>' />
                            <br />
                            candidate_mail:
                            <asp:TextBox ID="candidate_mailTextBox" runat="server" Text='<%# Bind("candidate_mail") %>' />
                            <br />
                            interview_date:
                            <asp:TextBox ID="interview_dateTextBox" runat="server" Text='<%# Bind("interview_date") %>' />
                            <br />
                            application_id:
                            <asp:TextBox ID="application_idTextBox" runat="server" Text='<%# Bind("application_id") %>' />
                            <br />
                            status:
                            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            candidate_name:
                            <asp:TextBox ID="candidate_nameTextBox" runat="server" Text='<%# Bind("candidate_name") %>' />
                            <br />
                            skills:
                            <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                            <br />
                            program_language:
                            <asp:TextBox ID="program_languageTextBox" runat="server" Text='<%# Bind("program_language") %>' />
                            <br />
                            highest_qualification:
                            <asp:TextBox ID="highest_qualificationTextBox" runat="server" Text='<%# Bind("highest_qualification") %>' />
                            <br />
                            college:
                            <asp:TextBox ID="collegeTextBox" runat="server" Text='<%# Bind("college") %>' />
                            <br />
                            university:
                            <asp:TextBox ID="universityTextBox" runat="server" Text='<%# Bind("university") %>' />
                            <br />
                            address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            experience_year:
                            <asp:TextBox ID="experience_yearTextBox" runat="server" Text='<%# Bind("experience_year") %>' />
                            <br />
                            notice_period:
                            <asp:TextBox ID="notice_periodTextBox" runat="server" Text='<%# Bind("notice_period") %>' />
                            <br />
                            latest_company:
                            <asp:TextBox ID="latest_companyTextBox" runat="server" Text='<%# Bind("latest_company") %>' />
                            <br />
                            latest_designation:
                            <asp:TextBox ID="latest_designationTextBox" runat="server" Text='<%# Bind("latest_designation") %>' />
                            <br />
                            current_salary:
                            <asp:TextBox ID="current_salaryTextBox" runat="server" Text='<%# Bind("current_salary") %>' />
                            <br />
                            registration_date:
                            <asp:TextBox ID="registration_dateTextBox" runat="server" Text='<%# Bind("registration_date") %>' />
                            <br />
                            age:
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                            <br />
                            dob:
                            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                            <br />
                            request_id:
                            <asp:TextBox ID="request_idTextBox" runat="server" Text='<%# Bind("request_id") %>' />
                            <br />
                            candidate_mail:
                            <asp:TextBox ID="candidate_mailTextBox" runat="server" Text='<%# Bind("candidate_mail") %>' />
                            <br />
                            interview_date:
                            <asp:TextBox ID="interview_dateTextBox" runat="server" Text='<%# Bind("interview_date") %>' />
                            <br />
                            application_id:
                            <asp:TextBox ID="application_idTextBox" runat="server" Text='<%# Bind("application_id") %>' />
                            <br />
                            status:
                            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>

                        <ItemTemplate>
                            candidate_id:
                            <asp:Label ID="candidate_idLabel" runat="server" Text='<%# Eval("candidate_id") %>' />
                            <br />
                            candidate_name:
                            <asp:Label ID="candidate_nameLabel" runat="server" Text='<%# Bind("candidate_name") %>' />
                            <br />
                            skills:
                            <asp:Label ID="skillsLabel" runat="server" Text='<%# Bind("skills") %>' />
                            <br />
                            program_language:
                            <asp:Label ID="program_languageLabel" runat="server" Text='<%# Bind("program_language") %>' />
                            <br />
                            highest_qualification:
                            <asp:Label ID="highest_qualificationLabel" runat="server" Text='<%# Bind("highest_qualification") %>' />
                            <br />
                            college:
                            <asp:Label ID="collegeLabel" runat="server" Text='<%# Bind("college") %>' />
                            <br />
                            university:
                            <asp:Label ID="universityLabel" runat="server" Text='<%# Bind("university") %>' />
                            <br />
                            address:
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            experience_year:
                            <asp:Label ID="experience_yearLabel" runat="server" Text='<%# Bind("experience_year") %>' />
                            <br />
                            notice_period:
                            <asp:Label ID="notice_periodLabel" runat="server" Text='<%# Bind("notice_period") %>' />
                            <br />
                            latest_company:
                            <asp:Label ID="latest_companyLabel" runat="server" Text='<%# Bind("latest_company") %>' />
                            <br />
                            latest_designation:
                            <asp:Label ID="latest_designationLabel" runat="server" Text='<%# Bind("latest_designation") %>' />
                            <br />
                            current_salary:
                            <asp:Label ID="current_salaryLabel" runat="server" Text='<%# Bind("current_salary") %>' />
                            <br />
                            registration_date:
                            <asp:Label ID="registration_dateLabel" runat="server" Text='<%# Bind("registration_date") %>' />
                            <br />
                            age:
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                            <br />
                            dob:
                            <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
                            <br />
                            request_id:
                            <asp:Label ID="request_idLabel" runat="server" Text='<%# Bind("request_id") %>' />
                            <br />
                            candidate_mail:
                            <asp:Label ID="candidate_mailLabel" runat="server" Text='<%# Bind("candidate_mail") %>' />
                            <br />
                            interview_date:
                            <asp:Label ID="interview_dateLabel" runat="server" Text='<%# Bind("interview_date") %>' />
                            <br />
                            application_id:
                            <asp:Label ID="application_idLabel" runat="server" Text='<%# Bind("application_id") %>' />
                            <br />

                            status:
                            <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
                            <br />

                        </ItemTemplate>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:FormView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString4 %>" SelectCommand="SELECT * FROM [candidate_table] WHERE ([candidate_id] = @candidate_id)">
                        <SelectParameters>
                            <asp:querystringparameter name="candidate_id" querystringfield="cand_id" defaultvalue="-1"/>
                        </SelectParameters>
                    </asp:SqlDataSource>




                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHRConnectionString %>" SelectCommand="SELECT * FROM [candidate_table] WHERE ([candidate_id] = @cand_id)">
                        <SelectParameters>
                            <asp:querystringparameter name="cand_id" querystringfield="cand_id" defaultvalue="-1"/>
                        </SelectParameters>
                    </asp:SqlDataSource>


                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Shortlist this candidate" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go back" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

