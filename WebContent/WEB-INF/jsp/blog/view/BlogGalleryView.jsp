<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogGalleryView</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterGallery.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
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
                    <li class="breadcrumb-item"><a href="/blog/Gallery" style="text-decoration: none;">활동사진</a></li>
                    <li class="breadcrumb-item active" aria-current="page">게시글</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/><br/>

        <div class="row">
            <div class="col-md-8 offset-md-2" style="height: 1200px; overflow:scroll">
                <table class="table">
                    <thead>
                        <tr style="background-color: rgb(233, 232, 232); border-top:2px solid black">
                            <th style="width: 30vw; font-size: 2rem; text-align: center;">
                                ${ag_title}
                            </th>
                            <td>
                                	작성자: ${ag_centername}
                            </td>
                            <td>
                                	작성일: ${ag_write_date}
                            </td>
                            <td>
                                	조회수: ${ag_view_count}
                            </td>
                        </tr>
                    </thead>
                    
                    <tbody>
                    	
                    	
                        <tr style="border-bottom: 2px solid black; ">
                            <td colspan="4" style="padding-top:5vh; padding-left: 3vw; height: 30vh;">
                                <c:if test="${empty viewlist}">
                                	<div >
                                    	<img src="../../../../Resources/img/blog/bb8.jpeg" style="max-width:60vw; max-height: 45vh;" class="rounded mx-auto d-block" alt="...">
                                	</div>
                                </c:if>
                                <c:if test="${!empty viewlist}">
                                	<c:forEach items="${viewlist}" var="a">
                                		<p >
                                    		<img src="../../../../Resources/upload${a.ag_img}" style="max-width:60vw; max-height: 45vh;" class="rounded mx-auto d-block" alt="...">
                                		</p>
                                	</c:forEach>
                                </c:if>
                                <p>${ag_cont}</p>
                            </td>
                        </tr> 
                    </tbody>
                </table>
                <div class="col-md-12 ">
                	<input class="btn btn-primary" type="button" value="수정" onclick="location.href='/blog/Gallery/View?pr_id=${ag_centerid}&state=edit&ag_no=${ag_no}&page=${page}'">
                	<input class="btn btn-primary" type="button" value="삭제" onclick="location.href='/blog/Gallery/del_OK?pr_id=${ag_centerid}&state=edit&ag_no=${ag_no}&page=${page}'">
                	<input class="btn btn-primary" type="button" value="목록으로" style="float: right;" onclick="location.href='/blog/Gallery?pr_id=${ag_centerid}&page=${page}'">
            	</div>
            	
            	<h3 style="margin-top: 5vh;">댓글</h3>
                <div class="col-md-12 " >
                	<table class="table" style="border-top:2px solid black;">
                		<tbody>
                			<div>
                    			<form method="post" action="/blog/Gallery/Reply_write_OK" >
                    				<tr>
                        				<td>
                            				<label for="staticEmail2" class="visually-hidden" >Email</label>
                                			<input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="아이디"  >
                            			</td>
                            			<td>
                                			<input class="form-control" type="text" placeholder="아이디 입력" name="re_writer" aria-label="default input example" >
                                			<input type="hidden" name="ag_no1" value="${ag_no}">
                                			<input type="hidden" name="pr_id1" value="${ag_centerid}">
                                			<input type="hidden" name="page1" value="${page}">
                            			</td>
                        			</tr>
                        			<tr>
                            			<td colspan="2">
                                			<span class="input-group-text">&#9776; 댓글을 입력해주세요</span>
                                			<textarea class="form-control" aria-label="With textarea" name="re_cont" style="height: 10vh;">
                                			</textarea>
                                			<span><input class="btn btn-primary" type="submit" value="댓글 입력" ></span>
                            			</td>
                        			</tr>
                        		</form>
                        	</div>		
                        		<c:if test="${!empty replylist}">
                        			<c:forEach items="${replylist}" var="b">
                        				<tr>
                        					<td colspan="2">
                        						<ul>
                        							<li>
                        								<p>${b.re_writer}(${fn:substring(b.redate,5,16)})</p>
                        								<p>${b.re_cont}</p>
                        								
                        								<button type="button" onclick="location.href='/blog/Gallery/Reply_delete_OK?rno=${b.rno}&ag_no=${ag_no}&pr_id=${ag_centerid}&page=${page}'">댓글 삭제</button>
                        							</li>
                        						</ul>
                        					</td>
                        				</tr>
                        			</c:forEach>
                        		</c:if>
                    		</tbody>
                	</table>
            	</div>
            </div>
        </div>
    </div>
    <jsp:include page="../include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>