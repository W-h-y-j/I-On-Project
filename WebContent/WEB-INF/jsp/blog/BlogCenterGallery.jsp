<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterGallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterGallery.css" rel="stylesheet">
</head>
<% String ag_centerid = request.getParameter("pr_id"); %>
<body>
    <jsp:include page="include/blogHead.jsp" />
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterGalleryTitle">&#9776; 활동사진</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item active" aria-current="page">활동사진</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <table class="table" style="border-bottom: 2px solid black;">
                    <thead>
                        <th>활동사진</th>
                    </thead>
                    <tbody>
                    <%-- 만약에 제목이나 넘버가 같으면 스탑시키면 되지않나 ?.. 아마두 ?... --%>
                    <c:set var="i" value="0" />
                    <c:set var="j" value="3" />
                    	<c:if test="${!empty aglist }">
                    		<c:set var="i" value="0" /> 
                    		<c:set var="j" value="3" /> 
                    		<c:forEach items="${aglist}" var="a"> 
                    			<c:if test="${i%j == 0 }">
                    				<tr> 
                    			</c:if> 
                    				<td align="Gallery">
                    						
                                		<a href="/blog/Gallery/View?pr_id=${a.ag_centerid}&ag_no=${a.ag_no}&state=view&page=${page}" style="text-decoration: none; color:black">
                                    		<img src="../../../Resources/upload${a.ag_img}" class="img-thumbnail" alt="" style="width: 21vw; height: 21vh;">
                                    		<span>${fn:substring(a.ag_write_date,0,10)}</span>
                                		</a>
                           			</td>
                    			<c:if test="${i%j == j-1 }"> 
                    				</tr> 
                    			</c:if> 
                    			<c:set var="i" value="${i+1}" /> 
                    		</c:forEach>
                    	</c:if>
                    	
                    	<c:if test="${empty aglist}">
                    		<tr>
                    			<th colspan="3"> 목록이 없습니다.</th>
                    		</tr>
                    	</c:if>
                    	</tbody>
                    </table>	
                    <nav aria-label="Page navigation example" id="CenterGalleryPage">
                    	<ul class="pagination">
                        	<li>
                            <c:choose>
                            	<c:when test="${page < 1}">
                            		<a class="page-link"  aria-label="Previous">
                                		<span aria-hidden="true">&laquo;</span>
                            		</a>
                            	</c:when>
                            	<c:when test="${page > 1}">
                            		<a class="page-link"  href="/blog/Gallery?pr_id=<%=ag_centerid%>&page=${page-1} "aria-label="Previous">
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
                    				<li class="page-item"><a class="page-link" href="/blog/Gallery?pr_id=<%= ag_centerid %>&page=${a}">[${a}]</a></li>
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
                            		<a class="page-link" href="/blog/Gallery?pr_id=<%= ag_centerid %>&page=${page+1}" aria-label="Next">
                                		<span aria-hidden="true">&raquo;</span>
                            		</a>
                        		</li>
                    		</c:if>
                        	
                        	<li>
                            	<button type="button" class="btn btn-primary" id="CenterGalleryBtn" onclick="location.href='/blog/Gallery/Create?pr_id=<%=ag_centerid%>'">글작성</button>
                        	</li>
                    	</ul>
                	</nav>      			
            </div>
        </div>
    </div>
    <br/><br/>
    <jsp:include page="include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>