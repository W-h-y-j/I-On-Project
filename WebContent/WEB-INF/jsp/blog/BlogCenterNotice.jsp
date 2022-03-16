<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterNotice</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterNotice.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="include/blogHead.jsp" />
    <sec:authentication property="principal" var="user"/>
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterNoticeTitle">&#9776; 공지사항</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">						
                    <li class="breadcrumb-item"><a href="/blog?pr_id=${centerid}" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item active" aria-current="page">공지사항</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        <div class="col-md-5 offset-md-7">
            <form class="d-flex">
                <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="width: 5vw;">
                    <option  selected>구분</option>
                    <option value="1">공지</option>
                    <option value="2">프로그램</option>
                </select>
                <input class="form-control me-2" type="search" placeholder="검색어 입력" aria-label="Search" style="width:15vw; margin-left:1vw;">
                <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
        </div>
        <br/>
        
        <div class="row" id="CenterNoticeLine">
            <div class="col-md-9 offset-md-2">
                <table class="table table-striped table-hover" id="CenterNoticeTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>날짜</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <c:forEach items="${blogList}" var="blogList" varStatus="status">
						<tr>
							<td style="width:10px;">${status.count}</td>												
							<td style="width:70vw;"><a href="/blog/Notice/View?pr_id=${blogList.notice_writer}&notice_no=${blogList.notice_no}&page=${page}" style="text-decoration: none; color:black">
									${blogList.notice_title}</a></td>											
							<td style="width:7vw;">${blogList.notice_center}</td>
							<td style="width:15vw;">${blogList.notice_date}</td>
							<td style="width:4vw;">${blogList.notice_view}</td>					
						</tr>
					</c:forEach>
                   
                    </tbody>
                </table>
                
                
                <nav aria-label="Page navigation example" id="CenterNoticePage">
                    <ul class="pagination">
                        <%-- page --%>
						<%-- <table>
							<tr>
								<th colspan="5">
								<!-- begin --> 
								<c:if test="${page <= 1}"> [이전]&nbsp; </c:if> 
 								<c:if test="${page > 1}">
									<a href="/blog/Notice?pr_id=${notice_writer}&page=${page-1}">[이전]</a>&nbsp;
  								</c:if> 
  								<!-- 쪽번호 출력 --> 
  								<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
									<!-- 현재 쪽번호가 선택된 경우 -->
									<c:if test="${a == page}"> <${a}> </c:if>
									<!-- 현재 쪽번호가 선택 안된 경우 -->
									<c:if test="${a != page}"> <a href="/blog/Notice?pr_id=${notice_writer}&page=${a}">[${a}]</a>&nbsp; </c:if>
								</c:forEach> 
								<c:if test="${page >= maxpage}"> [다음]</c:if>
  						 		<c:if test="${page < maxpage}">
									<a href="/blog/Notice?page=${page+1}">[다음]</a>
								</c:if>
								</th>
							</tr>
						</table> --%>
							<li>
						<c:choose>
                            	<c:when test="${page < 1}">
                            		<a class="page-link"  aria-label="Previous">
                                		<span aria-hidden="true">&laquo;</span>
                            		</a>
                            	</c:when>
                            	<c:when test="${page > 1}">
                            		<a class="page-link"  href="/blog/Notice?pr_id=${centerid}&page=${page-1} "aria-label="Previous">
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
                    				<li class="page-item"><a class="page-link" href="/blog/Notice?pr_id=${centerid}&page=${a}">[${a}]</a></li>
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
                            		<a class="page-link" href="/blog/Notice?pr_id=${centerid}&page=${page+1}" aria-label="Next">
                                		<span aria-hidden="true">&raquo;</span>
                            		</a>
                        		</li>
                    		</c:if>
					<!-- page end -->
					<sec:authorize access='hasAuthority("CENTER_ROLE")'>
					<c:if test="${centerid == user.username}">
                        <li>
                            <button type="button" class="btn btn-primary" id="CenterNoticeBtn" onclick="location.href='/blog/Notice/Create'">글작성</button>
                        </li>
                    </c:if>
                    </sec:authorize>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    
    <jsp:include page="include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>