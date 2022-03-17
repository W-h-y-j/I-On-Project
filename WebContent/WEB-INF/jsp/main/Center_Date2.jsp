<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
.btn-d{
 margin: 0 0 0 1074px;
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
							</br>														
							<div class="btn-d col-md-4 col-sm-24 text-right">
								<a href="/date_write" class="btn btn-small btn-primary">등록</a>								
							</div>
							
							<div class="table-responsive">
							<table
								class="table table-hover table-striped tm-table-striped-even mt-3 text-center">
								<thead>
									<tr class="tm-bg-gray">
										<th scope="col">no</th>										
										<th scope="col">센터</th>
										<th scope="col" class="text-center">일정</th>
										<th scope="col">작성일</th>
									</tr>
								</thead>
								<tbody>								
								  <c:forEach var="b" items="${blist}">
									<tr>
										<th scope="row">${b.cno}</th>									  										  
										<td class ="tm-product-name">${b.center_name}</td>
										<td class="text-left"><a href="date_cont?cno=${b.cno}&page=${page}">${b.center_title}</a></td>
										<td>${b.center_date}</td>
									</tr>
								</c:forEach>							
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

							<%-- 검색전 페이징 --%>
				<c:if test="${(empty find_field) && (empty find_name)}">
					<c:if test="${page<=1}">[이전]&nbsp;</c:if>
					<c:if test="${page>1}">
					<a href="Center_Location?page=${page-1}">[이전]</a>&nbsp;
    				</c:if>

					<%--현재 쪽번호 출력--%>
					<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
						<c:if test="${a == page}"> <%--현재 페이지가 선택되었다면--%> <${a}> </c:if>
						<c:if test="${a != page}"> <%--현재 페이지가 선택되지 않았다면 --%>
						<a href="Center_Location?page=${a}">[${a}]</a>&nbsp; </c:if>
					</c:forEach>

					<c:if test="${page >= maxpage}"> [다음] </c:if>
					<c:if test="${page<maxpage}">
						<a href="Center_Location?page=${page+1}">[다음]</a>
					</c:if>
				</c:if>

				<%-- 검색후 페이징 --%>
				<c:if test="${(!empty find_field) || (!empty find_name)}">
					<c:if test="${page<=1}">[이전]&nbsp;</c:if>
					<c:if test="${page>1}">
						<a href="Center_Location?page=${page-1}&find_field=${find_field}&find_name=${find_name}">[이전]</a>&nbsp;
    				</c:if>

					<%--현재 쪽번호 출력--%>
					<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
						<c:if test="${a == page}"> <%--현재 페이지가 선택되었다면--%> <${a}> </c:if>
						<c:if test="${a != page}"> <%--현재 페이지가 선택되지 않았다면 --%>
							<a href="Center_Location?page=${a}&find_field=${find_field}&find_name=${find_name}">[${a}]</a>&nbsp;
     					</c:if>
					</c:forEach>

					<c:if test="${page >= maxpage}">[다음]</c:if>
					<c:if test="${page<maxpage}">
						<a href="Center_Location?page=${page+1}&find_field=${find_field}&find_name=${find_name}">[다음]</a>
					</c:if>
				</c:if>
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