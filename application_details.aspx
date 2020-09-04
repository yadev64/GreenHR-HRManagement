<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="application_details.aspx.cs" Inherits="WebApplication1.application_details" %>

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
                    <h1>Application Details</h1>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="appl_id" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            appl_id:
                            <asp:Label ID="appl_idLabel1" runat="server" Text='<%# Eval("appl_id") %>' />
                            <br />
                            job_desc:
                            <asp:TextBox ID="job_descTextBox" runat="server" Text='<%# Bind("job_desc") %>' />
                            <br />
                            min_qualification:
                            <asp:TextBox ID="min_qualificationTextBox" runat="server" Text='<%# Bind("min_qualification") %>' />
                            <br />
                            pref_qualification:
                            <asp:TextBox ID="pref_qualificationTextBox" runat="server" Text='<%# Bind("pref_qualification") %>' />
                            <br />
                            resp:
                            <asp:TextBox ID="respTextBox" runat="server" Text='<%# Bind("resp") %>' />
                            <br />
                            req_id:
                            <asp:TextBox ID="req_idTextBox" runat="server" Text='<%# Bind("req_id") %>' />
                            <br />
                            appstatus:
                            <asp:TextBox ID="appstatusTextBox" runat="server" Text='<%# Bind("appstatus") %>' />
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
                            pgm_languages:
                            <asp:TextBox ID="pgm_languagesTextBox" runat="server" Text='<%# Bind("pgm_languages") %>' />
                            <br />
                            exp_years:
                            <asp:TextBox ID="exp_yearsTextBox" runat="server" Text='<%# Bind("exp_years") %>' />
                            <br />
                            desg:
                            <asp:TextBox ID="desgTextBox" runat="server" Text='<%# Bind("desg") %>' />
                            <br />
                            dateapp:
                            <asp:TextBox ID="dateappTextBox" runat="server" Text='<%# Bind("dateapp") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            appl_id:
                            <asp:TextBox ID="appl_idTextBox" runat="server" Text='<%# Bind("appl_id") %>' />
                            <br />
                            job_desc:
                            <asp:TextBox ID="job_descTextBox" runat="server" Text='<%# Bind("job_desc") %>' />
                            <br />
                            min_qualification:
                            <asp:TextBox ID="min_qualificationTextBox" runat="server" Text='<%# Bind("min_qualification") %>' />
                            <br />
                            pref_qualification:
                            <asp:TextBox ID="pref_qualificationTextBox" runat="server" Text='<%# Bind("pref_qualification") %>' />
                            <br />
                            resp:
                            <asp:TextBox ID="respTextBox" runat="server" Text='<%# Bind("resp") %>' />
                            <br />
                            req_id:
                            <asp:TextBox ID="req_idTextBox" runat="server" Text='<%# Bind("req_id") %>' />
                            <br />
                            appstatus:
                            <asp:TextBox ID="appstatusTextBox" runat="server" Text='<%# Bind("appstatus") %>' />
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
                            pgm_languages:
                            <asp:TextBox ID="pgm_languagesTextBox" runat="server" Text='<%# Bind("pgm_languages") %>' />
                            <br />
                            exp_years:
                            <asp:TextBox ID="exp_yearsTextBox" runat="server" Text='<%# Bind("exp_years") %>' />
                            <br />
                            desg:
                            <asp:TextBox ID="desgTextBox" runat="server" Text='<%# Bind("desg") %>' />
                            <br />
                            dateapp:
                            <asp:TextBox ID="dateappTextBox" runat="server" Text='<%# Bind("dateapp") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            appl_id:
                            <asp:Label ID="appl_idLabel" runat="server" Text='<%# Eval("appl_id") %>' />
                            <br />
                            job_desc:
                            <asp:Label ID="job_descLabel" runat="server" Text='<%# Bind("job_desc") %>' />
                            <br />
                            min_qualification:
                            <asp:Label ID="min_qualificationLabel" runat="server" Text='<%# Bind("min_qualification") %>' />
                            <br />
                            pref_qualification:
                            <asp:Label ID="pref_qualificationLabel" runat="server" Text='<%# Bind("pref_qualification") %>' />
                            <br />
                            resp:
                            <asp:Label ID="respLabel" runat="server" Text='<%# Bind("resp") %>' />
                            <br />
                            req_id:
                            <asp:Label ID="req_idLabel" runat="server" Text='<%# Bind("req_id") %>' />
                            <br />
                            appstatus:
                            <asp:Label ID="appstatusLabel" runat="server" Text='<%# Bind("appstatus") %>' />
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
                            pgm_languages:
                            <asp:Label ID="pgm_languagesLabel" runat="server" Text='<%# Bind("pgm_languages") %>' />
                            <br />
                            exp_years:
                            <asp:Label ID="exp_yearsLabel" runat="server" Text='<%# Bind("exp_years") %>' />
                            <br />
                            desg:
                            <asp:Label ID="desgLabel" runat="server" Text='<%# Bind("desg") %>' />
                            <br />
                            dateapp:
                            <asp:Label ID="dateappLabel" runat="server" Text='<%# Bind("dateapp") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHRConnectionString4 %>" SelectCommand="SELECT * FROM [application_table] WHERE [appl_id]=<%=appl_id %>"></asp:SqlDataSource>
                    
                    <br />
                    <h1><strong>Registered Candidates</strong></h1>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
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
                                <td> <%# Eval("cand_id") %> </td>
                                <td> <%# Eval("cand_name") %> </td>
                                 <td> <%# Eval("exp_years") %> </td>
                                 <td> <%# Eval("latest_company") %> </td>
                               
                                 <td>
                                        <asp:Button ID="details" runat="server" Text="View Details"  CommandArgument='<%#Eval("cand_id")%>'  OnClick="MyBtnHandler"/>
                                 </td>
                             </tr>
                          
                        </ItemTemplate>    
                      
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHRConnectionString3 %>" SelectCommand="SELECT [cand_id], [cand_name], [exp_years], [latest_company] FROM [candidate_table] WHERE [appl_id]= <%=applid %> ORDER BY [reg_date] DESC"></asp:SqlDataSource>
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
                                <td> <%# Eval("cand_id") %> </td>
                                <td> <%# Eval("cand_name") %> </td>
                                <td> <%# Eval("exp_years") %> </td>
                                <td> <%# Eval("latest_company") %> </td>
                                <td>
                                        <asp:Button ID="details" runat="server" Text="View Details"  CommandArgument='<%#Eval("cand_id")%>'  OnClick="MyBtnHandler"/>
                                </td>
                             </tr>
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHRConnectionString5 %>" SelectCommand="SELECT [cand_id], [cand_name], [exp_years], [latest_company], [status] FROM [candidate_table] WHERE [appl_id]= <%=applid %> AND [status]='shortlisted'"></asp:SqlDataSource>
                    </p>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>