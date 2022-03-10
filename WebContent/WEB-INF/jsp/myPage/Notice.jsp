<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>I-ON:아이 온 희망나눔 서비스</title>
<jsp:include page="../include/base.jsp" />
</head>
<body id="reportsPage" class="bg02">
	<div class="container">
		<jsp:include page="../include/header.jsp" />
			<%-- row --%>
			<div class="row tm-content-row tm-mt-big">
				<div class="col-xl-12 col-lg-24 tm-md-24 tm-sm-24 tm-col">
				<div class="bg-white tm-block h-100">
					<div class="row">
						<div class="col-md-8 col-sm-24">
							<h2 class="tm-block-title d-inline-block">시스템 공지사항</h2>
						</div>

					</div>
					<%-- List --%>
					<div class="table-responsive">
						<div class="col text-right">
							<sec:authorize access="hasRole('ADMIN')">
							<a href="/Notice-Add" class="btn btn-small btn-primary">등록</a> 
							</sec:authorize>
						</div>
						total: <span>${totalCount}</span>
						<table
							class="table table-hover table-striped tm-table-striped-even mt-3 text-center">
							<thead>
								<tr class="tm-bg-gray text-center">
									<th scope="col">no</th>
									<th scope="col">제목</th>
									<th scope="col" class="text-center">작성자</th>
									<th scope="col">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${noticeList}" var="noticeList">
									<tr>
										<th scope="row">${noticeList.system_notice_no}</th>
										<td class="text-left">
											<a href="Notice-View?system_notice_no=${noticeList.system_notice_no}&page=${page}">
												${noticeList.title} </a>
										</td>
										<td class="text-center">${noticeList.insert_id}</td>
										<td class="text-center">${noticeList.insert_dt}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
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
			</div>
		<jsp:include page="../include/footer.jsp" />
	</div>
</body>
</html>