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
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style2">
                    
                    <br />
                    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="cand_id" DataSourceID="SqlDataSource1" GridLines="Both">
                        <EditItemTemplate>
                            cand_id:
                            <asp:Label ID="cand_idLabel1" runat="server" Text='<%# Eval("cand_id") %>' />
                            <br />
                            cand_name:
                            <asp:TextBox ID="cand_nameTextBox" runat="server" Text='<%# Bind("cand_name") %>' />
                            <br />
                            skills:
                            <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                            <br />
                            pgm_language:
                            <asp:TextBox ID="pgm_languageTextBox" runat="server" Text='<%# Bind("pgm_language") %>' />
                            <br />
                            high_qualification:
                            <asp:TextBox ID="high_qualificationTextBox" runat="server" Text='<%# Bind("high_qualification") %>' />
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
                            exp_years:
                            <asp:TextBox ID="exp_yearsTextBox" runat="server" Text='<%# Bind("exp_years") %>' />
                            <br />
                            notice_months:
                            <asp:TextBox ID="notice_monthsTextBox" runat="server" Text='<%# Bind("notice_months") %>' />
                            <br />
                            latest_company:
                            <asp:TextBox ID="latest_companyTextBox" runat="server" Text='<%# Bind("latest_company") %>' />
                            <br />
                            latest_desg:
                            <asp:TextBox ID="latest_desgTextBox" runat="server" Text='<%# Bind("latest_desg") %>' />
                            <br />
                            curr_sal:
                            <asp:TextBox ID="curr_salTextBox" runat="server" Text='<%# Bind("curr_sal") %>' />
                            <br />
                            reg_date:
                            <asp:TextBox ID="reg_dateTextBox" runat="server" Text='<%# Bind("reg_date") %>' />
                            <br />
                            age:
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                            <br />
                            dob:
                            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                            <br />
                            interview_date:
                            <asp:TextBox ID="interview_dateTextBox" runat="server" Text='<%# Bind("interview_date") %>' />
                            <br />
                            req_id:
                            <asp:TextBox ID="req_idTextBox" runat="server" Text='<%# Bind("req_id") %>' />
                            <br />
                            cand_email:
                            <asp:TextBox ID="cand_emailTextBox" runat="server" Text='<%# Bind("cand_email") %>' />
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
                            cand_name:
                            <asp:TextBox ID="cand_nameTextBox" runat="server" Text='<%# Bind("cand_name") %>' />
                            <br />
                            skills:
                            <asp:TextBox ID="skillsTextBox" runat="server" Text='<%# Bind("skills") %>' />
                            <br />
                            pgm_language:
                            <asp:TextBox ID="pgm_languageTextBox" runat="server" Text='<%# Bind("pgm_language") %>' />
                            <br />
                            high_qualification:
                            <asp:TextBox ID="high_qualificationTextBox" runat="server" Text='<%# Bind("high_qualification") %>' />
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
                            exp_years:
                            <asp:TextBox ID="exp_yearsTextBox" runat="server" Text='<%# Bind("exp_years") %>' />
                            <br />
                            notice_months:
                            <asp:TextBox ID="notice_monthsTextBox" runat="server" Text='<%# Bind("notice_months") %>' />
                            <br />
                            latest_company:
                            <asp:TextBox ID="latest_companyTextBox" runat="server" Text='<%# Bind("latest_company") %>' />
                            <br />
                            latest_desg:
                            <asp:TextBox ID="latest_desgTextBox" runat="server" Text='<%# Bind("latest_desg") %>' />
                            <br />
                            curr_sal:
                            <asp:TextBox ID="curr_salTextBox" runat="server" Text='<%# Bind("curr_sal") %>' />
                            <br />
                            reg_date:
                            <asp:TextBox ID="reg_dateTextBox" runat="server" Text='<%# Bind("reg_date") %>' />
                            <br />
                            age:
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                            <br />
                            dob:
                            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                            <br />
                            interview_date:
                            <asp:TextBox ID="interview_dateTextBox" runat="server" Text='<%# Bind("interview_date") %>' />
                            <br />
                            req_id:
                            <asp:TextBox ID="req_idTextBox" runat="server" Text='<%# Bind("req_id") %>' />
                            <br />
                            cand_email:
                            <asp:TextBox ID="cand_emailTextBox" runat="server" Text='<%# Bind("cand_email") %>' />
                            <br />
                            status:
                            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            cand_id:
                            <asp:Label ID="cand_idLabel" runat="server" Text='<%# Eval("cand_id") %>' />
                            <br />
                            cand_name:
                            <asp:Label ID="cand_nameLabel" runat="server" Text='<%# Bind("cand_name") %>' />
                            <br />
                            skills:
                            <asp:Label ID="skillsLabel" runat="server" Text='<%# Bind("skills") %>' />
                            <br />
                            pgm_language:
                            <asp:Label ID="pgm_languageLabel" runat="server" Text='<%# Bind("pgm_language") %>' />
                            <br />
                            high_qualification:
                            <asp:Label ID="high_qualificationLabel" runat="server" Text='<%# Bind("high_qualification") %>' />
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
                            exp_years:
                            <asp:Label ID="exp_yearsLabel" runat="server" Text='<%# Bind("exp_years") %>' />
                            <br />
                            notice_months:
                            <asp:Label ID="notice_monthsLabel" runat="server" Text='<%# Bind("notice_months") %>' />
                            <br />
                            latest_company:
                            <asp:Label ID="latest_companyLabel" runat="server" Text='<%# Bind("latest_company") %>' />
                            <br />
                            latest_desg:
                            <asp:Label ID="latest_desgLabel" runat="server" Text='<%# Bind("latest_desg") %>' />
                            <br />
                            curr_sal:
                            <asp:Label ID="curr_salLabel" runat="server" Text='<%# Bind("curr_sal") %>' />
                            <br />
                            reg_date:
                            <asp:Label ID="reg_dateLabel" runat="server" Text='<%# Bind("reg_date") %>' />
                            <br />
                            age:
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                            <br />
                            dob:
                            <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
                            <br />
                            interview_date:
                            <asp:Label ID="interview_dateLabel" runat="server" Text='<%# Bind("interview_date") %>' />
                            <br />
                            req_id:
                            <asp:Label ID="req_idLabel" runat="server" Text='<%# Bind("req_id") %>' />
                            <br />
                            cand_email:
                            <asp:Label ID="cand_emailLabel" runat="server" Text='<%# Bind("cand_email") %>' />
                            <br />
                            status:
                            <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
                            <br />

                        </ItemTemplate>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GreenHRConnectionString %>" SelectCommand="SELECT * FROM [candidate_table] WHERE [cand_id]=<%=cand_id %>"></asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Shortlist this candidate" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

