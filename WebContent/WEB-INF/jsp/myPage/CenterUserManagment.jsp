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
	<div class="container">
		<jsp:include page="../include/header.jsp" />
		<div class="row tm-content-row tm-mt-big">
			<div class="col-xl-12 col-lg-24 tm-md-24 tm-sm-24 tm-col">
				<div class="bg-white tm-block h-100">

					<div class="row">
						<div class="col-md-8 col-sm-24">
							<h2 class="tm-block-title d-inline-block">센터 운영자 관리</h2>
						</div>
						<div class="col-md-4 col-sm-24 text-right">
							<a href="/CenterUserInsert" class="btn btn-small btn-primary">등록</a>
							<a href="javascript:openWindowPop('/popup/CenterUser-Mod', 'popup');" class="btn btn-small btn-primary">수정</a>
							<script>
								function popup(url, name) {
									var option = "width = 500, height = 700, top = 100, left = 200, location = no"
									window.open(url, name, option);
								}
							</script>
							<a href="/CenterUser-Del" class="btn btn-small btn-primary">삭제</a>
						</div>
					</div>
					<div class="table-responsive">
						<table
							class="table table-hover table-striped tm-table-striped-even mt-5 text-center">
							<thead>
								<tr class="tm-bg-gray text-center">
									<th scope="col">&nbsp;</th>
									<th scope="col" class="text-center">센터명</th>
									<th scope="col" class="text-center">ID</th>
									<th scope="col">마지막 로그인 시간</th>
									<th scope="col">가입 일자</th>
									<th scope="col">지역</th>
								</tr>
							</thead>
							<tbody>
								<tr class="">
									<th scope="row"><input type="checkbox"
										aria-label="Checkbox"></th>
									<td class="text-center">상도동지역아동센터</td>
									<td class="tm-product-name">sangdochild2018</td>
									<td class="text-center">2022-01-05 15:31</td>
									<td class="text-center">2018-10-28</td>
									<td class="text-center">동작구</td>
								</tr>
								<tr class="">
									<th scope="row"><input type="checkbox"
										aria-label="Checkbox"></th>
									<td class="text-center">아이사랑공부방</td>
									<td class="tm-product-name">loveyoujongro</td>
									<td class="text-center">2021-12-25 18:31</td>
									<td class="text-center">2019-12-28</td>
									<td class="text-center">종로구</td>
								</tr>
								<tr class="">
									<th scope="row"><input type="checkbox"
										aria-label="Checkbox"></th>
									<td class="text-center">신길동지역센터</td>
									<td class="tm-product-name">happychildren</td>
									<td class="text-center">2022-01-08 10:19</td>
									<td class="text-center">2019-02-28</td>
									<td class="text-center">영등포구</td>
								</tr>
								<tr class="">
									<th scope="row"><input type="checkbox"
										aria-label="Checkbox"></th>
									<td class="text-center">아이들을위한집</td>
									<td class="tm-product-name">childrenhome</td>
									<td class="text-center">2022-01-06 19:55</td>
									<td class="text-center">2015-07-10</td>
									<td class="text-center">강서구</td>
								</tr>
								<tr class="">
									<th scope="row"><input type="checkbox"
										aria-label="Checkbox"></th>
									<td class="text-center">옥수동아이모임</td>
									<td class="tm-product-name">morelove</td>
									<td class="text-center">2022-01-06 12:12</td>
									<td class="text-center">2022-01-02</td>
									<td class="text-center">성동구</td>
								</tr>
								<tr class="">
									<th scope="row"><input type="checkbox"
										aria-label="Checkbox"></th>
									<td class="text-center">불광아이센터</td>
									<td class="tm-product-name">bulgwangcenter</td>
									<td class="text-center">2021-11-30 14:17</td>
									<td class="text-center">2018-10-28</td>
									<td class="text-center">은평구</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="tm-table-mt tm-table-actions text-center">
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
					</div>
				</div>
				<jsp:include page="../include/footer.jsp" />
			</div>
		</div>
	</div>
</body>
</html>