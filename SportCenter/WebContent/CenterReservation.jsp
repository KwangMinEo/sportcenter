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

	$(function(){
		$('#ab1').click(function(){
			$('#menus').html("<form id='menu1'><h1>About Me 1은 여기</h1><img src='images/goal.jpg' style='height:65%;width:65%;'></form>")
	});
  		$('#ab2').click(function(){
			 $('#menus').html("<form id=\"menu2\"><h1>About Me 2는 여기</h1><img src=\"images/football2.jpg\" style=\"height:65%;width:65%;\"></form>")	
	  });
	  	// $('#ab3').click(function(){
		// 	  $('#menus').html('<form ')

		//   });
	});

	
</script>
</head>
<body style="background-color: gray">
	<div class="container-fluid" id="headbg" align="center"
		style="padding-top: 50pt">
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<font style="color: white; font-size: 50px">예약화면</font>
			</div>
			<div class="col">
				<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
					<font style="align: right; color: white;">경기장 선택</font> </button>
					<div class="dropdown-menu">
					<a class="dropdown-item" href="#">축구장</a>
					<a class="dropdown-item" href="#">농구장</a>
					<a class="dropdown-item" href="#">야구장</a>
					<a class="dropdown-item" href="#">수영장</a>
					<a class="dropdown-item" href="#">태니스장</a>
					</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<nav
			class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center"
			style="background-color: #75dd66; margin-left: -15px; margin-right: -15px;">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Link 1</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link 2</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link 3</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Dropdown link </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Link 1</a> <a
							class="dropdown-item" href="#">Link 2</a> <a
							class="dropdown-item" href="#">Link 3</a>
					</div></li>
			</ul>
		</nav>
	</div>
	<div class="container"
		style="margin-top: 0px; margin-left: 0px; height: 100%;">
		<div class="row">
			<div class="col-sm-4" style="background-color: #59cb59;">
				<h3>
					<button id="ab">메인</button>
				</h3>
				<h3>
					<button id="ab1">About Me 1</button>
				</h3>
				<h3>
					<button id="ab2">About Me 2</button>
				</h3>
				<h3>
					<button id="ab3">예약 화면</button>
				</h3>
				<ul class="nav nav-pills flex-column">
					<li class="nav-item"><a class="nav-link active" href="#">Active</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
					</li>
				</ul>
			</div>
			<div id="menus" class="col-sm-8" style="padding-top: 20px; padding-left: 20px;">
				<h1>축구장</h1>
				<h1>농구장</h1>
				<h1>야구장</h1>
				<h1>수영장</h1>
				<h1>선택하기</h1>
			</div>
		</div>
	</div>
	<!-- <div align="center">
		<jsp:include page="Footter.jsp" />
	</div> -->
</body>
</html>