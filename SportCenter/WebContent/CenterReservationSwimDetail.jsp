<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>스포츠센터 수영장</title>

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
						<div class='shadow'>
							<table class="table">
							<tr>
							<td>수영장 설명</td>
							</tr>
							<tr>
							<td><img src="images/place/수영장.jpg"></td>
							<td>수영장<br>
								1,986㎡규모내에 성인물(25m×13m, 6레인), 유아풀(10m×8.75m)과 그 외에 온탕, 사우나실 등의 부대시설을 갖추고 있습니다.
수심은 1,5m이며 자동수온조절 기능으로 항상 27~29℃의 적정온도를 유지, 회원들이 쾌적한 환경에서 수영장을 이용하실 수 있도록 최선의 노력을 다하고 있습니다. 무엇보다도 수질 청결을 위해 Over flow형태로 인공해수풀과 오존 살균정수 System을 도입하여 식수 수준의 최소의 수질을 유지하고 있습니다.
							</td>
							<tr>
							<td>경기장 면적</td>
							</tr>
							</tr>
							<td colspan="2">
								-주경기장 : 120m × 80m(9,600㎡)<br>
								-A구장 : 110m × 76m(8,360㎡)<br>
							</td>
							<tr>
							<td>부대시설 : 선수대기실, 샤워실, 홍보실, 관람석(1,041석), 조명 및 음향시스템 <br></td><td></td>
							</tr>
							<tr>
							<td>
							선수 대기실
							<hr>
							<img src="images/place/swimlocker.jpeg" class="detailimg">
							<br><hr width="100%">
							샤워실
							<hr width="100%">
							<img src="images/place/swimshower.jpg" class="detailimg">
							</td>
							</tr>
							<tr>
							<td colspan="2">수영장 이용수칙
							</td>
							</tr>
							<tr>
							<td colspan="2">
								수영장 내에서는 항상 정숙해 주십시오.<br>
								수영장 출입시에는 반드시 비누샤워를 하고 입장해 주십시오.<br>
								수영전에는 반드시 준비운동을 해 주십시오.<br>
								눈병이나 전염병 환자의 출입을 금합니다.<br>
								음식물이나 소지품을 가지고 들어오지 마십시오.<br>
								강습시간을 준수해 주십시오.<br>
								수영장 내에서는 반드시 지도자의 지시에 따라 주십시오.<br>
								수영장 내에서는 가운, 신발 등을 착용하지 마십시오.<br>
								반드시 수영모를 착용해 주십시오.<br>
								안전사고를 위해 수영장 내에서는 밀거나 뛰지 마십시오.<br>
								물 속에서 침을 뱉거나 코를 풀지 마십시오.<br>
								수영장 내에서는 반드시 금연입니다.<br>
								기타 본인의 부주의로 일어난 사고는 책임지지 않습니다.<br>
								※ 평일,주말 자유수영시간에 수영장 정원 마감 시 안전사고예방을 위해 수영장 출입이 제한될 수 있습니다.<br>
							
							</td>
							</tr>
							
							
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-2" style="padding-top: 20px; background-color: rgb(89, 102, 114);">
					<div id="carouselExampleControls1" class="carousel slide" data-ride="carousel" style="width:250px; height:600px;">
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