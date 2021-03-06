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
<link href="css/signUp2.css" rel="stylesheet">

<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
    $(window).scroll(function () {
        var scrollValue = $(document).scrollTop();
        if (scrollValue > 150) {
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
           $('html, body').animate({ scrollTop: '1320' }, 1200);
        });
     });
     $(document).ready(function () {
         $('.introduction_Basketball').click(function () {
            $('html, body').animate({ scrollTop: '1670' }, 1200);
         });
      });
     $(document).ready(function () {
         $('.introduction_Baseball').click(function () {
            $('html, body').animate({ scrollTop: '1990' }, 1200);
         });
      });
     $(document).ready(function () {
         $('.introduction_Swimming').click(function () {
            $('html, body').animate({ scrollTop: '2310' }, 1200);
         });
      });
     $(document).ready(function () {
         $('.introduction_video').click(function () {
            $('html, body').animate({ scrollTop: '2670' }, 1200);
         });
      });
</script>

  <script type="text/javascript">
 $(document).ready(function(){
   $(".gnbSec p").on("mouseenter", function() {
     $("#header").stop().animate({
    height: 265
     }, 1000);
   });
   $("#header").on("mouseleave", function() {
     $(this).stop().animate({
    height: 99
     }, 1000);
   });
	$('.dropdown').mouseenter(function(){ 
		$('.dropdown-menu').stop().slideDown("normal")
	});
	$('.dropdown-menu').mouseleave(function(){
		$('.dropdown-menu').stop().slideUp("normal")
	});
 });
 
// 로그인 관련 쿼리문
//  $(window).ready(function(){
// 			$('.dropdown-login').stop().hide()
// 			$('.dropdown-signUp').stop().hide()
// 	 });
//  $(document).ready(function(){
	  
// 		$('.dropdown-login_button').click(function(){
// 			$('.dropdown-login').stop().fadeToggle("normal")
// 		});

// 		$('.dropdown-signUp_button').click(function(){
// 			$('.dropdown-signUp').stop().fadeToggle("normal")
// 		});
// 	 });
// 로그아웃 관련 쿼리문
//  $(window).ready(function(){
// 			$('.dropdown-login').stop().hide()
// 	 });
 $(window).ready(function(){
	 var sessionCK = "<%=(String)session.getAttribute("userID")%>";
	if( sessionCK != "null"){
		$(document).ready(function(){
			  $('.loginCheckin').show()
			  $('.loginCheckout').hide()
			  $('.dropdown-login').stop().hide()
			  $('.dropdown-signUp').stop().hide()
		  });
	}else {
		$(document).ready(function(){
			  $('.loginCheckin').hide()
			  $('.loginCheckout').show()
			  $('.dropdown-login').stop().hide()
			  $('.dropdown-signUp').stop().hide()
		  });
		 $(document).ready(function(){
			  
				$('.dropdown-login_button').click(function(){
					$('.dropdown-login').stop().fadeToggle("normal")
				});

				$('.dropdown-signUp_button').click(function(){
					$('.dropdown-signUp').stop().fadeToggle("normal")
				});
			 });
		}
 });
