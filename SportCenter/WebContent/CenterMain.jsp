<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>스포츠센터</title>

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
							<div style="padding-top: 20pt;">
								<table class="table" style="background-color:#EFF8Ff; width:78%; padding-top: 50pt;">
								<tr align="center">
									<td colspan="3" style="background-color:#2B7797;">
										센터 평일 개방시간
									</td>
								</tr>
								<tr>
									<td>구분</td><td>시간</td><td>비고</td>
								</tr>
								<tr >
									<td>
										월요일 ~ 금요일
										<br>
										토요일
									</td>
									<td colspan="2">
										06:00 ~ 21:50 
									</td>
								</tr>
								<tr>
									<td>
										일요일
									</td>
									<td>
										09:00 ~ 15:50
									</td>
									<td>
										매월 둘째주 일요일은 정기휴관
									</td>
								</tr>
								</table>
							</div>
						<!-- 중간 이미지 -->
						<div style="padding-top: 50pt;">
								대관절차<br><img src="images/rentstep.jpg">
						</div>
							<br>
							<!-- 아래 테이블 -->
							<hr>
							<table style="background-color:#EFF8Ff; width:78%;">
								<tr>
									<td>사물함 이용</td>
								</tr>
								<tr>
									<td>신청방법</td>
									</tr>
									<tr>
									<td>센터 접수처로 방문 신청하시면 이용대기자 명단에 등록후 순번대로 연락을 드립니다
								</td>
								</tr>
								<tr>
									<td>이용기간</td>
									</tr>
									<tr>
									<td>매월 1일 - 말일(1개월 또는 3개월 단위로 신청가능)</td>
								</tr>
								<tr>
									<td>
										<table>
											<tr>
												<td>대형</td><td>1개월 4,000원 / 3개월 12,000원</td>
												<td>중형</td><td>1개월 3,000원 / 3개월 9,000원</td>
												<td>소형</td><td>1개월 2,000원 / 3개월 6,000원</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td>이용방법및유의사항</td>
									</tr>
									<tr>
									<td>*사용자는 프로그램 또는 사물함 이용종료시 사물함 열쇠를 반환하여야 하며, 열쇠를 반환하지 않을 경우,	열쇠 반환일까지의 사용료를 납부하여야 합니다.<br> 
										*일정기간(한달 경과)열쇠를 반환하지 않은 경우 보관품을 수거하여 폐기하며, 사물함 이용을 회수하여 다른 이용대기자에게 사물함을 대여할 수 있습니다.<br>
										*열쇠를 분실하였을 경우 열쇠뭉치 교체 비용 10,000원을 센터에 변상하여야 합니다. <br>
										*사용자 고의 및 과실로 인한 보관물 및 사물함 훼손시 사용자가 원상복구 할 의무가 있습니다.<br>
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