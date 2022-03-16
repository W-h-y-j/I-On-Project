<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogNoticeView</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterNotice.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
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
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item"><a href="/blog/Notice" style="text-decoration: none;">공지사항</a></li>
                    <li class="breadcrumb-item active" aria-current="page">게시글</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/><br/>

		<form >
        <div class="row">
            <div class="col-md-8 offset-md-2" style="height: 68vh;">
                <table class="table">
                      <thead>
                        <tr style="background-color: rgb(233, 232, 232); border-top:2px solid black">
                            <th style="width: 30vw; font-size: 2rem; text-align: center;">
                                ${blog.notice_title}
                            </th>
                            <td>
                                	작성자: ${blog.notice_center}
                            </td>
                            <td>
                                	작성일: ${blog.notice_date}
                            </td>
                            <td>
                                	조회수: ${blog.notice_view}
                            </td>
                        </tr>
                    </thead>
                    
                    <tbody>                                           
 						<tr style="border-bottom: 2px solid black;">
                            <td colspan="4" style="padding-top:5vh; padding-left: 3vw; height: 30vh;">
                                                    		 <p>${blog.notice_content }</p>				
                            </td>
                         </tr>
                     </tbody>
                </table>
                <sec:authorize access='hasAuthority("CENTER_ROLE")'>
				<c:if test="${blog.notice_writer == user.username}">
                	<input class="btn btn-primary" type="button" value="수정" onclick="location.href='/blog/Notice/Edit?pr_id=${blog.notice_writer}&notice_no=${blog.notice_no}&page=${page}'">
                	<input class="btn btn-primary" type="button" value="삭제" onclick="location.href='/blog/Notice/del?pr_id=${blog.notice_writer}&notice_no=${blog.notice_no}&page=${page}'">
                </c:if>
                </sec:authorize>
                <input class="btn btn-primary" type="button" value="목록으로" style="float: right;" onclick="location.href='/blog/Notice?pr_id=${blog.notice_writer}&page=${page}'">
                </div>
                </div>
                
            </form>
                
            </div>
    
    <jsp:include page="../include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>