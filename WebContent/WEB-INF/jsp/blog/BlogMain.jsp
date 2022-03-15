<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogMain</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
</head>

<body>
    <jsp:include page="include/blogHead.jsp" />
    <!-- Head부분 나중에 잘라서 include로 넣어야하는 부분임.-->
    <!-- 수정 버튼 팝업 스크립트 -->
    <script type="text/javascript">
    function popupOpen(){

	    var popUrl = "/blog/CenterProfile";	//팝업창에 출력될 페이지 URL

	    var popOption = "width=510, height=700, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		    window.open(popUrl,"",popOption);
		}
	</script>
    <!-- profile 시작-->
    <div class = "container-fluid">
        <div class = "row">
            <div class = "col-md-3">
                <div class="card">
                	<c:choose>
                		<c:when test="${!empty bp.pr_img}">
                			<img src="../../../Resources/upload${bp.pr_img}" height="250" class="card-img-top" alt="시설사진">
                		</c:when>
                		<c:otherwise>
                			<img src="../../../Resources/img/blog/B1.JPG" height="250" class="card-img-top" alt="시설사진">
                		</c:otherwise>
                	</c:choose>
                    
                    <div class="card-body">
                      <p class="card-text">
                      	  <!--<c:choose>
                      	  	<c:when test="${!empty bp.pr_centername}">
                      	  		<b>${bp.pr_centername}</b><br/>
                          		   ${bp.pr_address} <br/>
                          		<b>연락처</b><br/>
                          		   ${bp.pr_tell}
                      	  	</c:when>
                      	  	<c:otherwise>
                      	  		<b>센터명</b><br/>
                          		   센터주소 <br/>
                          		<b>연락처</b><br/>
                          		   센터번호
                      	  	</c:otherwise>
                      	  </c:choose>-->
                      	  <c:if test="${bp.pr_centername != null }">
                      	  	<b>${bp.pr_centername}</b><br/>
                          	${bp.pr_address} <br/>
                          <b>연락처</b><br/>
                          	${bp.pr_tell}
                      	  </c:if>
                      	  <c:if test="${bp.pr_centername == null }">
                      	   <b>프로필을 등록해주세요.</b>
                      	  </c:if>
                          
                          <a href="javascript:popupOpen();"><button class="btn btn-primary" type="submit">수정</button></a>
                      </p>
                    </div>
                  </div>
            </div>
            
            <div class="col-md-8" id="gall">
                <table class = "border-main">
                    <th class = "border-main-title" colspan="3"> <a href="/blog/Gallery?pr_id=${bp.pr_id}">&#9776; 최근 활동</a></th>
                    <c:if test="${empty mainAGlist}">
                    <tr>
                        <td class = "border-main-img"><img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="..."></a></td>
                        <td class = "border-main-img"><img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="..."></a></td>
                        <td class = "border-main-img"><img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="..."></a></td>
                    </tr>
                   	</c:if>
                   	<tr>
                   	<c:if test="${!empty mainAGlist}">
                   		<c:forEach items="${mainAGlist}" var="b">
                   		<td class = "border-main-img">				
                            <a href="/blog/Gallery/View?pr_id=${b.ag_centerid}&ag_no=${b.ag_no}&state=view&page=1" style="text-decoration: none; color:black">
                            	<img src="../../../Resources/upload${b.ag_img}"  style="width:20vw; height:30vh;">
                        	</a>
                        </td>
                        </c:forEach>
                   	</c:if>
                    </tr>
                </table>   
            </div>
        </div>
    </div>
    <!-- 1단-->
    <!-- 2단-->
    <div class="container-fluid">
        <div class="row" id="blog-main-two">
            <div class="col-md-5">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col" id="main-tie"><a href="/blog/Notice?pr_id=${bp.pr_id}">&#9776; 공지사항</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="row"><a href="/blog/Notice/View">[프로그램]새해 행복 나눔 계획</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="/blog/Notice/View">[공지]운영시간 변경 안내</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="/blog/Notice/View">[공지]후원 내역 반영 절차</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="/blog/Notice/View">[공지]코로나로 인한...</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-5">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col" id="main-tie" colspan="2"><a href="/blog/Help?pr_id=${bp.pr_id}">&#9776; 봉사모집</a></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:if test="${empty mainHPlist}">
                    	<tr>
                    		<td><b>작성된 글이 없습니다.</b><td>
                    	</tr>
                    </c:if>
                    <c:if test="${!empty mainHPlist}">
                    	<c:forEach items="${mainHPlist}" var="f">
                    	<tr>
                    		<td scope="row"><a href="/blog/Help/View?pr_id=${f.hp_centerid}&page=1&hp_no=${f.hp_no}&state=view" style="text-decoration:none; color:black">${f.hp_title}</a></td>
                    		<td>${fn:substring(f.hp_stdate,0,10)} ~ ${fn:substring(f.hp_endate,0,10)}</td>
                    	</tr>
                    	</c:forEach>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--footer-->
    <jsp:include page="include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>