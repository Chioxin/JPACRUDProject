<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/shipcard.css" />
<head>
<meta charset="UTF-8">
<title>List of Ships</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>
<br>
	<c:forEach var="ship" items="${displayShipList}">
		<div id="shipContainer" class="container shipContainer">
			<div class="row">
				<div id="shipImage" class="col-3">
					<c:choose>
						<c:when test="${empty ship.image or ship.image == '' }">
					<a href="displayShip.do?shipId=${ship.id}"><img class="rounded-lg" src="http://games.chruker.dk/eve_online/graphics/ids/256/3117_2009.jpg" /></a>
						</c:when>
						<c:otherwise>
					<a href="displayShip.do?shipId=${ship.id}"><img class="rounded-lg" src="${ship.image }" /></a>
						</c:otherwise>
					</c:choose>
				</div>

				<div id="shipInfo" class="col-9">
					<div class="container">
						<div id="shipTitle" class="row shipTitle">
							<div class="col-4">${ship.name} </div>
							<div class="col-4">${ship.type} </div>
							<div class="col-4">${ship.empire} </div>
						</div>
						<div id="shipDescription" class="row shipDescription">
							<div class="col">
								<p>${ship.description}</p>
							</div>
						</div>
					
					</div>

				</div>

			</div>

		</div>
		
		<br>

	</c:forEach>

</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>