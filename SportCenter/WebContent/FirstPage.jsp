<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스포츠센터</title>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- ///////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- 부트스트렙 로그인 -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">


<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

<!-- Bootstrap core CSS -->
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- 부트스트랩 배경 및 네비게이터 -->
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="css/agency.min.css" rel="stylesheet">

<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!--   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion({
			collapsible : true
		});
	});
</script>
<body class="text-center">

	<!-- 상단 네비게이터 -->
	<!-- Navigation -->

	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Sport
				Center</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link" href="#section1">어서오세요</a></li>
					<li class="nav-item"><a class="nav-link" href="#section2">경기장지도</a></li>
					<li class="nav-item"><a class="nav-link" href="#section3">경기장소개</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> Section 4 </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#section41">Link 1</a> <a
								class="dropdown-item" href="#section42">Link 2</a>
						</div></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">예약확인</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">개인정보수정</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">내 게시물 및 댓글 확인</a></li>
				</ul>
			</div>
		</div>
	</nav>

<div id="section1">
	<!-- 상단 배경 및 로그인 -->

	<header class="masthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To Our SportCenter!</div>
				<div class="intro-heading text-uppercase">

					<!-- 로그인 -->
					<form class="form-signin">

						<!-- 	로그인 창 위 아이콘	 -->
						<img class="mb-4" src="images/place/축구공.jpg" alt="" width="400"
							height="400">
						<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
						<label for="inputEmail" class="sr-only">Email address</label> <input
							type="email" id="inputEmail" class="form-control"
							placeholder="Email address" required autofocus> <label
							for="inputPassword" class="sr-only">Password</label> <input
							type="password" id="inputPassword" class="form-control"
							placeholder="Password" required>
						<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
							in</button>
						<p class="mt-5 mb-3 text-muted">&copy; 2019-2020</p>
					</form>
				</div>
			</div>
		</div>
	</header>
</div>

<div id="section2">
</div>

<div id="section3">
	<div id="accordion">
		<div class="accordion_Soccer">
			<p class="accordion_title">축구장</p>
		</div>
		<div class="accordion_content">
			<p>축구장 설명</p>
		</div>

		<div class="accordion_basketball">
			<p class="accordion_title">농구장
			</h3>
		</div>
		<div class="accordion_content">
			<p>농구장 설명</p>
		</div>

		<div class="accordion_baseball">
			<p class="accordion_title">야구장
			</h3>
		</div>
		<div class="accordion_content">
			<p>야구장 설명</p>
		</div>

		<div class="accordion_swimming">
			<p class="accordion_title">수영장
			</h3>
		</div>
		<div class="accordion_content">
			<p>수영장 설명</p>
		</div>
	</div>
</div>
	<jsp:include page="Footter.jsp"></jsp:include>
</body>
</html>
