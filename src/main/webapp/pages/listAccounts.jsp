<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="Piotr Borek" content="">
<link href="${pageContext.request.contextPath }/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<title>Accounts List</title>
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
				<h2>LIST OF ACCOUNTS</h2>
			</div>
			<!-- /col-lg-8 -->
		</div>
		<!-- /row -->
	</div>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<div class="row">
			<div align="center" class="col-md-12 ">
				<a
					href="${pageContext.request.contextPath }/accountService/addAccount.html"><button
						class="btn">Add Account</button></a> <a
					href="${pageContext.request.contextPath }/userService/users.html"><button
						class="btn">Users List</button></a>
			</div>
		</div>
	</sec:authorize>
	<div class="row"></div>
	<c:url var="deleteAccount" value="/deleteAccount.html" />
	<table id="example" class="display pageResize" align='center'
		cellpadding="10" border='1' width="95%">
		<!-- /col-lg-8 -->
		<thead>
			<tr bgcolor="C0C0C0">
				<th>ID</th>
				<th>Internet (mb)</th>
				<th>minutes to the network</th>
				<th>minutes for all</th>
				<th>sms to all</th>
				<th>account balance</th>
				<th>activation date</th>
				<th>Edit</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="account" items="${ListAccounts}">
				<tr>
					<td>${account.getId()}</td>
					<td>${account.getInternetMb()}</td>
					<td>${account.getMinutesToTheNetwork()}</td>
					<td>${account.getMinutesForAll()}</td>
					<td>${account.getSmsToAll()}</td>
					<td>${account.getAccountBalance()}</td>
					<td>${account.getActivationDate()}</td>
					<td align="center"><sec:authorize
							access="hasRole('ROLE_ADMIN')">
							<a
								href="${pageContext.request.contextPath}/accountService/deleteAccount/${account.getId()}.html"
								onclick="return confirm('Are you sure?')">
								<button class="buttonEdit">Delete</button>
							</a>
							<a
								href="${pageContext.request.contextPath}/accountService/editAccount/${account.getId()}.html">
								<button class="buttonEdit">Edit</button>
							</a>
						</sec:authorize></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script type="text/javascript" charset="utf8"
		src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" charset="utf8"
		src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
	<script>
		$(function() {
			$("#example").dataTable();
			pageResize: true
		})
	</script>
</body>
</html>