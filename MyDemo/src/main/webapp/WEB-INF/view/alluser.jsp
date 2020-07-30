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
		<c:when test="${model=='MODE_ALLUSER'}">
			<div class="container text-center">
				<h3>ALL USERS</h3>
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">UserName</th>
							<th scope="col">FirstName</th>
							<th scope="col">LastName</th>
							<th scope="col">Age</th>
							<th scope="col">Delete</th>
							<th scope="col">Update</th>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach var="user" items="${user}">
							<tr>
								<th scope="row">${user.id}</th>
								<td>${user.username}</td>
								<td>${user.firstname}</td>
								<td>${user.lastname}</td>
								<td>${user.age}</td>
								<td><a href="delete-user?id=${user.id}">delete</a></td>
								<td><a href="edit-user?id=${user.id}">update</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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