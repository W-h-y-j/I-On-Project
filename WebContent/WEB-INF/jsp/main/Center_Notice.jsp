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
				<c:forEach items="${noticeList}" var="noticeList" end="10">
										<tr>
												<td>${noticeList.notice_no}</td>												
												<td>${noticeList.notice_title}</td>
												<td>${noticeList.notice_center}</td>
												<td>${noticeList.notice_date}</td>
												<td>${noticeList.notice_view}</td>
												
												
										</tr>	
										</c:forEach>
				</tbody>
			</table>
		</div>


		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li>
						<c:choose>
                            	<c:when test="${page < 1}">
                            		<a class="page-link"  aria-label="Previous">
                                		<span aria-hidden="true">&laquo;</span>
                            		</a>
                            	</c:when>
                            	<c:when test="${page > 1}">
                            		<a class="page-link"  href="/Center_Notice?&page=${page-1} "aria-label="Previous">
                                		<span aria-hidden="true">&laquo;</span>
                            		</a>
                            	</c:when>
                            </c:choose>
                            	
                        	</li>
                        	<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
                    			<c:if test="${a == page}">
                    				<li class="page-item"><a class="page-link" href="#">[${a}]</a></li>
                    			</c:if> <%-- 현재쪽 선택 --%>
                    			
                    			<c:if test="${a != page}"> <%-- 현재쪽 비선택 --%>
                    				<li class="page-item"><a class="page-link" href="/Center_Notice?&page=${a}">[${a}]</a></li>
                    			</c:if>
                    		</c:forEach>
                        	<c:if test="${page >= maxpage}">
                        		<li class="page-item">
                            		<a class="page-link"  aria-label="Next">
                                		<span aria-hidden="true">&raquo;</span>
                            		</a>
                        		</li>
                        	</c:if>
                    		<c:if test="${page < maxpage}" >
                    			
                    			<li class="page-item">
                            		<a class="page-link" href="/Center_Notice?&page=${page+1}" aria-label="Next">
                                		<span aria-hidden="true">&raquo;</span>
                            		</a>
                        		</li>
                    		</c:if>
			</ul>
		</nav>
		<jsp:include page="../include/footer.jsp" />
	</div>

</body>
</html>