<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			<sec:authentication property="principal" var="user"/>
 		 	<%-- ${user} --%>
				<!-- 그래프 시작점  -->
				<!-- <div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<h2 class="tm-block-title">Performance</h2>
						<canvas id="barChart"></canvas>
					</div>
				</div>
				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<canvas id="pieChart" class="chartjs-render-monitor"></canvas>
					</div>
				</div> -->
				<!-- 그래프 끝 -->
				<div class="table-responsive">
					<table
						class="table table-hover table-striped tm-table-striped-even mt-5 text-center">
						<thead>
							<tr class="tm-bg-gray text-center">
								<!-- <th scope="col">&nbsp;</th> -->
								<th scope="col">no</th>
								<th scope="col" class="text-center">센터명</th>
								<!-- <th scope="col" class="text-center">필요 분야</th> -->
								<th scope="col">봉사 내역</th>
								<th scope="col">후원일자</th>
								<!-- <th scope="col">감사해요 게시판 바로가기</th> -->
							</tr>
						</thead>
						<tbody>
						<c:if test="${empty hpli}">
							<tr class="">
								<td class="text-center" colspan="4"><b>후원 내역이 없습니다.</b></td>
							</tr>
						</c:if>
						<c:if test="${!empty hpli}">
							<c:forEach items="${hpli}" var="a" varStatus="status">
							<tr class="">
								<th scope="row">${status.count}</th>
								<td class="text-center">${a.hp_title}</td>
								<!-- <td class="tm-product-name">후원 금액</td> -->
								<td class="text-center">${a.hp_user_real_time}시간</td>
								<td class="text-center">${fn:substring(a.hp_endate,0,10)}</td>
							</tr>
							</c:forEach>
						</c:if>
						</tbody>
					</table>
				</div>

				<div class="tm-table-mt tm-table-actions text-center">
					<!-- <div class="tm-table-actions-col-left">
								<button class="btn btn-danger">Delete Selected Items</button>
							</div> -->
					<!-- <div class="tm-table-actions-col-right"> -->
					<!-- <span class="tm-pagination-label">Page</span>
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
					</div> -->
					<%-- page --%>
						<table>
							<tr>
								<th colspan="5">
								<!-- begin --> 
								<c:if test="${page <= 1}"> [이전]&nbsp; </c:if> 
 								<c:if test="${page > 1}">
									<a href="/Notice?page=${page-1}">[이전]</a>&nbsp;
  								</c:if> 
  								<!-- 쪽번호 출력 --> 
  								<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
									<!-- 현재 쪽번호가 선택된 경우 -->
									<c:if test="${a == page}"> <${a}> </c:if>
									<!-- 현재 쪽번호가 선택 안된 경우 -->
									<c:if test="${a != page}"> <a href="/Notice?page=${a}">[${a}]</a>&nbsp; </c:if>
								</c:forEach> 
								<c:if test="${page >= maxpage}"> [다음]</c:if>
  						 		<c:if test="${page < maxpage}">
									<a href="/Notice?page=${page+1}">[다음]</a>
								</c:if>
								</th>
							</tr>
						</table>
					<!-- page end -->
				</div>
				
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
		<jsp:include page="../include/chartThings.jsp" />
</body>
</html>