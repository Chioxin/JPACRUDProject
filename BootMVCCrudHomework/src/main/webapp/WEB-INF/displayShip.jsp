<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="../css/shipcard.css" />
<head>
<meta charset="UTF-8">
<title>Display Ship</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>

	<div class="container">

		<div id="shipContainer" class="container">
			<div class="row">
				<div id="shipImage" class="col-3">
					<a href="displayShip.do?shipId=${ship.id}"><img
						class="rounded-lg" src="${displayShip.image }" /></a>
				</div>

				<div id="shipInfo" class="col-9">
					<div class="container">
						<div id="shipTitle" class="row shipTitle">
							<div class="col-4">${displayShip.name}</div>
							<div class="col-4">${displayShip.type}</div>
							<div class="col-4">${displayShip.empire}</div>
						</div>
						<div id="shipDescription" class="row shipDescription">
							<div class="col">
								<p>${displayShip.description}</p>
							</div>
						</div>

					</div>

				</div>

			</div>
			<div id="statDisplay" class="row">
				<div class="col-3">
					<table class="table table-sm table-borderless tableHead">
						<thead>
							<td colspan="2">${displayShip.empire} ${displayShip.type}</td>
						</thead>
						<tbody>
							<tr>
								<td>Cost:</td>
								<td>${displayShip.cost} ISK</td>
							</tr>
							<tr>
								<td>Name:</td>
								<td>${displayShip.name}</td>
							</tr>
							<tr>
								<td>Max Velocity:</td>
								<td>${displayShip.speedVelocity} m/sec</td>
							</tr>
							<tr>
								<td>Warp Speed:</td>
								<td>${displayShip.speedWarp} AU/s</td>
							</tr>
							<tr>
								<td>Time to Warp:</td>
								<td>${displayShip.timeToWarp} s</td>
							</tr>
							<tr>
								<td>Radar Range:</td>
								<td>${displayShip.radarRange} km</td>
							</tr>
							<tr>
								<td>Cargo Capacity:</td>
								<td>${displayShip.cargoCapacity} m³</td>
							</tr>
							<tr>
								<td>Mass:</td>
								<td>${displayShip.mass} kg</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-9">
					<a class="btn btn-primary" href="updateShip.do">Modify</a> 
					<a class="btn btn-danger" href="destroyShip.do">Remove</a>
				</div>
			</div>
		</div>



	</div>

</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>