// 		$('.dropdown-signUp_button').click(function(){
// 			$('.dropdown-signUp').stop().fadeToggle("normal")
// 		});
// 	 });

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
						<div>
						<ul class="navbar-nav text-uppercase ml-auto">
						
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle introduction" href="#" id="navbardrop"
								data-toggle="dropdown">&nbsp;&nbsp;&nbsp; 경기장 소개 &nbsp;</a> 
							</li>
							
							<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="CenterMain.jsp" id="navbardrop"
							data-toggle="dropdown"> 예약하기 </a>
							</li>
							
						</ul>
						</div>
						<div class="loginCheckout"  style="position: absolute; right : 20%;">
						<ul class="navbar-nav text-uppercase ml-auto">
							<li class="nav-item dropdown-login_button"><label class="nav-link">로그인</label></li>
							<li class="nav-item dropdown-signUp_button"><label class="nav-link">회원가입</label></li>
						</ul>
						</div>
						<div class="loginCheckin" style="position: absolute; right : 20%;">
						<ul class="navbar-nav text-uppercase ml-auto">
							<li class="nav-item"><label class="nav-link"><%= session.getAttribute("userID") %>님 환영합니다.</label></li>	
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbardrop"
								data-toggle="dropdown"> 마이페이지 </a>
								</li>
							<li class="nav-item logout_button"><a href="Logout.jsp"><label class="nav-link">로그아웃</label></a></li>
						</ul>
						</div>
					</div>
					<div class="dropdown-menu" style="position: absolute; left: 35%; margin: 0 0 0 -5%; padding: 0 0 0 0;">
						<ul style="list-style-type : none; margin: 0 0 0 0; padding: 0 0 0 0; overflow: auto;">
							<li style=" margin: 0 0 0 0; padding: 0 0 0 0; float: left; display: inline;"><div >
									<a class="dropdown-item introduction_Soccer" href="#">축구장 소개</a>
									 <a	class="dropdown-item introduction_Basketball" href="#">농구장 소개</a>
									 <a	class="dropdown-item introduction_Baseball" href="#">야구장 소개</a>
									 <a	class="dropdown-item introduction_Swimming" href="#">수영장 소개</a>
									 <a	class="dropdown-item introduction_video" href="#">영상 소개</a>
							</div></li>
							<li style=" margin: 0 0 0 0; padding: 0 0 0 0; float: left; display: inline;"><div>
									<a class="dropdown-item" href="CenterReservationTableFootball.jsp">축구장 예약하기</a>
									 <a	class="dropdown-item" href="CenterReservationTableBasketball.jsp">농구장 예약하기</a>
									 <a	class="dropdown-item" href="CenterReservationTableBaseball.jsp">야구장 예약하기</a>
									 <a	class="dropdown-item" href="CenterReservationTableSwim.jsp">수영장 예약하기</a>
							</div></li>
							<li style=" margin: 0 0 0 0; padding: 0 0 0 0; float: left; display: inline;"><div>
									<a class="dropdown-item" href="CenterReservationCalendarFootball.jsp">예약확인</a>
									 <a	class="dropdown-item" href="#">개인정보수정</a>
									 <a	class="dropdown-item" href="List.center">내 게시물 및 댓글 확인</a>
								</div></li>
						</ul>
					</div>
					<!-- 로그인 페이지 관련 -->
					<div class="dropdown-login" style="position: absolute; left: 20%; right:10%; margin: 0 0 0 -10%; padding: 0 0 0 0; top: 100%; overflow: hidden; height: auto;" >
						<jsp:include page="login.jsp"></jsp:include>
					</div>
					<!-- 회원가입 페이지 관련 -->
					<div class="dropdown-signUp" style="position: absolute; left: 20%; right:10%; margin: 0 0 0 -10%; padding: 0 0 0 0; top: 100%; overflow: hidden; height: auto; " >
						<jsp:include page="signUp.jsp"></jsp:include>
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
							<img class="mb-4" src="images/place/축구공.png" alt="" width="400"
								height="400">
							<h1 class="h3 mb-3 font-weight-normal">Show in our Homepage</h1>
							<p class="mt-5 mb-3 text-muted">our history</p>
							<p class="mt-5 mb-3 text-muted">Since 2019. 11. 19</p>
						</form>
					</div>
				</div>
			</div>
		</header>

	
		<div id="introduction_page">
			<div class="introduction_page_1" style="margin: 10px; border: solid; border-radius: 12px; padding: 20px; background-color: #000000; height: 1310px;">
				<!-- 축구장소개 -->
				<div class="introduction_page_Soccer_img" style="margin: 10px; border: solid; background-image: url(./images/other/축구장소개.jpg); background-size: 100%; border-radius: 12px; float: left; width: 48%; height: 300px;">
				</div>
				<div class="introduction_page_Soccer_content" style="margin: 10px; padding:20px; border: solid #202020;  border-radius: 12px; width: 48%; height: 300px; float: right; color: white;">
					<p>천연잔디가 깔린 잔디광장으로 축구, 레크레이션 등 다양한 행사가 가능한 곳으로 대규모 행사를 진행하기에 적합한 시설입니다.(최대 1,000명 수용)</p>
					<p>크 기 : 길이100m×폭58m</p>
					<p>용 도 : 축구경기 및 대규모 일반행사 등</p>
					<p>부속시설 : 족구장 1개, 배구장 1개</p>
				</div>
				
				<!-- 농구장소개 -->
				<div class="introduction_page_basketball_img" style="margin: 10px; border: solid; background-image: url(./images/other/농구장소개.jpg); background-size: 100%; border-radius: 12px; float: right; width: 48%; height: 300px;">
				</div>
				<div class="introduction_page_basketball_content" style="margin: 10px; padding:20px; border: solid #202020;  border-radius: 12px; width: 48%; height: 300px; float: left; color: white;">
					<p>천연잔디가 깔린 잔디광장으로 축구, 레크레이션 등 다양한 행사가 가능한 곳으로 대규모 행사를 진행하기에 적합한 시설입니다.(최대 1,000명 수용)</p>
					<p>크 기 : 길이100m×폭58m</p>
					<p>용 도 : 축구경기 및 대규모 일반행사 등</p>
					<p>부속시설 : 족구장 1개, 배구장 1개</p>
				</div>
				
				<!-- 야구장소개 --> 
				<div class="introduction_page_baseball_img" style="margin: 10px; border: solid; background-image: url(./images/other/야구장소개.jpg); background-size: 100%; border-radius: 12px; float: left; width: 48%; height: 300px;">
				</div>
				<div class="introduction_page_baseball_content" style="margin: 10px; padding:20px; border: solid #202020;  border-radius: 12px; width: 48%; height: 300px; float: right; color: white;">
					<p>천연잔디가 깔린 잔디광장으로 축구, 레크레이션 등 다양한 행사가 가능한 곳으로 대규모 행사를 진행하기에 적합한 시설입니다.(최대 1,000명 수용)</p>
					<p>크 기 : 길이100m×폭58m</p>
					<p>용 도 : 축구경기 및 대규모 일반행사 등</p>
					<p>부속시설 : 족구장 1개, 배구장 1개</p>
				</div>
				
				<!-- 수영장소개 --> 
				<div class="introduction_page_swimming_img" style="margin: 10px; border: solid; background-image: url(./images/other/수영장소개.jpg); background-size: 100%; border-radius: 12px; float: right; width: 48%; height: 300px;">
				</div>
				<div class="introduction_page_swimming_content" style="margin: 10px; padding:20px; border: solid #202020;  border-radius: 12px; width: 48%; height: 300px; float: left; color: white;">
					<p>천연잔디가 깔린 잔디광장으로 축구, 레크레이션 등 다양한 행사가 가능한 곳으로 대규모 행사를 진행하기에 적합한 시설입니다.(최대 1,000명 수용)</p>
					<p>크 기 : 길이100m×폭58m</p>
					<p>용 도 : 축구경기 및 대규모 일반행사 등</p>
					<p>부속시설 : 족구장 1개, 배구장 1개</p>
				</div>
			</div>
		</div>
	
	<div style="border: ; background-color: ; margin: 10px; border-radius: 12px;">
			<video id="" src="./video/stadium.mp4" controls autoplay style="width: 80%; height: 80%; border: ; border-radius: 12px; margin-top: 2%; margin-bottom: 2%"></video>
		
	</div>

	
	<div style="background-color: black; color: white;">
	<jsp:include page="Footter.jsp"></jsp:include>
	</div>
</body>
</html>
