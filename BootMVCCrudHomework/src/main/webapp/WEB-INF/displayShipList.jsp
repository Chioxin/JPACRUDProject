<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="../css/shipcard.css" />
<head>
<meta charset="UTF-8">
<title>List of Ships</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>

	<c:forEach var="ship" items="${displayShipList}">
		<div id="shipContainer" class="container">
			<div class="row">
				<div id="shipImage" class="col-3">
					<a href="displayShip.do?shipId=${ship.id}"><img class="rounded-lg" src="${ship.image }" /></a>
				</div>

				<div id="shipInfo" class="col-9">
					<div class="container">
						<div id="shipTitle" class="row">
							<div class="col-4">${ship.name} </div>
							<div class="col-4">${ship.type} </div>
							<div class="col-4">${ship.empire} </div>
						</div>
						<div id="shipDescription" class="row">
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