<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
 	<sec:authentication property="principal" var="user"/>
 	 <%-- ${user} --%>
	<div class="" id="home">
		<div class="container">
			<jsp:include page="../include/header.jsp" />
			<!-- row start! -->
			<!-- 각 메뉴별 게시글 수는 7개까지만 조회 하도록 함 (시스템 공지사항 쪽 foreach문 참조) -->
			<div class="row tm-content-row tm-mt-big">
				<div class="tm-col tm-col-small">
					<div class="row">
						<div class="col-8">
							<h2 class="tm-block-title d-inline-block">시스템 공지</h2>
						</div>
						<div class="col-4 text-right">
							<a href="/Notice" class="tm-link-black"> 전체 보기</a>
						</div>
					</div>
					<ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
						<c:forEach items="${systemNotice}" var="system_notice_list" end="6">
							<li class="tm-list-group-item">${system_notice_list.title}</li>
						</c:forEach>
					</ol>
				</div>
				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100 ">
						<div class="row">
							<div class="col-8">
								<h2 class="tm-block-title">센터 활동 사진</h2>
							</div>
							<div class="col-4 text-right">
								<a href="/Center_Image" class="tm-link-black"> 전체 보기</a>
							</div>
						</div>
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">

							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>

							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block" src="Resources/img/main/main01.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block" src="Resources/img/main/main02.jpg"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block" src="Resources/img/main/main03.jpg"
										alt="Third slide">
								</div>
							</div>
							<a class="carousel-control-prev"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>

					</div>
				</div>

				<div class="tm-col tm-col-small">
					<div class="bg-white tm-block border border-secondary" style= "padding-top: 30px; padding-bottom: 30px; margin-top: 50px; margin-bottom:50px">
						<div class="col-12">
							<%-- 로그인 전 --%>
							<sec:authorize access="isAnonymous()">
								<button type="button" class="btn btn-primary w-100" onclick="location.href='/LoginForm'">로그인하고 후원하기</button>
							</sec:authorize>
							<%-- 센터 계정 --%>
							<sec:authorize access='hasAuthority("CENTER_ROLE")'>
								<!-- 블로그 URL 작성해줄것 -->
								<button type="button" class="btn btn-primary w-100" onclick="location.href='/blog?pr_id=${user.username}'">우리 센터 블로그</button>
							</sec:authorize>
							<%-- 후원 계정 --%>
							<sec:authorize access="hasAuthority('DONOR_ROLE')">
									<button type="button" class="btn btn-primary w-100" onclick="location.href='/DonationHistory'">나의 후원 내역</button>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<button type="button" class="btn btn-primary w-100" onclick="location.href='/logout'" style="margin-top: 10px;">로그아웃하기</button>
							</sec:authorize>
						</div>
						
					</div>
					<!-- <div class="tm-col tm-block"> -->
					<div class="tm-col tm-block border border-secondary" style=" margin-top: 20px; padding-bottom: 30px;">
						<div class="bg-white tm-block h-100" >
							<h2 class="tm-block-title">센터 찾기</h2>
							<input type="button" class="btn btn-primary d-block mx-auto"
								value="센터 찾으러 가기" onclick="location.href='Center_Location'">
						</div>
					</div>
				</div>


				<div class="tm-col tm-col-small">
					<div class="bg-white tm-block h-100">
						<div class="row">
							<div class="col-8">
								<h2 class="tm-block-title d-inline-block">센터 공지사항</h2>
							</div>
							<div class="col-4 text-right">
								<a href="/Center_Notice" class="tm-link-black">전체 보기</a>
							</div>
						</div>
						<ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
						<c:forEach items="${systemBlog}" var="systemBlog" end="6">
										<li class="tm-list-group-item">${systemBlog.notice_title}</li>
									</c:forEach>
									</ol>
					</div>
				</div>
				<div class="tm-col tm-col-big">
					<div class="bg-white tm-block h-100">
						<div class="row">
							<div class="col-8">
								<h2 class="tm-block-title d-inline-block">센터 후원 요청</h2>
							</div>
							<div class="col-4 text-right">
								<a href="/Center_Help" class="tm-link-black">전체 보기</a>
							</div>
						</div>

						<ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
						<c:forEach items="${Blog_help}" var="Blog_help" end="6">
										<li class="tm-list-group-item">${Blog_help.hp_title}</li>
									</c:forEach>
									</ol>
					</div>
				</div>
				
					</div>
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		
	<jsp:include page="../include/chartThings.jsp" />
</body>
</html>

