<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>스포츠센터 야구장</title>

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

		.head1 {
			font-size: 20pt;
		}

		.carousel-control.right,
		.carousel-control.left {
			background-image: none;
			color: #f4511e;
		}

		.carousel-indicators li {
			border-color: #f4511e;
		}

		.carousel-indicators li.active {
			background-color: #f4511e;
		}

		.item h4 {
			font-size: 19px;
			line-height: 1.375em;
			font-weight: 400;
			font-style: italic;
			margin: 70px 0;
		}

		.item span {
			font-style: normal;
		}
		
		.shadow{
			margin: 0 auto;
			width: 900px;
			background-color: #FFFFFF;
			border-radius: 6px;
			box-shadow: 0 1px 2px #C3C3C3;
			-webkit-box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
			-moz-box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
			box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
		}
		.detailimg{
			width:300px;
			height:200px;
		}
	</style>
	<script type="text/javascript">
	</script>
</head>

<body>
<jsp:include page="CenterHeader.jsp"/>
				<!-- 메인 내용 표시되는 곳 -->
				<div id="menus" class="col-sm-8"style="padding-top: 20px; background-color: lightgray; padding-bottom:50px">
					<div align='center'>
						<div class="shadow w-auto p-3">
							<table class="table">
							<tr>
							<td>야구장 설명</td>
							</tr>
							<tr>
							<td><img src="images/place/야구장3.jpg"></td>
							<td>야구장<br>
								야구장 시설 전반에 걸쳐 깨끗하고 안락한 야구장으로 새롭게 단장되어 16,000명이 동시에 입장할 수 있는 야구장으로 아마추어야구시합 등을 할 수 있는 야구 전용구장입니다.
								대형 전광판, 음향시설 등 체육활동에 필요한 시설 보유. 선수대기실, 감독실, 기자실, 중계석, 스카우트실 등 편의시설 및 야구경기에 필요한 최상의 시설을 완비하고 있습니다.
								인조잔디로 시설되어 있으며 야구협회 및 생활체육연합회에서 주관하는 초ㆍ중ㆍ고등학교 경기와 생활체육 경기 등 각종 야구대회가 열리고 있으며 
								이외 일반 동호인, 단체등에 대관하고 있습니다. 주변에는 산책로 및 베드민턴장 등 체육시설이 조성되어 있어 주민들의 휴식공간으로 활용되고 있습니다.
							</td>
							<tr>
							<td>경기장 면적</td>
							<td colspan="2">
								-주경기장 : 120m × 80m(9,600㎡)<br>
								-A구장 : 110m × 76m(8,360㎡)<br>
							</td>
							</tr>
							<tr>
							<td colspan="2">부대시설 : 선수대기실, 샤워실, 홍보실, 관람석(7,214석), 조명 및 음향시스템 <br></td><td></td>
							</tr>
							<tr>
							<td colspan="2">
							선수 대기실
							<hr>
							<img src="images/place/baseballlocker.jpg" class="detailimg">
							<br><hr width="100%">
							샤워실
							<hr width="100%">
							<img src="images/place/baseballshower.jpg" class="detailimg">
							</td>
							</tr>
							
							
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 20px; background-color: rgb(89, 102, 114);">
					<div id="carouselExampleControls1" class="carousel slide" data-ride="carousel" style="padding: 0px; width: 100%; height: 100%;">
						<div class="carousel-inner">
							<div class="carousel-item active" align="center">
								<img src="images/football2.jpg" style="width:300px; height:600px;">
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
		<div align="center" style="background-color:black; color:white;">
		<jsp:include page="Footter.jsp" />
	</div>
</body>
</html>