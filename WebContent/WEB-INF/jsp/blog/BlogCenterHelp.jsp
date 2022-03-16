<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterHelp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterHelp.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="include/blogHead.jsp" />
    <sec:authentication property="principal" var="user"/>
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterHelpTitle">&#9776; 필요해요!</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/blog?pr_id=${centerid}" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item active" aria-current="page">자원봉사</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        
       <div class="col-md-5 offset-md-7">
            <form class="d-flex">
                <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="find_field" style="width: 5vw;">
                    <option  selected>구분</option>
                    <option value="hp_title"<c:if test="${find_field == 'hp_title'}">${'selected'}</c:if>>제목</option>
                    <option value="hp_cont"<c:if test="${find_field == 'hp_cont'}">${'selected'}</c:if>>내용</option>
                </select>
                <input class="form-control me-2" type="search" placeholder="검색어 입력" name="find_name" aria-label="Search" style="width:15vw; margin-left:1vw;">
                <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
        </div>
        <br/>
        <div class="row" id="CenterHelpLine">
            <div class="col-md-9 offset-md-2">
                <table class="table table-striped table-hover" id="CenterHelpTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>완료상태</th>
                            <th>날짜</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${!empty hplist}">
                    		<c:forEach items="${hplist}" var="a" varStatus="status">
                    			<tr>
                    				<td>${status.count}</td>
                    				<td style="width:60vw;"><a href="/blog/Help/View?pr_id=${a.hp_centerid}&page=${page}&hp_no=${a.hp_no}&state=view" style="text-decoration:none; color:black">${a.hp_title}</a></td>
                    				<td>${a.hp_centername}</td>
                    				<td>${a.hp_state}</td>
                    				<td>${fn:substring(a.hp_write_date,0,10)}</td>
                    				<td>${a.hp_hit}</td>
                    			</tr>
                    		</c:forEach>
                    	</c:if>
                    	<c:if test="${empty hplist}">
                    		<tr>
                    			<th colspan="6"> 목록이 없습니다.</th>
                    		</tr>
                    	</c:if>
                    </tbody>
                </table>
                <nav aria-label="Page navigation example" id="CenterHelpPage">
                    <ul class="pagination">
                        <c:choose>
                			<c:when test="${page < 1}">
                    			<a class="page-link"  aria-label="Previous">
                        			<span aria-hidden="true">&laquo;</span>
                        		</a>
                    		</c:when>
                    		<c:when test="${page > 1}">
                    			<a class="page-link"  href=""aria-label="Previous">
                        			<span aria-hidden="true">&laquo;</span>
                        		</a>
                    		</c:when>
                		</c:choose>
                            	
                        	
                		<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
                			<c:if test="${a == page}">
                    			<li class="page-item"><a class="page-link" href="#">[${a}]</a></li>
                    		</c:if> <%-- 현재쪽 선택 --%>
                    			
                    		<c:if test="${a != page}"> <%-- 현재쪽 비선택 --%>
                    			<li class="page-item"><a class="page-link" href="">[${a}]</a></li>
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
                    			<a class="page-link" href="" aria-label="Next">
                        			<span aria-hidden="true">&raquo;</span>
                        		</a>
                    		</li>
                		</c:if>
                		<sec:authorize access='hasAuthority("CENTER_ROLE")'>
                		<c:if test="${centerid == user.username}">
                        <li>
                            <button type="button" class="btn btn-primary" id="CenterHelpBtn" onclick="location.href='/blog/Help/Create'">글작성</button>
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