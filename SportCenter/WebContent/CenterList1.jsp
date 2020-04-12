<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>스포츠센터게시판</title>

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

<style type="text/css">
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
.upperbtn{
	background-color:#82A5c5;
}
.lowerbtn{
	background-color:#82A5c5;
}
</style>
<script type="text/javascript">
function clearText(){
	document.myform.keyword.value="";
	document.myform.keyword.focus();
  }
</script>
</head>

<body>
	<jsp:include page="CenterHeader.jsp" />
	<!-- 메인 내용 표시되는 곳 -->
	<div id="menus" class="col-sm-8" style="padding-top: 20px; background-color: lightgray; padding-bottom: 50px">
	<div class="shadow w-auto p-3 " style="padding-top:50px; padding-bottom: 50px;">
		<table class="table">
			<tr>
				<td colspan="2"> 총${Gtotal}건 &nbsp;&nbsp;${Atotal}/${Gtotal}</td>
				<td colspan="4" align="right" style="padding-right:20px">
					<form method="post" name="myform" action="List.center">
						<div class="row" style="float:right;">
							<select class="custom-select" style="width:70px;" name="keyfield" onchange="clearText();">
								<option value="title" <c:if test="${skey=='title'}">selected</c:if>>제목</option>
								<option value="name" <c:if test="${skey=='name'}">selected</c:if>>작성자</option>
							</select>
							<div class="input-group" style="width:200px ; align:right;">
								<input type="text" class="form-control" placeholder="Search" name="keyword" >
			  					<div class="input-group-append">
									<button class="btn btn-info" type="submit">Go</button> 
								</div>
							</div>
						</div>
					</form>
				</td>
			</tr>
			<tr>
				<td>번호</td>
				<td width="30%">제목</td>
				<td>작성자</td>
				<td>작성 날짜</td>
				<td>카테고리</td>
				<td>조회수</td>
			</tr>
			<c:forEach var="list" items="${LG}">
			<tr>
				<td>${list.rn}</td>
				<td>${list.title}</td>
				<td>${list.id}</td>
				<td>${list.sdate}</td>
				<td>${list.center}</td>
				<td>${list.hit}</td>
			</tr>
			</c:forEach>
			<!-- 게시글 여기 -->
			
			
			<tr >
  				<td colspan="6" align="center">
  				<ul class="pagination justify-content-center">
					<li class="page-item disabled">
					<c:if test="${startpage > 10}"><a href="List.center?pageNum=${startpage-10}&keyfield=${skey}&keyword=${sval}"> Previous </a> </c:if>
			  		</li>
			  		<c:forEach var="i" begin="${startpage}" end="${endpage}">
					  	<li class="page-item">
						  	<c:choose>
							  	<c:when test="${i==pageNUM}"><font class="page-link">${i}</font></c:when>
							  	<c:otherwise><a class="page-link" href="List.center?pageNum=${i}&keyfield=${skey}&keyword=${sval}"> ${i} </a> </c:otherwise>
						  	</c:choose>
					  	</li>
				  	</c:forEach>
				  	<li class="page-item">
						<c:if test="${endpage != pagecount}"><a class="page-link" href="List.center?pageNum=${startpage+10}&keyfield=${skey}&keyword=${sval}"> Next </a> </c:if>
					</li>
				</ul>
			    </td>
		  </tr>
		</table>
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