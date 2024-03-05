<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">

<head>

<meta charset="UTF-8">

<title>Register</title>
<link rel="stylesheet" href="css/style copy.css">

</head>

<body>
	<!-- partial:index.partial.html -->
	<form action="regForm" method="post">
		
		<section
			style="background-image: url('images/buss.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat;">
			<div class="signin">

				<div class="content">

					<h2>Registration Form</h2>

					<div class="form">

						<div class="inputBox">

							<input type="text" name="name1" required> <i>First
								name</i>

						</div>

						<div class="inputBox">

							<input type="text" name="lastname1" required> <i>Last
								name</i>

						</div>
						<div class="inputBox">

							<input type="text" name="email1" required> <i>E-mail</i>

						</div>

						<div class="inputBox">

							<input type="password" name="pass1" required> <i>Password</i>

						</div>
						<div class="inputBox">
							<select name="gender1" class="form-control" required>
								<option>Select Gender</option>
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>


						<div class="inputBox">
							<select name="city1" class="form-control" required>
								<option>Select city</option>
								<option>Amravati</option>
								<option>pune</option>
								<option>Mumbai</option>
								<option>Nagpur</option>
								<option>None</option>
							</select>
						</div>

						<div class="links">
							<label> Already have an Account ?</label> <a href="login.jsp">
								Login </a>

						</div>


						<div class="inputBox">

							<input type="submit" value="Register">

						</div>

					</div>

				</div>

			</div>

		</section>
		<!-- partial -->
	</form>
</body>

</html>