<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Add Ship to Ship Yard</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>

	<div id="shipForm" class="container">

		<form:form action="${action}" method="POST" modelAttribute="ship">
			<form:input type="hidden" path="id"/>
			<form:input type="hidden" path="image"/>
			<form:label path="name">Name:</form:label>
			<form:input path="name" required="required" />
			<form:errors path="name" />
			<form:label path="empire">Empire:</form:label>
			<form:select path="empire">
				<option value="AMARR">Amarr</option>
				<option value="CALDARI">Caldari</option>
				<option value="GALLENTE">Gallente</option>
				<option value="MINMATAR">Minmatar</option>
			</form:select>
			<form:label path="type">Type:</form:label>
			<form:select path="type">
				<option value="FRIGATE">Frigate</option>
				<option value="CRUISER">Cruiser</option>
				<option value="BATTLECRUISER">Battlecruiser</option>
				<option value="BATTLESHIP">Battleship</option>
			</form:select>
			<form:label path="speedWarp">Warp Speed:</form:label>
			<form:input path="speedWarp" />
			<form:errors path="speedWarp" />
			<form:label path="speedVelocity">Max Velocity:</form:label>
			<form:input path="speedVelocity" />
			<form:errors path="speedVelocity" />
			<form:label path="timeToWarp">Time to Warp:</form:label>
			<form:input path="timeToWarp" />
			<form:errors path="timeToWarp" />
			<form:label path="radarRange">Radar Range:</form:label>
			<form:input path="radarRange" />
			<form:errors path="radarRange" />
			<form:label path="cargoCapacity">Cargo Capacity:</form:label>
			<form:input path="cargoCapacity" />
			<form:errors path="cargoCapacity" />
			<form:label path="mass">Mass:</form:label>
			<form:input path="mass" />
			<form:errors path="mass" />
			<form:label path="description">Description:</form:label>
			<form:input path="description" />
			<form:errors path="description" />
			<form:label path="cost">Cost:</form:label>
			<form:input path="cost" />
			<form:errors path="cost" />
			<input type="submit" value="Commit" />
		</form:form>

	</div>

</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>