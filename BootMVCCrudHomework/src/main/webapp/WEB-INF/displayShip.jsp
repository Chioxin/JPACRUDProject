<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Display Ship</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>

	<div class="container">
		<ul>
			<li>${displayShip.name }</li>
			<li>${displayShip.empire }</li>
			<li>${displayShip.type }</li>
			<li>${displayShip.speedWarp }</li>
			<li>${displayShip.speedVelocity }</li>
			<li>${displayShip.timeToWarp }</li>
			<li>${displayShip.radarRange }</li>
			<li>${displayShip.cargoCapacity }</li>
			<li>${displayShip.mass }</li>
			<li>${displayShip.description }</li>
			<li>${displayShip.cost }</li>
		</ul>
	
	<a class="btn btn-primary" href="updateShip.do">Modify</a>
	<a class="btn btn-danger" href="destroyShip.do">Remove</a>

	</div>


</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>