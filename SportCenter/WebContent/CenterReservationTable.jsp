<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스포츠센터 예약화면</title>

<style type="text/css">

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
	<jsp:include page="CenterHeader.jsp" />
	<!-- 메인 내용 표시되는 곳 -->
	<div id="menus" class="col-sm-8" style="padding-top: 20px; background-color: lightgray; padding-bottom: 50px">
		<div class="shadow" style="padding-top:50px; padding-bottom: 50px;">
		<form method="get" name="myform" action="reservationcomplete.sport">
		<table style="column-width: 1000px;">
			<tr align="center">
				<td width="1000px"><font style="font-size: 30px; color: cadetblue">
				<input type="hidden" value="${cen}" name="center">
				<c:choose>
				    <c:when test="${cen eq 'football'}">축구장</c:when>
				    <c:when test="${cen eq 'basketball'}">농구장</c:when>
				     <c:when test="${cen eq 'baseball'}">야구장</c:when>
				     <c:when test="${cen eq 'swim'}">수영장</c:when>
				</c:choose>	예약</font></td>
			</tr>
			<tr align="center">
				<td>
					<hr>
					<h4>입금자명</h4> <br> <input type="text" name="name">
				</td>
			</tr>
			<tr align="center">
				<td>
					<hr>
					<h4>사용날자</h4> <br> <br> <input type="text" id="date" name="datefilter" style="width: 210px;">
				</td>
			</tr>
			<tr align="center">
				<td><hr>
					<h4>사용시간대</h4><h5>(사용시간 전체선택)</h5> <br>
					<table>
						<tr>
							<td>
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-info">
										<input type="checkbox" autocomplete="off" name="time" value="0800~1000">08:00~10:00</label>
									<label class="btn btn-info">
										<input type="checkbox" autocomplete="off" name="time" value="1000~1200">00:00~12:00</label>
									<label class="btn btn-info">
										<input type="checkbox" autocomplete="off" name="time" value="1200~1400">12:00~14:00</label>
									<label class="btn btn-info">
										<input type="checkbox" autocomplete="off" name="time" value="1400~1600">14:00~16:00</label>
									<label class="btn btn-info">
										<input type="checkbox" autocomplete="off" name="time" value="1600~1800">16:00~18:00</label>
									<label class="btn btn-info">
										<input type="checkbox" autocomplete="off" name="time" value="1800~2000">18:00~20:00</label>
									<label class="btn btn-info">
										<input type="checkbox" autocomplete="off" name="time" value="2000~2200">20:00~22:00</label>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<hr>
					<h4>남기실 말</h4>
				</td>
			</tr>
			<tr>
				<td align="center">
					<textarea style="width:800px; height:100px" name="Rcontent"></textarea>
				</td>
			</tr>
			<tr align="center">
				<td>
					<hr>
					<h4>가격</h4> <br>
					<div id="total">
						<font color="blue"></font>
					</div>
					<span>
						<font id="fdate" style="color:red;"></font>
						<font id="ftime" style="color:red;"></font>
						<font id="price" style="color:red;"></font>
						<input type="text" name="pr" value="" readonly placeholder="여기에 총 일수 + 시간을 표시">
					</span>
				</td>
			</tr>
			<tr align="center">
				<td><hr>
					<div class="widget">
					<button type="submit" class="btn btn-outline-primary" style="width:35%">예약하기</button>
					<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
					<button type="reset" class="btn btn-outline-secondary" style="width:35%">취소하기</button>
					</div>
				</td>
			</tr>
		</table>
				</form>
		
		</div>
	</div>
	<br><br><br><br>
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