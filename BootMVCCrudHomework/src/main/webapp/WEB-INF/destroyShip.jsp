<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="components/bootstrapHead.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="components/navbar.jsp"></jsp:include>



	<div class="container">
		<div class="row">
			<p>Are you absolutely sure you wish to disassemble the <br>
				${ship.name } ${ship.type }?</p> <br>
			<p>This action cannot be undone.</p>
		</div>

		<div class="row">
			<div class="col">
				<form action="/" method="GET">
					<input class="btn btn-success" value="KEEP IT" type="submit" />
				</form>
			</div>
			<div class="col">
				<form action="destroyShip.do" method="POST">
					<input class="btn btn-danger" value="DESTROY IT" type="submit" />
				</form>
			</div>
		</div>
	</div>

</body>
<jsp:include page="components/bootstrapFoot.jsp"></jsp:include>
</html>