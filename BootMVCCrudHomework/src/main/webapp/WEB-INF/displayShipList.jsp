<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>List of Ships</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>

	<div id="shipList" class="container">
		<ol>
			<c:forEach var="ship" items="${displayShipList}">
				<div id="shipCard">
				<li> <a href="displayShip.do?shipId=${ship.id}">${ship.name } </a> </li>
				</div>
			</c:forEach>
		</ol>
	</div>

</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>