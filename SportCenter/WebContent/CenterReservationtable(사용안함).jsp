<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CenterReservationtable.jsp</title>

<!-- jQuery -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<!-- datefilter -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"/>

<style type="text/css">
hr {
	padding-top: 12px;
	padding-bottom: 12px;
}

.ui-datepicker-trigger{cursor: pointer;}
.hasDatepicker{cursor: pointer;}
</style>
<script type="text/javascript">
	$(function(){
		$("#price").html('<font style="color:red;"> 1234 </font>');
		$(".widget input[type=submit, .widget a, .widget button").button();
	});

	
	$(function(){
		$('input[name="dates"]').daterangepicker({
			  autoApply:true,
		      autoUpdateInput: false,
		      locale: {
		          cancelLabel: 'Clear'
		      }
		  });
		  $('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
		      $(this).val(picker.startDate.format('YYYY-MM-DD') + ' - ' + picker.endDate.format('YYYY-MM-DD'));
		  });

		  $('input[name="dates"]').on('cancel.daterangepicker', function(ev, picker) {
		      $(this).val('');
		  });

	})
</script>
</head>
<body>
	<table align="center" style="column-width: 1000px;">
		<tr align="center">
			<td width="1000px"><font style="font-size: 30px; color: cadetblue">예약</font></td>
		</tr>
		<tr align="center">
			<td>
				<hr><h4>경기장</h4><br>
				<select><option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;축구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;농구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;야구장&nbsp;&nbsp;&nbsp;&nbsp;</option>
						<option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수영장&nbsp;&nbsp;&nbsp;&nbsp;</option>
				</select>
				<br>
			</td>
		</tr>
		<tr align="center">
			<td>
				<hr><h4>입금자명</h4><br><input type="text">
			</td>
		</tr>
		<tr align="center" style="padding-top: 20">
			<td>
				<hr><h4>사용인원</h4><br> <input type="number" value="0" min="0">
			</td>
		</tr>
		<tr align="center">
			<td>
				<hr><h4>사용날자</h4><br><br>
				<input type="text" name="dates" style="width:210px;">
			</td>
		</tr>
		<tr align="center">
			<td><hr><h4>사용시간대</h4><br>
				<table> 
					<tr>
					<div class="btn-group" data-toggle="buttons">
					  <label class="btn btn-info active">
					    <input type="checkbox" autocomplete="off">08:00~10:00 
					  </label>
					  <label class="btn btn-info">
					    <input type="checkbox" autocomplete="off">0:00~12:00
					  </label>
					  <label class="btn btn-info">
					    <input type="checkbox" autocomplete="off">12:00~14:00
					  </label>
					  <label class="btn btn-info">
					    <input type="checkbox" autocomplete="off">14:00~16:00
					  </label>
					  <label class="btn btn-info">
					    <input type="checkbox" autocomplete="off">16:00~18:00
					  </label>
					  <label class="btn btn-info">
					    <input type="checkbox" autocomplete="off">18:00~20:00
					  </label>
					  <label class="btn btn-info">
					    <input type="checkbox" autocomplete="off">20:00~22:00
					  </label>
					</div>
				</table>
			</td>
		</tr>
		<tr align="center">
			<td>
				<hr><h4>가격</h4><br>
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