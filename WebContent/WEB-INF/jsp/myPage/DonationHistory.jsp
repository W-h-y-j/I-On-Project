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
				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<h2 class="tm-block-title">Performance</h2>
						<canvas id="barChart"></canvas>
					</div>
				</div>
				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<canvas id="pieChart" class="chartjs-render-monitor"></canvas>
					</div>
				</div>
				<div class="table-responsive">
					<table
						class="table table-hover table-striped tm-table-striped-even mt-5 text-center">
						<thead>
							<tr class="tm-bg-gray text-center">
								<!-- <th scope="col">&nbsp;</th> -->
								<th scope="col">no</th>
								<th scope="col" class="text-center">센터명</th>
								<th scope="col" class="text-center">필요 분야</th>
								<th scope="col">후원 내역</th>
								<th scope="col">후원일자</th>
								<th scope="col">감사해요 게시판 바로가기</th>
							</tr>
						</thead>
						<tbody>
							<tr class="">
								<th scope="row">6</th>
								<td class="text-center">상도동지역아동센터</td>
								<td class="tm-product-name">후원 금액</td>
								<td class="text-center">250,000</td>
								<td class="text-center">2018-10-28</td>
								<!-- <td></td> -->
								<td><button type="submit" class="btn btn-small btn-primary">바로가기</button></td>
							</tr>
							<tr class="">
								<th scope="row">5</th>
								<td class="text-center">상도동지역아동센터</td>
								<td class="tm-product-name">후원 금액</td>
								<td class="text-center">250,000</td>
								<td class="text-center">2018-10-28</td>
								<!-- <td></td> -->
								<td><button type="submit" class="btn btn-small btn-primary">바로가기</button></td>
							</tr>
							<tr class="">
								<th scope="row">4</th>
								<td class="text-center">상도동지역아동센터</td>
								<td class="tm-product-name">후원 금액</td>
								<td class="text-center">250,000</td>
								<td class="text-center">2018-10-28</td>
								<!-- <td></td> -->
								<td><button type="submit" class="btn btn-small btn-primary">바로가기</button></td>
							</tr>
							<tr class="">
								<th scope="row">3</th>
								<td class="text-center">상도동지역아동센터</td>
								<td class="tm-product-name">후원 금액</td>
								<td class="text-center">250,000</td>
								<td class="text-center">2018-10-28</td>
								<!-- <td></td> -->
								<td><button type="submit" class="btn btn-small btn-primary">바로가기</button></td>
							</tr>
							<tr class="">
								<th scope="row">2</th>
								<td class="text-center">상도동지역아동센터</td>
								<td class="tm-product-name">후원 금액</td>
								<td class="text-center">250,000</td>
								<td class="text-center">2018-10-28</td>
								<!-- <td></td> -->
								<td><button type="submit" class="btn btn-small btn-primary">바로가기</button></td>
							</tr>
							<tr class="">
								<th scope="row">1</th>
								<td class="text-center">상도동지역아동센터</td>
								<td class="tm-product-name">후원 금액</td>
								<td class="text-center">250,000</td>
								<td class="text-center">2018-10-28</td>
								<!-- <td></td> -->
								<td><button type="submit" class="btn btn-small btn-primary">바로가기</button></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tm-table-mt tm-table-actions text-center">
					<!-- <div class="tm-table-actions-col-left">
								<button class="btn btn-danger">Delete Selected Items</button>
							</div> -->
					<!-- <div class="tm-table-actions-col-right"> -->
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
					<!-- </div> -->
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
		<jsp:include page="../include/chartThings.jsp" />
</body>
</html>