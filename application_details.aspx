<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="application_details.aspx.cs" Inherits="WebApplication1.application_details" %>

<!DOCTYPE html>
<script runat="server">

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
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
                    <h1>Application Details</h1>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="application_id" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            application_id:
                            <asp:Label ID="application_idLabel1" runat="server" Text='<%# Eval("application_id") %>' />
                            <br />
                            job_description:
                            <asp:TextBox ID="job_descriptionTextBox" runat="server" Text='<%# Bind("job_description") %>' />
                            <br />
                            minimum_qualification:
                            <asp:TextBox ID="minimum_qualificationTextBox" runat="server" Text='<%# Bind("minimum_qualification") %>' />
                            <br />
                            preferred_qualification:
                            <asp:TextBox ID="preferred_qualificationTextBox" runat="server" Text='<%# Bind("preferred_qualification") %>' />
                            <br />
                            responsibility:
                            <asp:TextBox ID="responsibilityTextBox" runat="server" Text='<%# Bind("responsibility") %>' />
                            <br />
                            request_id:
                            <asp:TextBox ID="request_idTextBox" runat="server" Text='<%# Bind("request_id") %>' />
                            <br />
                            application_status:
                            <asp:TextBox ID="application_statusTextBox" runat="server" Text='<%# Bind("application_status") %>' />
                            <br />
                            manager_name:
                            <asp:TextBox ID="manager_nameTextBox" runat="server" Text='<%# Bind("manager_name") %>' />
                            <br />
                            project_name:
                            <asp:TextBox ID="project_nameTextBox" runat="server" Text='<%# Bind("project_name") %>' />
                            <br />
                            period_month:
                            <asp:TextBox ID="period_monthTextBox" runat="server" Text='<%# Bind("period_month") %>' />
                            <br />
                            noof_vacancies:
                            <asp:TextBox ID="noof_vacanciesTextBox" runat="server" Text='<%# Bind("noof_vacancies") %>' />
                            <br />
                            skill:
                            <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                            <br />
                            program_language:
                            <asp:TextBox ID="program_languageTextBox" runat="server" Text='<%# Bind("program_language") %>' />
                            <br />
                            experience_years:
                            <asp:TextBox ID="experience_yearsTextBox" runat="server" Text='<%# Bind("experience_years") %>' />
                            <br />
                            designation:
                            <asp:TextBox ID="designationTextBox" runat="server" Text='<%# Bind("designation") %>' />
                            <br />
                            date_application:
                            <asp:TextBox ID="date_applicationTextBox" runat="server" Text='<%# Bind("date_application") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            job_description:
                            <asp:TextBox ID="job_descriptionTextBox" runat="server" Text='<%# Bind("job_description") %>' />
                            <br />
                            minimum_qualification:
                            <asp:TextBox ID="minimum_qualificationTextBox" runat="server" Text='<%# Bind("minimum_qualification") %>' />
                            <br />
                            preferred_qualification:
                            <asp:TextBox ID="preferred_qualificationTextBox" runat="server" Text='<%# Bind("preferred_qualification") %>' />
                            <br />
                            responsibility:
                            <asp:TextBox ID="responsibilityTextBox" runat="server" Text='<%# Bind("responsibility") %>' />
                            <br />
                            request_id:
                            <asp:TextBox ID="request_idTextBox" runat="server" Text='<%# Bind("request_id") %>' />
                            <br />
                            application_status:
                            <asp:TextBox ID="application_statusTextBox" runat="server" Text='<%# Bind("application_status") %>' />
                            <br />
                            manager_name:
                            <asp:TextBox ID="manager_nameTextBox" runat="server" Text='<%# Bind("manager_name") %>' />
                            <br />
                            project_name:
                            <asp:TextBox ID="project_nameTextBox" runat="server" Text='<%# Bind("project_name") %>' />
                            <br />
                            period_month:
                            <asp:TextBox ID="period_monthTextBox" runat="server" Text='<%# Bind("period_month") %>' />
                            <br />
                            noof_vacancies:
                            <asp:TextBox ID="noof_vacanciesTextBox" runat="server" Text='<%# Bind("noof_vacancies") %>' />
                            <br />
                            skill:
                            <asp:TextBox ID="skillTextBox" runat="server" Text='<%# Bind("skill") %>' />
                            <br />
                            program_language:
                            <asp:TextBox ID="program_languageTextBox" runat="server" Text='<%# Bind("program_language") %>' />
                            <br />
                            experience_years:
                            <asp:TextBox ID="experience_yearsTextBox" runat="server" Text='<%# Bind("experience_years") %>' />
                            <br />
                            designation:
                            <asp:TextBox ID="designationTextBox" runat="server" Text='<%# Bind("designation") %>' />
                            <br />
                            date_application:
                            <asp:TextBox ID="date_applicationTextBox" runat="server" Text='<%# Bind("date_application") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            application_id:
                            <asp:Label ID="application_idLabel" runat="server" Text='<%# Eval("application_id") %>' />
                            <br />
                            job_description:
                            <asp:Label ID="job_descriptionLabel" runat="server" Text='<%# Bind("job_description") %>' />
                            <br />
                            minimum_qualification:
                            <asp:Label ID="minimum_qualificationLabel" runat="server" Text='<%# Bind("minimum_qualification") %>' />
                            <br />
                            preferred_qualification:
                            <asp:Label ID="preferred_qualificationLabel" runat="server" Text='<%# Bind("preferred_qualification") %>' />
                            <br />
                            responsibility:
                            <asp:Label ID="responsibilityLabel" runat="server" Text='<%# Bind("responsibility") %>' />
                            <br />
                            request_id:
                            <asp:Label ID="request_idLabel" runat="server" Text='<%# Bind("request_id") %>' />
                            <br />
                            application_status:
                            <asp:Label ID="application_statusLabel" runat="server" Text='<%# Bind("application_status") %>' />
                            <br />
                            manager_name:
                            <asp:Label ID="manager_nameLabel" runat="server" Text='<%# Bind("manager_name") %>' />
                            <br />
                            project_name:
                            <asp:Label ID="project_nameLabel" runat="server" Text='<%# Bind("project_name") %>' />
                            <br />
                            period_month:
                            <asp:Label ID="period_monthLabel" runat="server" Text='<%# Bind("period_month") %>' />
                            <br />
                            noof_vacancies:
                            <asp:Label ID="noof_vacanciesLabel" runat="server" Text='<%# Bind("noof_vacancies") %>' />
                            <br />
                            skill:
                            <asp:Label ID="skillLabel" runat="server" Text='<%# Bind("skill") %>' />
                            <br />
                            program_language:
                            <asp:Label ID="program_languageLabel" runat="server" Text='<%# Bind("program_language") %>' />
                            <br />
                            experience_years:
                            <asp:Label ID="experience_yearsLabel" runat="server" Text='<%# Bind("experience_years") %>' />
                            <br />
                            designation:
                            <asp:Label ID="designationLabel" runat="server" Text='<%# Bind("designation") %>' />
                            <br />
                            date_application:
                            <asp:Label ID="date_applicationLabel" runat="server" Text='<%# Bind("date_application") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>

                     


                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString4 %>" SelectCommand="SELECT * FROM [application_table] WHERE ([application_id] = @application_id)">
                        <SelectParameters>
                             <asp:querystringparameter name="application_id" querystringfield="appl_id" defaultvalue="1"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                    <br />
                    <h1><strong>Registered Candidates</strong></h1>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                        <HeaderTemplate>
                            <table border="1">
                                <tr>
                                    <td><b>ID</b></td>
                                    <td><b>Name</b></td>
                                    <td><b>Experience</b></td>
                                    <td><b>Prev. Company</b></td>



                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                             <tr>
                                <td> <%# Eval("candidate_id") %> </td>
                                <td> <%# Eval("candidate_name") %> </td>
                                 <td> <%# Eval("experience_year") %> </td>
                                 <td> <%# Eval("latest_company") %> </td>
                               
                                 <td>
                                        <asp:Button ID="details" runat="server" Text="View Details"  CommandArgument='<%#Eval("candidate_id")%>'  OnClick="MyBtnHandler"/>
                                 </td>
                             </tr>
                          
                        </ItemTemplate>    
                      
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString7 %>" SelectCommand="SELECT [candidate_id], [candidate_name], [experience_year], [latest_company] FROM [candidate_table] WHERE ([application_id] = @application_id)">
                        <SelectParameters>
                            <asp:querystringparameter name="application_id" querystringfield="appl_id" defaultvalue="1"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                    <h1>
                        <br />
                        Shortlisted Candidates</h1>
                    <p>
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                             <HeaderTemplate>
                            <table border="1">
                                <tr>
                                    <td><b>ID</b></td>
                                    <td><b>Name</b></td>
                                    <td><b>Experience</b></td>
                                    <td><b>Prev. Company</b></td>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                             <tr>
                                <td> <%# Eval("candidate_id") %> </td>
                                <td> <%# Eval("candidate_name") %> </td>
                                <td> <%# Eval("experience_year") %> </td>
                                <td> <%# Eval("latest_company") %> </td>
                                <td>
                                        <asp:Button ID="details" runat="server" Text="View Details"  CommandArgument='<%#Eval("candidate_id")%>'  OnClick="MyBtnHandler"/>
                                </td>
                             </tr>
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHR_500ConnectionString8 %>" SelectCommand="SELECT [candidate_id], [candidate_name], [experience_year], [latest_company], [status] FROM [candidate_table] WHERE (([application_id] = @application_id) AND ([status] = 'shortlisted'))">
                            <SelectParameters>
                                <asp:querystringparameter name="application_id" querystringfield="appl_id" defaultvalue="1"/>
                                
                        </SelectParameters>
                        </asp:SqlDataSource>

                         


                    </p>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>