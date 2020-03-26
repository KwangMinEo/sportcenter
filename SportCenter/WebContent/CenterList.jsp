<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>스포츠센터게시판</title>

	<!-- jQuery -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

	<style type="text/css">
		#headbg {
			background: url('images/football.jpg') no-repeat center;
			background-size: cover;
			height: 150pt;
		}


	</style>
	<script type="text/javascript">
	$(function(){
		$('#ab4')
			.click(
				function () {
					$('#menus')
						.html(
							"<div align='center' width='400px' height='200px'><h2>오시는 길</h2><br><a href=\"https://map.kakao.com/?urlX=477590&urlY=1120840&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false\" target=\"_blank\"><img width=\"800\" height=\"600\" src=\"https://map2.daum.net/map/mapservice?FORMAT=PNG&SCALE=2.5&MX=477590&MY=1120840&S=0&IW=504&IH=310&LANG=0&COORDSTM=WCONGNAMUL&logo=kakao_logo\" style=\"border:1px solid #ccc\"></a><div class=\"hide\" style=\"overflow:hidden;padding:7px 11px;border:1px solid #dfdfdf;border-color:rgba(0,0,0,.1);border-radius:0 0 2px 2px;background-color:#f9f9f9;width:482px;\"><strong style=\"float: left;\"><img src=\"//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png\" width=\"72\" height=\"16\" alt=\"카카오맵\"></strong><div style=\"float: right;position:relative\"><a style=\"font-size:12px;text-decoration:none;float:left;height:15px;padding-top:1px;line-height:15px;color:#000\" target=\"_blank\" href=\"https://map.kakao.com/?urlX=477590&urlY=1120840&urlLevel=3&map_type=TYPE_MAP&map_hybrid=false\">지도 크게 보기</a></div></div></div>")
			});
		});
	function list(){
		location.href="CenterList.jsp";
	}
	function Calendar(){
		location.href="CenterReservationCalendar.jsp";
	}
	function Rtable(){
		location.href="CenterReservationTable.jsp";
	}
	function main(){
		location.href="CenterReservation.jsp"
	}
	</script>
</head>

