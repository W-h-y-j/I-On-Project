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
    <title>BlogHelpView</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterHelp.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
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
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item"><a href="/blog/Help" style="text-decoration: none;">필요해요!</a></li>
                    <li class="breadcrumb-item active" aria-current="page">게시글</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        
        <div class="row">
            <div class="col-md-8 offset-md-2" style="height: 68vh;">
                <table class="table">
                    <thead>
                        <tr style="background-color: rgb(233, 232, 232); border-top:2px solid black">
                            <th style="width: 30vw; font-size: 2rem; text-align: center;">
                            	${hp.hp_title}
                            </th>
                            <td>
                                작성자:${hp.hp_centername}
                            </td>
                            <td>
                                작성일: ${fn:substring(hp.hp_write_date,0,10)}
                            </td>
                            
                            <c:if test="${hp.hp_state == '진행중'}">
                            	<td style="color:blue;">
                            		${hp.hp_state}
                            	</td>
                            </c:if>
                            <c:if test="${hp.hp_state == '완료' }">
                            	<td style="color:red;">
                            		${hp.hp_state}
                            	</td>
                            </c:if>
                            
                            <td>
                                조회수: ${hp.hp_hit}
                            </td>
                        </tr>
                    </thead>

                    <!-- 확인 버튼 팝업 스크립트 -->
                    <script type="text/javascript">
                        function HelpCheckOpen(){
    
                        var popUrl = "/blog/HelpCS?hp_no=${hp_no}";	//팝업창에 출력될 페이지 URL
    
                        var popOption = "width=510, height=610, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
    
                                window.open(popUrl,"",popOption);
                             }
                    </script>

                    <!-- 신청 버튼 팝업 스크립트 -->
                    <script type="text/javascript">
                        function HelpRequestOpen(){
    
                        var popUrl2 = "/blog/HelpRS?hp_no=${hp.hp_no}";	//팝업창에 출력될 페이지 URL
    
                        var popOption2 = "width=510, height=610, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
    
                                window.open(popUrl2,"",popOption2);
                             }
                     </script>
                    
                    <tbody>
                        <tr style="border-bottom: 2px solid black;">
                            
                            <td colspan="4" style="padding-top:5vh; padding-left: 3vw; height: 30vh;">
                            	
                                <p style="min-height:42vh;">${hp_cont}</p>
                                <table border="3">
                                	<thead>
                                		<tr>
                                			<th colspan="2" style="border:2px solid black;"> 모집 기간 </th>  <th style="border:2px solid black;">모집 인원</th>
                                		</tr>
                                	</thead>
                                	<tbody>
                                		<tr>
                                			<td colspan="2" > ${fn:substring(hp.hp_stdate,0,10)} ~ ${fn:substring(hp.hp_endate,0,10)}</td>
                                			<td style="text-align:center; border:2px solid black;"> ${hp.hp_pe} </td>
                                		</tr>
                                	</tbody>
                                </table>
                                <br/>
                                <sec:authorize access='hasAuthority("CENTER_ROLE")'>
                				<c:if test="${hp.hp_centerid == user.username}">
                                <a href="javascript:HelpCheckOpen()"><input class="btn btn-primary" type="button" value="신청확인" ></a>
                                <a href="/blog/Help/Finish_OK?pr_id=${hp.hp_centerid}&page=${page}&hp_no=${hp.hp_no}"><input class="btn btn-primary" type="button" value="완료 전환" ></a>
                                </c:if>
                				</sec:authorize>
                				<sec:authorize access="hasAuthority('DONOR_ROLE')">
                                <a href="javascript:HelpRequestOpen()"><input class="btn btn-primary" type="button" value="신청" ></a>
                            	</sec:authorize>
                           </td>
                        </tr>
                        
                    </tbody>
                </table>
                <sec:authorize access='hasAuthority("CENTER_ROLE")'>
                <c:if test="${hp.hp_centerid == user.username}">
                	<input class="btn btn-primary" type="button" value="수정" onclick="location.href='/blog/Help/View?pr_id=${hp.hp_centerid}&page=${page}&hp_no=${hp.hp_no}&state=edit'" >
                </c:if>
                </sec:authorize>
                <input class="btn btn-primary" type="button" value="목록으로" style="float: right;" onclick="location.href='/blog/Help?pr_id=${hp.hp_centerid}&page=${page}'">
                
                
            </div>
        </div>
    </div>
    <br/><br/><br/><br/>
    <jsp:include page="../include/blogFooter.jsp" />
</body>
</html>