<%@ page contentType="text/html; charset=UTF-8"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>I-ON:아이 온 희망나눔 서비스</title>
<jsp:include page="../include/base.jsp" />
</head>
<body id="reportsPage" class="bg02">
	<!-- <div class="" id="home"> -->
		<div class="container">
			<jsp:include page="../include/header.jsp" />
			<!-- row -->
			<div class="row tm-content-row tm-mt-big">
				<div class="col-xl-12 col-lg-24 tm-md-24 tm-sm-24 tm-col">
					<div class="bg-white tm-block h-100">
						<div class="row">
							<div class="col-md-8 col-sm-24">
								<h2 class="tm-block-title d-inline-block">시스템 공지사항</h2>

							</div>
							<div class="col-md-4 col-sm-24 text-right">
								<a href="add-product.html" class="btn btn-small btn-primary">등록</a>
								<a href="add-product.html" class="btn btn-small btn-primary">수정</a>
							</div>
						</div>
						<div class="table-responsive">
							<table
								class="table table-hover table-striped tm-table-striped-even mt-5 text-center">
								<thead>
									<tr class="tm-bg-gray text-center">
										<th scope="col">&nbsp;</th>
										<th scope="col">제목</th>
										<th scope="col" class="text-center">작성자</th>
										<!-- <th scope="col" class="text-center"></th> -->
										<th scope="col">작성일</th>
										<th scope="col">&nbsp;</th>
									</tr>
								</thead>
								<tbody>
									<tr class>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name"> In malesuada placerat (hover)</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">255</td> -->
										<td>2018-10-28</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
									</tr>
									<tr>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name"> Aenean eget urna enim. Sed
											enim</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">260</td> -->
										<td>2018-10-24</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
									</tr>
									<tr>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name"> Vivamus convallis
											tincidunt nisi</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">440</td> -->
										<td>2019-02-14</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
									</tr>
									<tr>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name"> Donec semper massa eget</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">655</td> -->
										<td>2019-03-22</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
									</tr>
									<tr>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name">Donec semper massa eget</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">655</td> -->
										<td>2019-03-22</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
									</tr>
									<tr>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name"> Donec semper massa eget</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">655</td> -->
										<td>2019-03-22</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
									</tr>
									<tr>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name"> Donec semper massa eget</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">655</td> -->
										<td>2019-03-22</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
									</tr>
									<tr>
										<th scope="row"><input type="checkbox"
											aria-label="Checkbox"></th>
										<td class="tm-product-name"> Donec semper massa eget</td>
										<td class="text-center">시스템 관리자</td>
										<!-- <td class="text-center">655</td> -->
										<td>2019-03-22</td>
										<td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
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
										<li class="page-item active"><a class="page-link"href="#">1</a></li>
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
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
	<!-- </div> -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<!-- https://jquery.com/download/ -->
	<script src="js/bootstrap.min.js"></script>
	<!-- https://getbootstrap.com/ -->
	<script>
		$(function() {
			$('.tm-product-name').on('click', function() {
				window.location.href = "edit-product.html";
			});
		})
	</script>


</body>


</html>