<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Lost Some Sprockets</title>
</head>
<body>
	<jsp:include page="components/navbar.jsp"></jsp:include>
	<div class="container">
		<c:if test="${error == 1}">
			<h3>There were no ships listed under that empire in our ship yard.</h3>
		</c:if>
		<c:if test="${error == 2}">
			<h3>There were no ships listed under that type in our ship yard.</h3>
		</c:if>
		<c:if test="${error == 6}">
			<h3>Ship could not be added to the Database</h3>
		</c:if>
	</div>
</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>