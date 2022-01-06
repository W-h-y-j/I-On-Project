<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>I-ON:아이 온 희망나눔 서비스</title>
<jsp:include page="../include/base.jsp" />
</head>
<body id="reportsPage">
	<div class="" id="home">
		<div class="container">
			<jsp:include page="../include/header.jsp" />
			<div class="row tm-content-row tm-mt-big">
				<!-- <div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<h2 class="tm-block-title">Latest Hits</h2>
						<canvas id="lineChart"></canvas>
					</div>
				</div> -->
				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<h2 class="tm-block-title">Performance</h2>
						<canvas id="barChart"></canvas>
					</div>
				</div>
				<div class="tm-col tm-col-small">
					<div class="bg-white tm-block h-100">
						<canvas id="pieChart" class="chartjs-render-monitor"></canvas>
					</div>
				</div>

				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<div class="row">
							<div class="col-8">
								<h2 class="tm-block-title d-inline-block">Top Product List</h2>

							</div>
							<div class="col-4 text-right">
								<a href="products.html" class="tm-link-black">View All</a>
							</div>
						</div>
						<ol
							class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
							<li class="tm-list-group-item">Donec eget libero</li>
							<li class="tm-list-group-item">Nunc luctus suscipit
								elementum</li>
							<li class="tm-list-group-item">Maecenas eu justo maximus</li>
							<li class="tm-list-group-item">Pellentesque auctor urna nunc
							</li>
							<li class="tm-list-group-item">Sit amet aliquam lorem
								efficitur</li>
							<li class="tm-list-group-item">Pellentesque auctor urna nunc
							</li>
							<li class="tm-list-group-item">Sit amet aliquam lorem
								efficitur</li>
						</ol>
					</div>
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
	<jsp:include page="../include/chartThings.jsp" />
</body>
</html>