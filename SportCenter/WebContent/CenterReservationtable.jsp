<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CenterReservation.jsp</title>

<!-- jQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
hr {
	padding-top: 12px;
	padding-bottom: 12px;
}

#feedback {
	font-size: 1.4em;
}

#selectable .ui-selecting {
	background: #FECA40;
}

#selectable .ui-selected {
	background: #F39814;
	color: white;
}

#selectable {
	list-style-type: hebrew;
	margin: 0;
	padding: 10px;
	width: 60%;
}

#selectable li {
	margin: 3px;
	padding: 0.4em;
	font-size: 1.4em;
	height: 18px;
}
</style>
<script type="text/javascript">
	$(function() {
		$(function() {
			var dateFormat = "yy/mm/dd", 
				from = $("#from").datepicker({
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 2
			}).on("change", function() {
				to.datepicker("option", "minDate", getDate(this));
			}), to = $("#to").datepicker({
				defaultDate : "+1w",
				changeMonth : true,
				numberOfMonths : 2
			}).on("change", function() {
				from.datepicker("option", "maxDate", getDate(this));
			});
			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
				} catch (error) {
					date = null;
				}
				return date;
			}
		});
		$("#selectable").selectable();
		$("#price").html('<font style="color:red;"> 1234 </font>');
		$(".widget input[type=submit], .widget a, .widget button").button();
	});
</script>
</head>
<body>
	<table align="center" style="column-width: 1000px;">
		<tr align="center">
			<td width="1000px"><font
				style="font-size: 30px; color: cadetblue">예약</font></td>
		</tr>
		<tr align="center">
			<td>
				<hr>경기장<br>
				<select><option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;축구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;농구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수영장&nbsp;&nbsp;&nbsp;&nbsp;</option>
				</select>
			</td>
		</tr>
		<tr align="center">
			<td>
				<hr>입금자명<br> <input type="text">
			</td>
		</tr>
		<tr align="center" style="padding-top: 20">
			<td>
				<hr>사용인원<br> <input type="number" value="0" min="0">
			</td>
		</tr>
		<tr align="center">
			<td>
				<hr>사용날자<br>
				<label for="from">From</label>
				<input	type="text" id="from" name="from"> 
				<label for="to">to</label>
				<input type="text" id="to" name="to">
			</td>
		</tr>
		<tr align="center">
			<td><hr>사용시간대( 드레그하여 선택 )<br>
				<table> 
					<tr id="selectable" heigt="50px">
						<td class="ui-widget-content" width="75px">08:00<br>~10:00</td>
						<td class="ui-widget-content">10:00<br>~12:00</td>
						<td class="ui-widget-content">12:00<br>~14:00</td>
						<td class="ui-widget-content">14:00<br>~16:00</td>
						<td class="ui-widget-content">16:00<br>~18:00</td>
						<td class="ui-widget-content">18:00<br>~20:00</td>
						<td class="ui-widget-content">20:00<br>~22:00</td>
						<br>
						<input type="checkbox" id="fill">24시간   <!-- 아직 구현 않함 -->
					</tr>
				</table>
			</td>
		</tr>
		<tr align="center">
			<td>
				<hr>가격<br>
				<div id="total"><font color="blue">여기에 총 일수 + 시간을 표시</font></div>
				<div id="price"></div>
				
			</td>
		</tr>
		<tr align="center">
			<td><hr>
				<div class="widget">
					<button>예약하기</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button>취소하기</button>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>