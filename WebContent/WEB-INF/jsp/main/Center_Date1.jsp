<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<script src="Resources/js/jquery-3.3.1.min.js"></script>
<script src="Resources/js/bootstrap.min.js"></script>
<script src="Resources/js/moment.min.js"></script>

<link rel="stylesheet" href="css/fullcalendar.min.css">
<script src = "js/fullcalendar.min.js" type = "text/javascript"></script>
<script>
$(function() {

	  // page is now ready, initialize the calendar...

	  $('#calendar').fullCalendar({
	    // put your options and callbacks here
	  })

	});
</script>
<style>
.btn-group{
 float: right;
 font-size: 20px; 
 color: #333;
}
</style>

<title>I-ON:아이 온 희망나눔 서비스</title>
<jsp:include page="../include/base.jsp" />
</head>

<body id="reportsPage" class="white">
	<div class="container">
		<jsp:include page="../include/header.jsp" />
		<div class="row tm-content-row tm-mt-big">
			<div class="col-xl-12 col-lg-24 tm-md-24 tm-sm-24 tm-col">
				<div class="bg-white tm-block h-100">
					<div class="row">
						<div class="col-md-24 col-sm-24">
							<h2 class="tm-block-title d-inline-block">센터 일정</h2>
							<br />
							<br />

							<div class="btn-group" role="group" aria-label="Basic example">
								<button type="button"
									class="fc.button fc-state-default fc-corner-left">
									<a href="#">캘린더</a>
								</button>
								<button type="button"
									class="fc.button fc-state-default fc-corner-right">
									<a href="./Center_Date2">리스트</a>
								</button>
							</div>

							<br />
							<br />

							<div id="calendar"></div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../include/footer.jsp" />
	</div>
</body>
</html>