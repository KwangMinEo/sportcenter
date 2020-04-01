<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스포츠센터 예약화면</title>

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

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


<link rel="stylesheet" href="css/dropdown.css">
<style type="text/css">
#headbg {
	background: url('images/topimg.png') no-repeat center;
	background-size: cover;
	height: 150pt;
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

hr {
	padding-top: 12px;
	padding-bottom: 12px;
}

.ui-datepicker-trigger {
	cursor: pointer;
}

.upperbtn{
	background-color:#82A5c5;
}
.lowerbtn{
	background-color:#82A5c5;
}

</style>
<script type="text/javascript">
$(function(){
	$(function() {
		
		$('input[name="datefilter"]').daterangepicker({
			autoUpdateInput: false,
			locale: {
			    cancelLabel: 'Clear'
			}
		});
		$('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
			$(this).val(picker.startDate.format('YYYYMMDD') + '~' + picker.endDate.format('YYYYMMDD'));
		});
		$('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
			$(this).val('');
		});
	  
	});
});

$(function(){
	$(function(){
		$('input[name="datefilter"]').on('apply.daterangepicker', function(){
			var f=$('#date').val();
			if(f != 0){
				var fsplit= f.split('~');
				var fulldate=fsplit[1]-fsplit[0];
				$('#fdate').html(fulldate+" 일");
			}
			else{
				$('#fdate').html("");
			}
		});
		$('input:checkbox[name="time"]').on('click', function(){
			var chked = $('input:checkbox[name="time"]:checked').length;
			if(chked != 0){
				$('#ftime').html(chked*2+" 시간");
			}
			else{
				$('#ftime').html("");
			}
		});
		
		if(fulldate != 0 || chked != 0){
			$('#price').html("20,000 <br>총 가격 = "+fulldate*(chked*2*20000));
		}
		
		});
	});
</script>
</head>

<body>
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
				            <li><a href="CenterReservationCalendarFootball.jsp">축구장 예약확인</a></li>
				            <li><a href="reservation.sport?idx=football">축구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>농구장</font></h4>
				          <ul>
				            <li><a href="CenterDetailBasketball.jsp">농구장 설명</a></li>
				            <li><a href="CenterList.jsp?idx=basketball">농구장 게시판</a></li>
				            <li><a href="CenterReservationCalendarBasketball.jsp">농구장 예약확인</a></li>
				            <li><a href="reservation.sport?idx=basketball">농구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>야구장</font></h4>
				          <ul>
				            <li><a href="CenterDetailBaseball.jsp">야구장 설명</a></li>
				            <li><a href="CenterList.jsp?idx=baseball">야구장 게시판</a></li>
				            <li><a href="CenterReservationCalendarBaseball.jsp">야구장 예약확인</a></li>
				            <li><a href="reservation.sport?idx=baseball">야구장 예약하기</a></li>
				          </ul>
				        </div>
				        <div class="menu-item rounded-lg">
				          <h4><font>수영장</font></h4>
				          <ul>
				            <li><a href="CenterDetailSwim.jsp">수영장 설명</a></li>
				            <li><a href="CenterList.jsp?idx=swim">수영장 게시판</a></li>
				            <li><a href="CenterReservationCalendarSwim.jsp">수영장 예약확인</a></li>
				            <li><a href="reservation.sport?idx=swim">수영장 예약하기</a></li>
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
</body>
</html>