<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="Piotr Borek" content="">
<link href="${pageContext.request.contextPath }/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css"
	rel="stylesheet">
		<!-- ##### -->
<link rel="stylesheet" type="text/css"
	href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
		<!-- ##### -->
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<title>User List</title>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle"></button>
				<a class="navbar-brand" href="${pageContext.request.contextPath }"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a
						href="${pageContext.request.contextPath }/logout">Logout</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-left">
					<li class="active"><a
						href="${pageContext.request.contextPath }/">Home</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 centered">

				<h2>LIST OF USERS</h2>
			</div>
			<!-- /col-lg-8 -->
		</div>
		<!-- /row -->
	</div>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div class="row">
			<div align="center" class="col-md-12">
				<a
					href="${pageContext.request.contextPath }/userService/addUser.html"><button
						class="btn">Add User</button></a> <a
					href="${pageContext.request.contextPath }/accountService/accounts.html"><button
						class="btn">Accounts</button></a>
			</div>
		</div>
	</sec:authorize>
	<c:url var="deleteUser" value="/deleteUser.html" />
		<!-- ##### -->
	<table id="myTable" class="display pageResize" align='center'
		cellpadding="10" border='1' width="95%">
		<!-- /col-lg-8 -->
		<thead>
			<tr bgcolor="C0C0C0">
				<th>ID</th>
				<th>Login</th>
				<th>Name</th>
				<th>Surname</th>
				<th>Password</th>
				<!-- <th>Pesel</th> -->
				<th>Street</th>
				<th>Post Code</th>
				<th>Flat Nr</th>
				<th>Home Nr</th>
				<th>City</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Ac.ID</th>
				<th>Edit</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${ListUsers}">

				<tr>
					<td>${user.getId()}</td>
					<td>${user.getLogin()}</td>
					<td>${user.getName()}</td>
					<td>${user.getSurname()}</td>
					<td>${user.getPassword()}</td>
					<%--<td>${user.getPesel()}</td> --%>
					<td>${user.getStreet()}</td>
					<td>${user.getPostCode()}</td>
					<td>${user.getFlatNr()}</td>
					<td>${user.getHomeNr()}</td>
					<td>${user.getCity()}</td>
					<td>${user.getBasicPhone()}</td>
					<td>${user.getEmail()}</td>
					<td>${user.getAccountId()}</td>
					<td align="center"><sec:authorize
							access="hasRole('ROLE_ADMIN')">
							<a
								href="${pageContext.request.contextPath}/userService/deleteUser/${user.getId()}.html"
								onclick="return confirm('Are you sure?')">
								<button class="buttonEdit">Delete</button>
							</a>
							<br />
							<br />
							<a
								href="${pageContext.request.contextPath}/userService/editUser/${user.getId()}.html">
								<button class="buttonEdit">Edit</button>
							</a>
						</sec:authorize></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- ##### -->
	<script type="text/javascript" charset="utf8"
		src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" charset="utf8"
		src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
	<script>
		$(function() {
			$("#myTable").dataTable();
			pageResize: true
		})
	</script>
	<!--  ##### -->
</body>
</html>
