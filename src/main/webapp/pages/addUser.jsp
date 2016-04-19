<%@page import="com.borek.telecom.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
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
<title>Add User</title>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
</head>
<body>
	<var id="list">"${ListUsers}"</var>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-collapse collapse"></div>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a
					href="${pageContext.request.contextPath }/logout">Logout</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a
					href="${pageContext.request.contextPath }/userService/users">Users
						List</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a
					href="${pageContext.request.contextPath }/">Home</a></li>
			</ul>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 centered">
				<h2>ADD USER</h2>
			</div>
			<!-- /col-lg-8 -->
		</div>
		<!-- /row -->
	</div>
	<fieldset>
		<div align="center">
			<s:form name="myform" method="post" commandName="user"
				action="addUser.html" onsubmit="return validateform()">
				<table cellpadding="2" cellspacing="2">
					<tr>
						<td>Login</td>
						<td><s:input path="login" /></td>
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
					</tr>
					<tr>
						<td>AccountId</td>
						<td><s:input path="accountId" value="1" /></td>
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
<script>
	function validateform() {
		var login = document.myform.login.value;
		var accountId = document.myform.accountId.value;
		$.extend({
			xResponse : function(url, data) {
				// local var
				var theResponse = null;
				// jQuery ajax
				$.ajax({
					url : url,
					type : 'GET',
					data : data,
					dataType : "html",
					async : false,
					success : function(respText) {
						theResponse = respText;
					}
				});
				// Return the response text
				return theResponse;
			}
		});
		var xData = $.xResponse(
				'${pageContext.request.contextPath}/userService/checkLogin/?login='
						+ login, {
					issession : 1,
					selector : true
				});
		var xData1 = $.xResponse(
				'${pageContext.request.contextPath}/accountService/checkAccount/?accountID='
						+ accountId, {
					issession : 1,
					selector : true
				});
		if (login == null || login == "") {
			alert("Login can't be blank");
			return false;
		} else if (xData == "false") {
			alert("Login: \"" + login + "\" already exist");
			return false;
		}
		if (accountId == null || accountId == "") {
			alert("Account ID can't be blank");
			return false;
		} else if (xData1 == "true") {
			alert("Account ID: \"" + accountId + "\" not exist");
			return false;
		}
	}
</script>
</html>