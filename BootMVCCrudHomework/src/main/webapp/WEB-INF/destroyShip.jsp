<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Destroy Ship</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>
<br>
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-4">
				<p>
					Once this ship, ${ship.name} ${ship.type} is destroyed, it cannot
					be recovered. <br> Are you certain?
				</p>
			</div>
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-2">
				<form action="home.do" method="GET">
					<input class="btn btn-success" value="KEEP IT" type="submit" />
				</form>
			</div>
			<div class="col-md-2">
				<form action="destroyShip.do" method="POST">
					<input class="btn btn-danger" value="DESTROY IT" type="submit" />
				</form>
			</div>
		</div>
	</div>
</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>