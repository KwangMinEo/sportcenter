<%@page import="com.sun.org.apache.bcel.internal.generic.CALOAD"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
$(document).ready(function() {
    var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	
	/*  className colors
	
	className: default(transparent), important(red), chill(pink), success(green), info(blue)
	
	*/		
	
	  
	/* initialize the external events
	-----------------------------------------------------------------*/

	$('#external-events div.external-event').each(function() {
	
		// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
		// it doesn't need to have a start or end
		var eventObject = {
			title: $.trim($(this).text()) // use the element's text as the event title
		};
		
		// store the Event Object in the DOM element so we can get to it later
		$(this).data('eventObject', eventObject);
		
		// make the event draggable using jQuery UI
		$(this).draggable({
			zIndex: 999,
			revert: true,      // will cause the event to go back to its
			revertDuration: 0  //  original position after the drag
		});
		
	});


	/* initialize the calendar
	-----------------------------------------------------------------*/
	
	var calendar =  $('#calendar').fullCalendar({
		header: {
			left: 'title',
			center: 'agendaDay,agendaWeek,month',
			right: 'prev,next today'
		},
		editable: true,
		firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
		selectable: false,
		defaultView: 'month',
		
		axisFormat: 'h:mm',
		columnFormat: {
            month: 'ddd',    // Mon
            week: 'ddd d', // Mon 7
            day: 'dddd M/d',  // Monday 9/7
            agendaDay: 'dddd d'
        },
        titleFormat: {
            month: 'MMMM yyyy', // September 2009
            week: "MMMM yyyy", // September 2009
            day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
        },
		allDaySlot: false,
		selectHelper: true,
		select: function(start, end, allDay) {
			var title = prompt('Event Title:');
			if (title) {
				calendar.fullCalendar('renderEvent',
					{
						title: title,
						start: start,
						end: end,
						allDay: allDay
					},
					true // make the event "stick"
				);
			}
			calendar.fullCalendar('unselect');
		},
		droppable: true, // this allows things to be dropped onto the calendar !!!
		drop: function(date, allDay) { // this function is called when something is dropped
		
			// retrieve the dropped element's stored Event Object
			var originalEventObject = $(this).data('eventObject');
			
			// we need to copy it, so that multiple events don't have a reference to the same object
			var copiedEventObject = $.extend({}, originalEventObject);
			
			// assign it the date that was reported
			copiedEventObject.start = date;
			copiedEventObject.allDay = allDay;
			
			// render the event on the calendar
			// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
			$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
			
			// is the "remove after drop" checkbox checked?
			if ($('#drop-remove').is(':checked')) {
				// if so, remove the element from the "Draggable Events" list
				$(this).remove();
			}
			
		},
		
		events: [
					<c:forEach var="bean" items="${CAL}">
						{
						title : "<c:out value="${bean.name}"></c:out>님의 예약",
						start : new Date(y+<c:out value="${bean.syear}"></c:out>, m+<c:out value="${bean.smonth}"></c:out>, <c:out value="${bean.sday}"></c:out>),
						end : new Date(y+<c:out value="${bean.eyear}"></c:out>, m+<c:out value="${bean.emonth}"></c:out>, <c:out value="${bean.eday}"></c:out>),
						},
					</c:forEach> 
						{	}
						],
				});
		});
	
	$(function(){
		var date = new Date();
		$('#test').append("년:"+ date.getFullYear()+"<br>");
		$('#test').append("월:"+ (date.getMonth())+"<br>");
		$('#test').append("일:"+ date.getDate());
	})
</script>
</head>

<body style="background-color:black;">
	<div class="container-fluid" align="center" style="padding-top: 45pt; height:150pt; background: url('images/topimg.png') no-repeat center;
	background-size: cover;	height: 150pt;">
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
			<div class="row">
			<div class="navbar">
				현제위치 표시 ex):<img src='images/ico-home.gif'>
				<font color="white">예약하기>${cen }</font>
			</div>
			<div align="right">
				아이디표시
			</div>
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
				            <li><a href="CenterList.jsp?idx=football">축구장 게시판</a></li>
				            <li><a href="calendarshow.center?idx=football">축구장 예약확인</a></li>
				            <li><a href="reservation.center?idx=football">축구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>농구장</font></h4>
				          <ul>
				            <li><a href="CenterDetailBasketball.jsp">농구장 설명</a></li>
				            <li><a href="CenterList.jsp?idx=basketball">농구장 게시판</a></li>
				            <li><a href="calendarshow.center?idx=basketball">농구장 예약확인</a></li>
				            <li><a href="reservation.center?idx=basketball">농구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>야구장</font></h4>
				          <ul>
				            <li><a href="CenterDetailBaseball.jsp">야구장 설명</a></li>
				            <li><a href="CenterList.jsp?idx=baseball">야구장 게시판</a></li>
				            <li><a href="calendarshow.center?idx=baseball">야구장 예약확인</a></li>
				            <li><a href="reservation.center?idx=baseball">야구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>수영장</font></h4>
				          <ul>
				            <li><a href="CenterDetailSwim.jsp">수영장 설명</a></li>
				            <li><a href="CenterList.jsp?idx=swim">수영장 게시판</a></li>
				            <li><a href="calendarshow.center?idx=swim">수영장 예약확인</a></li>
				            <li><a href="reservation.center?idx=swim">수영장 예약하기</a></li>
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
					
					<hr>
					<h3>
						<a href="CenterReservationCalendar.jsp" class="btn btn-block" style="background-color:tomato;">나의 예약상태</a>
					</h3>
					<h3>
						<a href="CenterList.jsp" class="btn btn-block" style="background-color:tomato;">내 게시물 및 댓글 확인</a>
					</h3>
				</div>
				<!-- 메인 내용 -->
				<div id="menus" class="col-sm-8" style="padding-top: 20px; background-color: lightgray; padding-bottom: 50px">
				<div>
				<h2><c:choose>
				    <c:when test="${cen eq 'football'}">축구장</c:when>
				    <c:when test="${cen eq 'basketball'}">농구장</c:when>
				     <c:when test="${cen eq 'baseball'}">야구장</c:when>
				     <c:when test="${cen eq 'swim'}">수영장</c:when>
				</c:choose></h2>
				</div>
					<div id='wrap'>
						<div id='calendar'></div>
						<div style='clear: both'></div>
					</div>
					<div id="test"> </div>
					<table class="table">
					<tr><td>아이디</td><td>이름</td><td>시작 날자</td><td>종료 날자</td></tr>
					<c:forEach var="bean" items="${CAL}">
					<tr>
						<td>
						<c:out value="${bean.id}"></c:out>
						</td>
						<td>
						<c:out value="${bean.name}"></c:out>
						</td>
						<td>
						<c:out value="${bean.rstart}"></c:out>
						</td>
						<td>
						<c:out value="${bean.rend}"></c:out>
						</td>
					</tr>
					<tr>
						<td>
						시작 날자 
						</td>
						<td>
							년:<c:out value="${bean.syear}"></c:out>
							</td>
							<td>
							월:<c:out value="${bean.smonth}"></c:out>
							</td>
							<td>
							일:<c:out value="${bean.sday}"></c:out>
						</td>
					</tr>
					<tr>
						<td>
						종료 날자
						</td>
						<td>
							년:<c:out value="${bean.eyear}"></c:out>
							</td>
							<td>
							월:<c:out value="${bean.emonth}"></c:out>
							</td>
							<td>
							일:<c:out value="${bean.eday}"></c:out>
						</td>
					</tr>
					</c:forEach>
					<c:out value="${cen}"></c:out>
					</table>
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