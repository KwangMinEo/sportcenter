<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CenterReservation.jsp</title>

<!-- jquery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
#headbg {
	background: url('images/football.jpg') no-repeat center fixed;
	background-size: cover;
	height: 150pt;
}

.head1 {
	font-size: 20pt;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="container-fluid" id="headbg" align="center">
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<font color="white" size="20pt">예약화면</font>
			</div>
			<div class="col">
				<label for="salutation"><font
					style="padding-right: 5pt; padding-top: 20pt; color: white;">경기장:
				</font></label> <select name="salutation" id="salutation">
					<option disabled selected>경기장 선택</option>
					<option>축구장</option>
					<option>농구장</option>
					<option>야구장</option>
					<option>수영장</option>
					<option>태니스장</option>
				</select>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-sm bg-success justify-content-center">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Link 1</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link 2</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link 3</a></li>
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Dropdown link </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Link 1</a> <a
							class="dropdown-item" href="#">Link 2</a> <a
							class="dropdown-item" href="#">Link 3</a>
					</div>
				</li>
			</ul>
		</nav>
	</div>

</body>
</html>
