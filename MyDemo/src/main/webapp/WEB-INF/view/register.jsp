<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<title>Spring User</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="/home">Spring User</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item "><a class="nav-link" href="/login">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="/register">Registration</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="/show-user">All
						User</a></li>
			</ul>
		</div>
	</nav>
	
	<c:choose>
		<c:when test="${model=='MODE_REGISTER'}">
			<div class="container text-center">
				<h3>Registration</h3>

				<form action="home" method="POST">
					<input type="hidden" name="id" value="${user.id}">
					<div class="form-group col-md-8">
						<input type="text" class="form-control" placeholder="UserName"
							name="username" value="${user.username}" onkeyup="value=value.replace(/[\W]/g,'')">
					</div>
					<div class="form-group form-row col">
						<div class="col col-md-4">
							<input type="text" class="form-control" placeholder="First name"
								name="firstname" value="${user.firstname}"onkeyup="value=value.replace(/[^a-zA-z]/g,'')">
						</div>
						<div class="col col-md-4">
							<input type="text" class="form-control" placeholder="Last name"
								name="lastname" value="${user.lastname}" onkeyup="value=value.replace(/[^a-zA-z]/g,'')">
						</div>
					</div>
					<div class="form-group form-row col-md-4">
						<div class="col-7">
							<input type="text" class="form-control" placeholder="age"
								name="age" value="${user.age}" onkeyup="value=value.replace(/[^\d]/g,'')">
						</div>

					</div>
					<div class="form-group col-md-8">
						<input type="password" class="form-control" placeholder="Password"
							name="password" value="${user.password}" >
					</div>
					<div class="form-group col">
						<button type="submit" class="btn btn-danger" value="Register">Register</button>
					</div>

				</form>

			</div>
		</c:when>
		
	</c:choose>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>