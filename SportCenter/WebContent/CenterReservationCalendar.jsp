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

#external-events {
	float: left;
	width: 150px;
	padding: 0 10px;
	text-align: left;
}

#external-events h4 {
	font-size: 16px;
	margin-top: 0;
	padding-top: 1em;
}

.external-event { /* try to mimick the look of a real event */
	margin: 10px 0;
	padding: 2px 4px;
	background: skyblue;
	color: #fff;
	font-size: .85em;
	cursor: pointer;
}

#external-events p {
	margin: 1.5em 0;
	font-size: 11px;
	color: #666;
}

#external-events p input {
	margin: 0;
	vertical-align: middle;
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

						/* initialize the external events
						-----------------------------------------------------------------*/

						$('#external-events div.external-event').each(
								function() {

									// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
									// it doesn't need to have a start or end
									var eventObject = {
										title : $.trim($(this).text())
									// use the element's text as the event title
									};

									// store the Event Object in the DOM element so we can get to it later
									$(this).data('eventObject', eventObject);

									// make the event draggable using jQuery UI
									$(this).draggable({
										zIndex : 999,
										revert : true, // will cause the event to go back to its
										revertDuration : 0
									//  original position after the drag
									});

								});

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
												month : 'MMMM yyyy', // September 2009
												week : "MMMM yyyy", // September 2009
												day : 'MMMM yyyy' // Tuesday, Sep 8, 2009
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
											droppable : false, // this allows things to be dropped onto the calendar !!!
											drop : function(date, allDay) { // this function is called when something is dropped

												// retrieve the dropped element's stored Event Object
												var originalEventObject = $(
														this).data(
														'eventObject');

												// we need to copy it, so that multiple events don't have a reference to the same object
												var copiedEventObject = $
														.extend({},
																originalEventObject);

												// assign it the date that was reported
												copiedEventObject.start = date;
												copiedEventObject.allDay = allDay;

												// render the event on the calendar
												// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
												$('#calendar')
														.fullCalendar(
																'renderEvent',
																copiedEventObject,
																true);

												// is the "remove after drop" checkbox checked?
												if ($('#drop-remove').is(
														':checked')) {
													// if so, remove the element from the "Draggable Events" list
													$(this).remove();
												}

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
	
	$(document).ready(function(){
		$('.fm').mouseenter(function(){ 
			$('.fmsub').stop().slideDown("normal")
		});
		$('.fmm').mouseleave(function(){
			$('.fmsub').stop().slideUp("normal")
		});
		$('.bm').mouseenter(function(){
			$('.bmsub').stop().slideDown("normal")
		});
		$('.bmm').mouseleave(function(){
			$('.bmsub').stop().slideUp("normal")
		});
		$('.bbm').mouseenter(function(){
			$('.bbmsub').stop().slideDown("normal")
		});
		$('.bbmm').mouseleave(function(){
			$('.bbmsub').stop().slideUp("normal")
		});
		$('.sm').mouseenter(function(){
			$('.smsub').stop().slideDown("normal")
		});
		$('.smm').mouseleave(function(){
			$('.smsub').stop().slideUp("normal")
		});
	});
</script>
</head>

<body style="background-color:black;">
<jsp:include page="CenterHeader.jsp">
<jsp:param value="" name=""/>
</jsp:include>
				<div id="menus" class="col-sm-8" style="padding-top: 20px; background-color: lightgray; padding-bottom: 50px">
					<div id='wrap'>
						<div id='calendar'></div>
						<div style='clear: both'></div>
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