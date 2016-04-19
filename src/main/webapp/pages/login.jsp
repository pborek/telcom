<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
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
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<title>Login Page</title>
</head>
<body onload='document.loginForm.login.focus();'>
	<div align="center">
		<h1>Welcome in TeleCom</h1>
	</div>
	<div id="login-box" align="center">
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<c:url value="/login" var="loginUrl" />
		<form action="${loginUrl}" method="post">
			<c:if test="${param.error != null}">
				<p style="color:red;">Invalid username and password.</p>
			</c:if>
			<c:if test="${param.logout != null}">
				<p style="color:green;">You have been logged out.</p>
			</c:if>
			<p>
				<label for="login"></label> <input type="text" id="login"
					name="login" placeholder="Login" autofocus="autofocus" />
			</p>
			<p>
				<label for="password"></label> <input type="password" id="password"
					name="password" placeholder="Password" />
			</p>
			<!-- Login form with subbmit button-->
			<div align="center">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<button type="submit" class="btn">Log in</button>
			</div>
		</form>
	</div>
</body>
</html>