<body>
	<div class="container-fluid" id="headbg" align="center" style="padding-top: 45pt">
		<div class="row">
			<div class="col-sm-2"> </div>
			<div class="col-sm-8">
				<font style="color: white; font-size: 50px">예약화면</font>
			</div>
			<div class="col-sm-2">
				<div class="dropdown">
					<button type="button" class="btn dropdown-toggle" style="background-color:rgb(89, 102, 114)"data-toggle="dropdown">
						<font style="color: white;">경기장 선택</font>
					</button>
					<div class="dropdown-menu" style="background-color:RGB(146, 164, 181)">
						<a class="dropdown-item" href="#">축구장</a>
						<a class="dropdown-item" href="#">농구장</a>
						<a class="dropdown-item" href="#">야구장</a>
						<a class="dropdown-item" href="#">수영장</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="navbar navbar-sm"
			style="background-color: #2F3E46; margin-left:-15px; margin-right:-15px; height:50px;">
			<div class="navbar">
				<a class="nav-link" href="#">Link 1</a>
				<a class="nav-link" href="#">Link 2</a>
				<a class="nav-link" href="#">Link 3</a>
			</div>
		</div>
	</div>
	<div>
		<div class="container-fluid " style="margin-left: 0px;">
			<div class="row">
				<div class="col-sm-2" style="background-color: rgb(89, 102, 114); height:auto">
					<!-- carousel시작 -->
					<h2>새로운 소식</h2>
					<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
						<br>
						<div class="carousel-inner">
							<div class="carousel-item active" align="center">
								<h4>코로나 바이러스<br> <span style="font-style: normal;">예방수칙:1, 2, 3, 4...</span></h4>
							</div>
							<div class="carousel-item" align="center">
								<h4>새로운 시설 개설<br> <span style="font-style: normal;">볼링장: 1, 2, 3, 4, 5, ...</span></h4>
							</div>
							<div class="carousel-item" align="center">
								<h4>국가 시설 평가<br> <span style="font-style: normal;">2020년 최고의 시설</span></h4>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
						<Br>
					</div>

					<!-- 왼쪽 메뉴바 -->
					<div>
						<button class="btn btn-primary btn-block rounded-lg" type="button" data-toggle="collapse"
							data-target="#collapseExample1" aria-expanded="false" aria-controls="collapseExample">
							축구장
						</button>
						<div class="collapse" id="collapseExample1">
							<div class="card card-body">
								<a href="#">축구장 설명</a>
								<a href="#">축구장 계시판</a>
								<a href="#">축구장 예약하기</a>
								<a href="#">축구장 예약확인</a>
								<a href="#">축구장 관련 정보</a>
							</div>
						</div>
					</div>
					<div>
						<button class="btn btn-primary btn-block rounded-lg" type="button" data-toggle="collapse"
							data-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
							농구장
						</button>
						<div class="collapse" id="collapseExample2">
							<div class="card card-body">
								<a href="#">농구장 설명</a>
								<a href="#">농구장 게시판</a>
								<a href="#">축구장 예약하기</a>
								<a href="#">축구장 예약확인</a>
								<a href="#">농구장 관련 정보</a>
							</div>
						</div>
					</div>
					<div>
						<button class="btn btn-primary btn-block rounded-lg" type="button" data-toggle="collapse"
							data-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
							야구장
						</button>
						<div class="collapse" id="collapseExample3">
							<div class="card card-body">
								<a href="#">야구장 설명</a>
								<a href="#">야구장 게시판</a>
								<a href="#">축구장 예약하기</a>
								<a href="#">축구장 예약확인</a>
								<a href="#">야구장 관련 정보</a>
							</div>
						</div>
					</div>
					<div>
						<button class="btn btn-primary btn-block rounded-lg" type="button" data-toggle="collapse"
							data-target="#collapseExample4" aria-expanded="false" aria-controls="collapseExample">
							수영장
						</button>
						<div class="collapse" id="collapseExample4">
							<div class="card card-body">
								<a href="#">수영장 설명</a>
								<a href="#">수영장 게시판</a>
								<a href="#">축구장 예약하기</a>
								<a href="#">축구장 예약확인</a>
								<a href="#">수영장 관련 정보</a>
							</div>
						</div>
					</div>
					<hr>
					<h3>
						<button id="ab" class="btn btn-primary btn-block" onclick="main()">메인</button>
					</h3>
					<h3>
						<button id="ab2" class="btn btn-primary btn-block" onclick="list()">게시판</button>
					</h3>
					<h3>
						<button id="ab1" class="btn btn-primary btn-block" onclick="Calendar()">전체 대관 현황</button>
					</h3>
					<h3>
						<button id="ab3" class="btn btn-primary btn-block" onclick="Rtable()">예약 화면</button>
					</h3>
					<h3>
						<button id="ab4" class="btn btn-primary btn-block">오시는 길</button>
					</h3>
				</div>
				<!-- 메인 내용 표시되는 곳 -->
				<div id="menus" class="col-sm-8"style="padding-top: 20px; background-color: lightgray; padding-bottom:50px">
					<table class="table">
					<tr>
					<td colspan="2">총10건 &nbsp;&nbsp;2/12</td><td colspan="4" align="right"><select><option>제목</option><option>작성자</option></select><input type="text" ></td>
					</tr>
					<tr>
					<td>번호</td><td>제목</td><td>작성자</td><td>작성 날짜</td><td>카테고리</td><td>조회수</td>
					</tr>
					<tr>
					<td></td>
					</tr>
					</table>
				
				</div>


				<div id="menus" class="col-sm-2" style="padding-top: 20px; background-color: rgb(89, 102, 114);">
						<br>
					<div id="carouselExampleControls1" class="carousel slide" data-ride="carousel" style="width:250px; height:600px;">
						<div class="carousel-inner">
							<div class="carousel-item active" align="center">
								<img src="images/football2.jpg" style="width:280px; height:600px;">
							</div>
							<div class="carousel-item" align="center">
								<img src="images/goal.jpg" style="width:300px; height:600px;">
							</div>
							<div class="carousel-item" align="center">
								<img src="images/place/경기장야경.jpg" style="width:280px; height:600px;">
							</div>
							<div class="carousel-item" align="center">
								<h1>광고문의:<br> 000-0000-0000</h1>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleControls1" role="button"	data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleControls1" role="button"	data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
						<Br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div align="center">
		<jsp:include page="Footter.jsp" />
	</div>
</body>
</html>