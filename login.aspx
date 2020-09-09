<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V12</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
    <style type="text/css">
        .auto-style1 {
            height: 261px;
        }
        .auto-style2 {
            font-family: Montserrat-Bold;
            font-size: 15px;
            line-height: 1.5;
            color: #e0e0e0;
            width: 100%;
            height: 50px;
            border-radius: 25px;
            background: #30DB1A;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 25px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
            position: relative;
            z-index: 1;
            left: 0px;
            top: 0px;
        }
    </style>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" >
			<div class="wrap-login100 p-t-190 p-b-30">
				<form id="form1" runat="server">
					<div class="login100-form-avatar">
						<img src="images/logo.png" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						GreenHR Login</span><div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						&nbsp;<span class="focus-input100"></span><span class="symbol-input100"><i class="fa fa-user"></i></span>
						<asp:TextBox ID="TextBox1" runat="server" CssClass="input100"></asp:TextBox>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						&nbsp;<span class="focus-input100"></span><span class="symbol-input100"><i class="fa fa-key"></i></span>
						<asp:TextBox ID="TextBox2" TextMode ="Password" runat="server" CssClass="input100"></asp:TextBox>
					</div>

					<div class="container-login100-form-btn p-t-10">
						<asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click1" Text="Login" />
					</div>
					<br />
					<div class="auto-style1" style="align-content:center">
						<a href="request_password.aspx" class="txt1">
							Forgot Username / Password?
						</a>
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
					    <br />
					</div>

					</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>