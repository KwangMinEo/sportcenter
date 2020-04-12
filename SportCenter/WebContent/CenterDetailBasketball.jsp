<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>스포츠센터 농구장</title>

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
								<td>농구장 설명</td>
							</tr>
							<tr>
								<td><img src="images/place/경기장1.jpg"></td>
								<td>농구장<br>
									20,000명을 동시에 수용할 수 있는 실내체육관으로 1층은 수납식 객석이 있어 다목적으로 공간을 활용할 수 있으며, 
									체육행사, 대규모 콘서트, 일반기업행사 등 다양한 대형 행사를 할 수 있습니다.
	
								</td>
							<tr>
								<td>경기장 면적</td>
								<td colspan="2">
									-실내경기장 : 26,096㎡<br>
									-실외 : 110m × 76m(8,360㎡)<br>
								</td>
							</tr>
							<tr>
								<td colspan="2">부대시설 : 선수대기실, 샤워실, 홍보실, 조명 및 음향시스템
								<br>좌석: <br>1층 1,000석<br> 2층 4,273석<br>3층 5,759석 <br></td><td></td>
							</tr>
							<tr>
								<td colspan="2">
								선수 대기실
								<hr>
								<img src="images/place/basketballlocker.jpg" class="detailimg">
								<br colspan="2"><hr width="100%">
								샤워실
								<hr width="100%">
								<img src="images/place/basketballshower.jpg" class="detailimg">
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
								<img src="images/football2.jpg"	style="width: 300px; height: 600px;">
							</div>
							<div class="carousel-item" align="center">
								<img src="images/goal.jpg" style="width: 300px; height: 600px;">
							</div>
							<div class="carousel-item" align="center">
								<img src="images/place/경기장야경.jpg"	style="width: 280px; height: 600px;">
							</div>
							<div class="carousel-item" align="center">
								<h1>
									광고문의:<br> 000-0000-0000
								</h1>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
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