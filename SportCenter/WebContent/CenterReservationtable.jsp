<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CenterReservation.jsp</title>

<!-- jquery -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
hr{
	padding-top:12px;
	padding-bottom:12px;
}
	

</style>
<script type="text/javascript">
	$( function() {
		$( "#datepicker" ).datepicker( "option", "showAnim", "fadeIn");
  	 });

</script>
</head>
<body>
<table align="center" style="column-width: 1000px;">
    <tr align="center">
        <td width="1000px"><font style="font-size: 30px; color: cadetblue">예약</font></td>
	</tr>
	<tr align="center">
     	<td><hr>경기장<br><select><option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;축구장&nbsp;&nbsp;&nbsp;&nbsp;</option></select></td>
    </tr>
    <tr align="center">
		<td><hr>입금자명<br><input type="text"> </td>
	</tr>
	<tr align="center" style="padding-top: 20"> 
		<td><hr>사용인원<br><input type="number" value="0"></td>
    </tr>
	<tr align="center">
		<td><hr>사용시간<br><input type="text" id="datepicker"> ~ <input type="text" id="datepicker"></td>
    </tr>
	<tr align="center">
		<td><hr>가격<br><input type="text" value="1234" disabled="disabled"></td>
	</tr>
	<tr align="center">
		<td><hr><button>예약하기</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>취소하기</button></td>
	</tr>


</table>


</body>
</html>