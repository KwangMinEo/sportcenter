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
<link href="css/FirstPage.css" rel="stylesheet">

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
    $(window).scroll(function () {
        var scrollValue = $(document).scrollTop();
        if (scrollValue > 1250) {
           $(".navbar").css("background", "black");
        }
        else {
           $(".navbar").css("background", "");
        }
     });
    $(document).ready(function () {
       $('.navbar-brand').click(function () {
          $('html, body').animate({ scrollTop: '0' }, 1200);
       });
    });
     $(document).ready(function () {
        $('.introduction_Soccer').click(function () {
           $('html, body').animate({ scrollTop: '1330' }, 1200);
        });
     });
     $(document).ready(function () {
         $('.introduction_Basketball').click(function () {
            $('html, body').animate({ scrollTop: '1430' }, 1300);
         });
      });
     $(document).ready(function () {
         $('.introduction_Baseball').click(function () {
            $('html, body').animate({ scrollTop: '1530' }, 1400);
         });
      });
     $(document).ready(function () {
         $('.introduction_Swimming').click(function () {
            $('html, body').animate({ scrollTop: '1630' }, 1500);
         });
      });
</script>
<body class="text-center">



		<!-- 상단 배경 및 로그인 -->

		<header class="masthead">
			<!-- 상단 네비게이터 -->
			<!-- Navigation -->

			<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
				id="mainNav">
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
						
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle introduction" href="#" id="navbardrop"
								data-toggle="dropdown"> 경기장소개 </a>
								<div class="dropdown-menu">
									<a class="dropdown-item introduction_Soccer" href="#">축구장 소개</a>
									 <a	class="dropdown-item introduction_Basketball" href="#">농구장 소개</a>
									 <a	class="dropdown-item introduction_Baseball" href="#">야구장 소개</a>
									 <a	class="dropdown-item introduction_Swimming" href="#">수영장 소개</a>
							</div></li>
							
							<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbardrop"
							data-toggle="dropdown"> 예약하기 </a>
							<div class="dropdown-menu">
									<a class="dropdown-item" href="#">축구장 예약하기</a>
									 <a	class="dropdown-item" href="#">농구장 예약하기</a>
									 <a	class="dropdown-item" href="#">야구장 예약하기</a>
									 <a	class="dropdown-item" href="#">수영장 예약하기</a>
							</div></li>
								
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbardrop"
								data-toggle="dropdown"> 마이페이지 </a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">예약확인</a>
									 <a	class="dropdown-item" href="#">개인정보수정</a>
									 <a	class="dropdown-item" href="#">내 게시물 및 댓글 확인</a>
								</div></li>
						</ul>
						<ul class="navbar-nav text-uppercase ml-auto">
							<li class="nav-item"><label class="nav-link">로그인</label></li>
							<li class="nav-item"><label class="nav-link">회원가입</label></li>

								
						</ul>
						
					</div>
				</div>
			</nav>
			<!-- 상단 네비게이터 end-->
			<!-- Navigation end-->


			<div class="container">
				<div class="intro-text">
					<div class="intro-lead-in">Welcome To Our SportCenter!</div>
					<div class="intro-heading text-uppercase">

						<!-- 로그인 -->
						<form class="form-signin">

							<!-- 	로그인 창 위 아이콘	 -->
							<img class="mb-4" src="images/place/축구공.jpg" alt="" width="400"
								height="400">
							<h1 class="h3 mb-3 font-weight-normal">Show in our Homepage</h1>
							<p class="mt-5 mb-3 text-muted">our history</p>
							<p class="mt-5 mb-3 text-muted">Since 2019. 11. 19</p>
						</form>
					</div>
				</div>
			</div>
		</header>

	
		<div id="accordion">
			<div class="accordion_Soccer">
				<p class="accordion_title">축구장</p>
			</div>
			<div class="accordion_content">
				<p>축구장 설명</p>
			</div>

			<div class="accordion_basketball">
				<p class="accordion_title">농구장
			</div>
			<div class="accordion_content">
				<p>농구장 설명</p>
			</div>

			<div class="accordion_baseball">
				<p class="accordion_title">야구장
			</div>
			<div class="accordion_content">
				<p>야구장 설명</p>
			</div>

			<div class="accordion_swimming">
				<p class="accordion_title">수영장
			</div>
			<div class="accordion_content">
				<p>수영장 설명</p>
			</div>
		</div>
	

	
	<div style="background-color: black; color: white;">
	<jsp:include page="Footter.jsp"></jsp:include>
	</div>
</body>
</html>
