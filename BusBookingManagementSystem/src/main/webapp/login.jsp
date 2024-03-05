<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="css/style copy.css">
</head>
<body>
	<input type="hidden" id="status"
		value="<%=((HttpServletRequest) request).getAttribute("status")%>">
	<form action="Loginform" method="post">
		<section
			style="background-image: url('images/bus.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat;">
			<div class="signin">

				<div class="content">

					<h2>Sign In</h2>

					<div class="form">

						<div class="inputBox">

							<input type="text" name="email1" required> <i>Username</i>

						</div>

						<div class="inputBox">

							<input type="password" name="pass1" required> <i>Password</i>

						</div>

						<div class="links">
							<a href="forgotPassword.jsp">Forgot Password?</a> <a href="#"></a>
							<a href="register.jsp"> Signup </a>

						</div>

						<div class="inputBox">

							<input type="submit" value="Login">

						</div>

					</div>

				</div>

			</div>

		</section>
	</form>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
    var status = document.getElementById("status").value;
    if (status && status === "failed") {
        swal("Error!", "Sorry Wrong Username or Password", "error");
    }
</script>

</body>
</html>





