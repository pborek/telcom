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
<meta name="author" content="">
<link href="${pageContext.request.contextPath }/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/main.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<title>My Profile</title>
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
						href="${pageContext.request.contextPath }/">Home</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 centered">
				<h2>MY PROFILE</h2>
			</div>
			<!-- /col-lg-8 -->
		</div>
		<!-- /row -->
	</div>
	<fieldset>
		<div align="center">
			<s:form method="post" commandName="user1" action="user">
				<table cellpadding="2" cellspacing="2">
					<tr>
						<td>Id</td>
						<td><s:input path="id" readonly="true" /></td>
					</tr>
					<tr>
						<td>Login</td>
						<td><s:input path="login" readonly="true" /></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><s:input path="name" /></td>
					</tr>
					<tr>
						<td>Surname</td>
						<td><s:input path="surname" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><s:input path="password" /></td>
					</tr>
					<tr>
						<td>Pesel</td>
						<td><s:input path="pesel" /></td>
					</tr>
					<tr>
						<td>Street</td>
						<td><s:input path="street" /></td>
					</tr>
					<tr>
						<td>PostCode</td>
						<td><s:input path="postCode" /></td>
					</tr>
					<tr>
						<td>Flat Number</td>
						<td><s:input path="flatNr" /></td>
					</tr>
					<tr>
						<td>Home Number</td>
						<td><s:input path="homeNr" /></td>
					</tr>
					<tr>
						<td>City</td>
						<td><s:input path="city" /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><s:input path="email" /></td>
					</tr>
					<tr>
						<td>Basic Phone</td>
						<td><s:input path="basicPhone" /></td>
						<s:input type="hidden" path="accountId" />
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input class="btn" type="submit" value="Save"
							onclick="return confirm('Do you want to apply changes?')"></td>
					</tr>
				</table>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</s:form>
		</div>
	</fieldset>
</body>
</html>