<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>스포츠센터 대관현황</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link href="css/calendar.css" rel="stylesheet">
<script src="js/calendar.js"></script>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link rel="stylesheet" href="css/dropdown.css">
<style type="text/css">
#headbg {
	background: url('images/football.jpg') no-repeat center;
	background-size: cover;
	height: 150pt;
}

hr {
	padding-top: 12px;
	padding-bottom: 12px;
}

.head1 {
	font-size: 20pt;
}

.carousel-control.right, .carousel-control.left {
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

#wrap {
	width: 1100px;
	margin: 0 auto;
}

#calendar {
	/* 		float: right; */
	margin: 0 auto;
	width: 900px;
	background-color: #FFFFFF;
	border-radius: 6px;
	box-shadow: 0 1px 2px #C3C3C3;
	-webkit-box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
	-moz-box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
	box-shadow: 0px 0px 21px 2px rgba(0, 0, 0, 0.18);
}   
.upperbtn{
	background-color:#82A5c5;
}
.lowerbtn{
	background-color:#82A5c5;
}

</style>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var date = new Date();
						var d = date.getDate();
						var m = date.getMonth();
						var y = date.getFullYear();

						/*  className colors
						
						className: default(transparent), important(red), chill(pink), success(green), info(blue)
						
						 */


						/* initialize the calendar
						-----------------------------------------------------------------*/

						var calendar = $('#calendar')
								.fullCalendar(
										{
											header : {
												left : 'title',
												center : 'agendaDay,agendaWeek,month',
												right : 'prev,next today'
											},
											editable : true,
											firstDay : 0, //  1(Monday) this can be changed to 0(Sunday) for the USA system
											selectable : false,
											defaultView : 'month',

											axisFormat : 'h:mm',
											columnFormat : {
												month : 'ddd', // Mon
												week : 'ddd d', // Mon 7
												day : 'dddd M/d', // Monday 9/7
												agendaDay : 'dddd d'
											},
											titleFormat : {
												month : 'yyyy MMMM', // September 2009
												week : "yyyy MMMM", // September 2009
												day : 'yyyy MMMM' // Tuesday, Sep 8, 2009
											},
											allDaySlot : false,
											selectHelper : true,
											select : function(start, end,
													allDay) {
												var title = prompt('Event Title:');
												if (title) {
													calendar.fullCalendar(
															'renderEvent', {
																title : title,
																start : start,
																end : end,
																allDay : allDay
															}, true // make the event "stick"
													);
												}
												calendar
														.fullCalendar('unselect');
											},

											events : [
													{
														title : 'All Day Event',
														start : new Date(y, m, 1)
													},
													{
														id : 999,
														title : 'Repeating Event',
														start : new Date(y, m, d - 3, 16, 0),
														allDay : false,
														className : 'info'
													},
													{
														id : 999,
														title : 'Repeating Event',
														start : new Date(y, m, d + 4, 16, 0),
														allDay : false,
														className : 'info'
													},
													{
														title : 'Meeting',
														start : new Date(y, m, d, 10, 30),
														allDay : false,
														className : 'important'
													},
													{
														title : 'Lunch',
														start : new Date(y, m, d, 12, 0),
														end : new Date(y, m, d, 14, 0),
														allDay : false,
														className : 'important'
													},
													{
														title : 'Birthday Party',
														start : new Date(y, m, d + 1, 19, 0),
														end : new Date(y, m, d + 1, 22, 30),
														allDay : false,
													},
													{
														title : 'Click for Google',
														start : new Date(y, m, 28),
														end : new Date(y, m, 29),
														url : 'https://ccp.cloudaccess.net/aff.php?aff=5188',
														className : 'success'
													} ],
										});
					});
	
</script>
</head>

