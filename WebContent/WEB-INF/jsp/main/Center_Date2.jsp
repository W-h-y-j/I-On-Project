<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<style>
.btn-group{
 float: right;
 font-size: 20px; 
 color: #333;
}
.tm-table-mt{
	margin: 0 auto;
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
						<div class="col-md-12 col-sm-24">
							<h2 class="tm-block-title d-inline-block">센터 일정</h2>
							<br/>
							<br/>
							
							<div class="btn-group" role="group" aria-label="Basic example">
								<button type="button"
									class="fc.button fc-state-default fc-corner-left">
									<a href="./Center_Date1">캘린더</a>
								</button>
								<button type="button"
									class="fc.button fc-state-default fc-corner-right">
									<a href="#">리스트</a>
								</button>
							</div>
							
							<div class="table-responsive">
							<table
								class="table table-hover table-striped tm-table-striped-even mt-3 text-center">
								<thead>
									<tr class="tm-bg-gray">
										<th scope="col">센터명</th>
										<th scope="col" class="text-center">일정</th>
										<th scope="col">날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tm-product-name">희망의집지역아동센터</td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/26337');" class="home">eget vehicula metus. In euismod sollicitudin lorem eu aliquet.</a></td>
										<td>2022-01-03</td>
									</tr>
									<tr>
										<td class="tm-product-name">희망신나는집문화학교</td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/26401');" class="home">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></td>
										<td>2022-01-02</td>
									</tr>
									<tr>
										<td class="tm-product-name">희망샘지역아동센터</td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/hopespring');" class="home">Vivamus viverra porttitor commodo.</a></td>
										<td>2022-01-01</td>
									</tr>
									<tr>
										<td class="tm-product-name">희망드림지역아동센터</td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/26505');" class="home">In pulvinar fermentum erat a tincidunt. Nulla id magna sit ...</a></td>
										<td>2022-01-01</td>
									</tr>
									<tr>
										<td class="tm-product-name">흑석희망지역아동센터</td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/hshope');" class="home">Nullam ac dignissim diam. Mauris vitae magna ipsum.</a></td>
										<td>2021-12-31</td>
									</tr>
									<tr>
										<td class="tm-product-name">흑석지역아동센터</td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/heukseok');" class="home">eget vehicula metus. In euismod sollicitudin lorem eu aliquet.</td>
										<td>2021-12-30</td>
									</tr>
									<tr>
										<td class="tm-product-name">행복한지역아동센터</a></td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/26351');" class="home">Sed diam velit, dictum a iaculis sed, tempor sed mi.</a></td>
										<td>2021-12-26</td>
									</tr>
									<tr>
										<td class="tm-product-name">행복한지역아동센터</td>
										<td class="text-left"><a href="#"
											onclick="openMinihp('/happy1225');" class="home">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></td>
										<td>2021-12-25</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<br/>
					
					<div class="tm-table-mt tm-table-actions text-center">
						<!-- <div class="tm-table-actions-col-right"> --> 
						<!-- <p class="page"> -->
						<span class="tm-pagination-label">Page</span>
						<nav aria-label="Page navigation" class="d-inline-block">

							<ul class="pagination tm-pagination">
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><span class="tm-dots d-block">...</span>
								</li>
								<li class="page-item"><a class="page-link" href="#">13</a></li>
								<li class="page-item"><a class="page-link" href="#">14</a></li>
							</ul>
						</nav>
						<!-- </p> -->
						<!-- </div> -->
					</div>

											
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../include/footer.jsp" />
	
</body>
</html>