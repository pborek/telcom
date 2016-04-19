<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
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
<title>Add Account</title>
</head>
<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a
						href="${pageContext.request.contextPath }/logout">Logout</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-left">
				<li class="active"><a
					href="${pageContext.request.contextPath }/accountService/accounts">Accounts
						List</a></li>
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
				<h2>ADD ACCOUNT</h2>
			</div>
			<!-- /col-lg-8 -->
		</div>
		<!-- /row -->
	</div>
	<fieldset>
		<div align="center">
			<s:form method="post" commandName="account" action="addAccount.html">
				<table cellpadding="2" cellspacing="2">
					<tr>
						<td>Internet (mb)</td>
						<td><s:input path="internetMb" /></td>
					</tr>
					<tr>
						<td>Minutes to the network</td>
						<td><s:input path="minutesToTheNetwork" /></td>
					</tr>
					<tr>
						<td>Minutes for all</td>
						<td><s:input path="minutesForAll" /></td>
					</tr>
					<tr>
						<td>Sms to all</td>
						<td><s:input path="smsToAll" /></td>
					</tr>
					<tr>
						<td>Account ballance</td>
						<td><s:input path="accountBalance" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input class="btn" type="submit" value="Save"></td>
					</tr>
				</table>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</s:form>
		</div>
	</fieldset>
</body>
</html>