<body style="background-color:black;">
<div class="container-fluid" id="headbg" align="center" style="padding-top: 45pt; height:150pt">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<font style="color: white; font-size: 50px">예약화면</font>
			</div>
			<div class="col-sm-2">
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="navbar navbar-sm"
			style="background-color: #33475C; margin-left: -15px; margin-right: -15px; height: 50px;">
			<div class="navbar">
				현제위치 표시 ex):<img src='images/ico-home.gif'>
				<font color="white">예약하기>이용수칙</font>
			</div>
		</div>
	</div>
	<div>
		<div class="container-fluid " style="margin-left: 0px;">
			<div class="row">
				<div class="col-sm-2" style="background-color: rgb(89, 102, 114); height: auto">
					<!-- carousel시작 -->
					<h2>새로운 소식</h2>
					<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
						<br>
						<div class="carousel-inner">
							<div class="carousel-item active" align="center">
								<h4>
									코로나 바이러스<br>
									<span style="font-style: normal;">예방수칙:1, 2, 3, 4...</span>
								</h4>
							</div>
							<div class="carousel-item" align="center">
								<h4>
									새로운 시설 개장예정<br>
									<span style="font-style: normal;">볼링장:1, 2, 3, 4, 5, ...</span>
								</h4>
							</div>
							<div class="carousel-item" align="center">
								<h4>
									국가 시설 평가<br>
									<span style="font-style: normal;">2020년	최고의 시설</span>
								</h4>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
						</a> <Br>
					</div>

					<!-- 왼쪽 메뉴바 -->
					<nav align="center">
				        <div class="menu-item rounded-lg">
				          <h4><font>축구장</font></h4>
				          <ul>
				            <li><a href="CenterDetailFoot.jsp">축구장 설명</a></li>
				            <li><a href="CenterListFootball.jsp">축구장 게시판</a></li>
				            <li><a href="CenterReservationCalendarFootball.jsp">축구장 예약확인</a></li>
				            <li><a href="CenterReservationTableFootball.jsp">축구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>농구장</font></h4>
				          <ul>
				            <li><a href="CenterDetailBasketball.jsp">농구장 설명</a></li>
				            <li><a href="CenterListBaseball.jsp">농구장 게시판</a></li>
				            <li><a href="CenterReservationCalendarBasketball.jsp">농구장 예약확인</a></li>
				            <li><a href="CenterReservationTableBasketball.jsp">농구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>야구장</font></h4>
				          <ul>
				            <li><a href="CenterDetailBaseball.jsp">야구장 설명</a></li>
				            <li><a href="CenterListBaseball.jsp">야구장 게시판</a></li>
				            <li><a href="CenterReservationCalendarBaseball.jsp">야구장 예약확인</a></li>
				            <li><a href="CenterReservationTableBaseball.jsp">야구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>수영장</font></h4>
				          <ul>
				            <li><a href="CenterDetailSwim.jsp">수영장 설명</a></li>
				            <li><a href="CenterListSwim.jsp">수영장 게시판</a></li>
				            <li><a href="CenterReservationCalendarSwim.jsp">수영장 예약확인</a></li>
				            <li><a href="CenterReservationTableSwim.jsp">수영장 예약하기</a></li>
				          </ul>
				        </div>
				    </nav>
					<hr>
					<h3>
						<a href="CenterMain.jsp" id="ab" class="btn btn-block lowerbtn">메인</a>
					</h3>
					<h3>
						<a href="CenterList.jsp" id="ab2" class="btn btn-block lowerbtn">게시판</a>
					</h3>
					<h3>
						<a href="CenterReservationCalendar.jsp" id="ab1" class="btn btn-block lowerbtn">전체 대관 현황</a>
					</h3>
					<h3>
						<a href='CenterReservationTable.jsp' id="ab3" class="btn btn-block lowerbtn">예약 화면</a>
					</h3>
					<h3>
						<a href="CenterLocation.jsp" id="ab4" class="btn btn-block lowerbtn">오시는 길</a>
					</h3>
				</div>
				<!-- 메인 내용 -->
				<div id="menus" class="col-sm-8" style="padding-top: 20px; background-color: lightgray; padding-bottom: 50px">
				<font>농구장 예약확인</font>
					<div id='wrap'>
						<div id='calendar'></div>
						<div style='clear: both'></div>
					</div>
					<div id="test"> </div>
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