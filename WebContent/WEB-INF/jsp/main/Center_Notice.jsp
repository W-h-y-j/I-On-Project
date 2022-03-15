<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>아동센터 공지</title>
<jsp:include page="../include/base.jsp" />
<style>
.searchArea {
	text-align: right;
	margin: 0px 0px 0px 50px;
}
</style>
</head>
<body id="reportsPage" class="white">
	<div class="container">
		<jsp:include page="../include/header.jsp" />

		<a class="navbar-brand" style="width: 1600px; margin: auto">아동센터
			공지</a> <img src="Resources/img/Center/now_img.png"
			class="rounded mx-auto d-block" alt="..."
			style="width: 1600px; margin: auto">

		<p class="searchArea" style="width: 1600px; margin: auto">
			<select class="option">
				<option value="sr">검색</option>
				<option value="title">제목</option>
				<option value="addr">내용</option>
			</select> &nbsp; <input type="text" name="" class="textbox" /> <input
				type="button" value="검색" class="btn" onclick="#" />
		</p>

		<div class="table-responsive">
			<table class="table table-bordered"
				style="width: 1600px; margin: auto">

				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">구분</th>
						<th scope="col">센터명</th>
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${systemBlog}" var="systemBlog" end="10">
										<tr>
												<td>${systemBlog.notice_no}</td>
												<td>${systemBlog.notice_div}</td>
												<td>${systemBlog.notice_title}</td>
												<td>${systemBlog.notice_writer}</td>
												<td>${systemBlog.notice_date}</td>
												<td>${systemBlog.notice_view}</td>
										</tr>	
										</c:forEach>
				</tbody>
			</table>
		</div>


		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="-1" aria-disabled="true">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>
		<jsp:include page="../include/footer.jsp" />
	</div>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!--     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
	<!--     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script> -->
	<!--     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> -->
	<!-- 		<div class="container"> -->
	<!-- 		</div> -->
</body>
</html>