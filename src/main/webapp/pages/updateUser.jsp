<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <script src="../js/jquery-1.11.0.min.js"></script>
    <meta name="_csrf" content="${_csrf.token}" />
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}" />
    <title>Update User</title>
</head>
<body>
<h1>
    Add a User
</h1>

<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
 
	
		<!-- For login user -->
		<c:url value="/updateuser" var="updateUrl" />
		<form action="${updateUrl}" method="post" id="logoutForm">
			
		
<h1>cos tam</h1>
 
 </form>

	

 
 
 
 
<%--  <c:url var="addAction" value="/person/add" ></c:url> --%>
 
<%--  <c:url value="/userService/updateuser" var="updateUrl"/>
<form action="${updateUrl}" method="post">   --%>

<%-- <table>
    <c:if test="${!empty user.name}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
    </tr>
    <tr>
        <td>
            <form:label path="surname">
                <spring:message text="Surname"/>
            </form:label>
        </td>
        <td>
            <form:input path="surname" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <c:if test="${!empty user.name}">
                <input type="submit"
                    value="<spring:message text="Edit User"/>" />
            </c:if>
            <c:if test="${empty user.name}">
                <input type="submit"
                    value="<spring:message text="Add User"/>" />
            </c:if>
        </td>
    </tr>
</table>  
</form>
<br>
<h3>Persons List</h3>
<c:if test="${!empty getAllUsers}">
    <table class="tg">
    <tr>
        <th width="80">Person ID</th>
        <th width="120">Person Name</th>
        <th width="120">Person Surname</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
    </tr>
    <c:forEach items="${getAllUsers}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.country}</td>
            <td><a href="<c:url value='/edit/${user.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/remove/${user.id}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    </table>
</c:if> --%>
</body>
</html>