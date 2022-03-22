<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>아동센터 후원요청</title>
<jsp:include page="../include/base.jsp" />
</head>
<body>
	<div class="container">
		<jsp:include page="../include/header.jsp" />


		<a class="navbar-brand" style="width: 1600px; margin: auto">아동센터
			후원요청</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="table-responsive">
			<table class="table table-hover" style="width: 1600px; margin: auto">

				  <thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">센터명</th>					
						<th scope="col">제목</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				 <tbody>
							
				<c:forEach items="${helpList}" var="helpList" end="9">
										<tr>
												<td>${helpList.hp_no}</td>
												<td>${helpList.hp_centername}</td>
												<td>${helpList.hp_title}</td>
												<td>${helpList.hp_write_date}</td>												
												
										</tr>
									</c:forEach>
					</tbody> 
			</table>
		</div>
		 <nav aria-label="Page navigation example" id="CenterNoticePage">
                    <ul class="pagination">                    
							<li>
						<c:choose>
                            	<c:when test="${page < 1}">
                            		<a class="page-link"  aria-label="Previous">
                                		<span aria-hidden="true">&laquo;</span>
                            		</a>
                            	</c:when>
                            	<c:when test="${page > 1}">
                            		<a class="page-link"  href="/Center_Help?&page=${page-1} "aria-label="Previous">
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
                    				<li class="page-item"><a class="page-link" href="/Center_Help?&page=${a}">[${a}]</a></li>
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
                            		<a class="page-link" href="/Center_Help?&page=${page+1}" aria-label="Next">
                                		<span aria-hidden="true">&raquo;</span>
                            		</a>
                        		</li>
                    	</c:if>
                    </ul>
               </nav>                   		
					<!-- page end -->
		<jsp:include page="../include/footer.jsp" />
	</div>

</body>
</html>