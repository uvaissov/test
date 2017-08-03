<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
<table style="width: 100%;">
<tr><td colspan="3"></td>Logo</tr>
<tr>
	<td><div class="generic-container" style="position: inherit;"></div></td>
	<td><div class="generic-container" style="position: inherit;"></div></td>
	<td><div class="generic-container"  style="position: inherit;">
			<sec:authorize access="hasRole('USER') or hasRole('ADMIN') or hasRole('DBA')">
				<%@include file="authheader.jsp" %>
				<a href="<c:url value="/manager/list" />">Users</a>
			</sec:authorize>	
			<sec:authorize access="isAnonymous()">
			 	<div class="well">
			 		<a href="<c:url value='/login' />">Login</a>
			 	</div>
		 	</sec:authorize>
	   	</div>
	</td>
</tr>
<tr>
	<td  colspan="3"><div class="generic-container"  style="position: inherit;"></div></td>
</tr>
</table>
	
</body>
</html>