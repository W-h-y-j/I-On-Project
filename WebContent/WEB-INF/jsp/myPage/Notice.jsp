<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
								<a href="/Notice-Add" class="btn btn-small btn-primary">등록</a>
								<a href="/Notice-Mod" class="btn btn-small btn-primary">수정</a>
								<a href="/Notice-Del" class="btn btn-small btn-primary">삭제</a>
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
										<th scope="col">작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${notice_list}" var="notice_list">
										<tr>
											<th scope="row">
												<input type="checkbox" aria-label="Checkbox">
											</th>
												<td class="tm-product-name">${notice_list.title}</td>
												<td class="text-center">${notice_list.insert_id}</td>
												<td class="text-center">${notice_list.insert_dt}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="tm-table-mt tm-table-actions text-center">
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
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
	
		$(function() {
			$('.tm-product-name').on('click', function() {
				window.location.href = "mypage/Notice-View";
			});
		})
	</script>


</body>


</html>