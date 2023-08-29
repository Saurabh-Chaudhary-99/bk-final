<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register here</title>
<!-- Bootstrap CSS -->
<link href="beautify/style.css" rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
	background-image: url("path/to/background-image.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.register-form {
	background-color: rgba(255, 255, 255, 0.8);
	border-radius: 10px;
	padding: 20px;
}
</style>
<%@include file="beautify/beautify.jsp"%>
</head>
<body>
	<%@include file="beautify/navbar.jsp"%>

	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card register-form">
					<div class="card-body">

						<c:if test="${not empty succMsg}">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg}">
							<p class="text-center text-success">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="register" method="post">
							<div class="mb-3">
								<h3>Registration Form</h3>
								</br> <label for="exampleInputEmail1" class="form-label">Full
									Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="enter your name" required="required"
									name="fname">
								<div id="emailHelp" class="form-text">We'll never share your
									details with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">
								<div id="emailHelp" class="form-text">We'll never share your
									email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Phone
									No.</label> <input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="phno">
								<div id="emailHelp" class="form-text">We'll never share your
									number with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<br>
	<footer class="footer mt-auto py-3 bg-dark text-white bottom">
		<div class="container text-center">
			<p class="text-muted">BookEworm &copy; 2023. All rights reserved.</p>
		</div>
	</footer>

	<!-- Bootstrap and JavaScript Libraries -->
	<script src="path/to/jquery.js"></script>
	<script src="path/to/bootstrap.js"></script>
	<!-- Your Custom JavaScript -->
	<script src="path/to/custom.js"></script>
</body>
</html>
