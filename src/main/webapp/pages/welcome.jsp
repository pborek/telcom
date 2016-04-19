<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="${pageContext.request.contextPath }/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<title>Welcome</title>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle"></button>
				<a class="navbar-brand" href="${pageContext.request.contextPath }"></a>
			</div>
			<div class="navbar-collapse collapse">
				<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a
							href="${pageContext.request.contextPath }/logout">Logout</a></li>
					</ul>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<ul class="nav navbar-nav navbar-left">
						<li class="active"><a
							href="${pageContext.request.contextPath }/login">Login</a></li>
					</ul>
				</sec:authorize>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 centered">

				<h2> </h2>
				
				<h2> </h2>
				
				<h2> </h2>
				<h2>WELCOME</h2>
				<h2>IN</h2>
				<h1>TeleCom</h1>
			</div>
			<!-- /col-lg-8 -->
		</div>
		<!-- /row -->
	</div>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div class="row">
			<div align="right" class="col-md-6  ">
				<a href="${pageContext.request.contextPath }/userService/users.html"><button
						class="btn">Users</button></a>
			</div>
			<div align="left" class="col-md-6  ">
				<a
					href="${pageContext.request.contextPath }/accountService/accounts.html"><button
						class="btn">Accounts</button></a>
			</div>
		</div>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_USER')">
		<div class="row">
			<div align="right" class="col-md-6  ">
				<a href="${pageContext.request.contextPath }/userService/user"><button
						class="btn">My Profile</button></a>
			</div>
			<div align="left" class="col-md-6  ">
				<a
					href="${pageContext.request.contextPath }/accountService/account.html"><button
						class="btn">My Account</button></a>
			</div>
		</div>
	</sec:authorize>
</body>
</html>