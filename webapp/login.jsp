<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
body {
	background-image: url("images/login.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.login-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.login-card {
	background-color: rgba(255, 255, 255, 0.8);
	border-radius: 10px;
	padding: 20px;
	max-width: 400px;
	width: 90%;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
}

.form-group input {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.login-btn {
	background-color: #007bff;
	color: #fff;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
}

.login-btn:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="login-container">
		<div class="login-card">
			<h2 style="text-align: center;">Login</h2>
			<form action="Login" method="post">
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						id="username" name="username" required name="name">
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						id="password" name="password" required name="password">
				</div>
				<button type="submit" class="login-btn">Login</button>
				<div class="text-center">
					<a href="register.jsp">New here? Register</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
