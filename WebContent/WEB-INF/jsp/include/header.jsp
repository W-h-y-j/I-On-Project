<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="row">
	<div class="col-12">
		<nav class="navbar navbar-expand-xl navbar-light bg-light">
			<a class="navbar-brand" href="/"> <i
				class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
				<h1 class="tm-site-title mb-0">I-ON: 아이 온 희망나눔 서비스</h1>
			</a>
			<button class="navbar-toggler ml-auto mr-0" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="nav nav-pills ml-auto"> <!-- navbar-nav -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 아동 센터 </a>
					
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/Center_Location">아동 센터 찾기</a> 
							<a class="dropdown-item" href="/Center_Notice">아동 센터 공지</a> 
							<a class="dropdown-item" href="/Center_Help">아동 센터 후원 요청</a> 
							<a class="dropdown-item" href="/Center_Thk">아동 센터 후원 사용 내역</a> 
							<a class="dropdown-item" href="/Center_Image">아동 센터 활동 사진</a> 
						</div>
					</li>
						
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">지원 프로그램</a>
						
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/Center_Date1">서울시 지원 프로그램</a>
						</div>
					</li>
					
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="index.html" id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">My Page</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/Notice">공지 사항</a> 
							<sec:authorize access="hasAuthority('DONOR_ROLE')">
								<a class="dropdown-item" href="/DonationHistory">나의 후원 내역</a> 
							</sec:authorize>
							<sec:authorize access="hasAuthority('CENTER_ROLE')">
								<a class="dropdown-item" href="/blog">우리 센터 블로그</a>
							</sec:authorize>
							<sec:authorize access="hasAuthority('ADMIN_ROLE')">
								<a class="dropdown-item" href="/DonationUserManagment">후원자 관리</a> 
								<a class="dropdown-item" href="/CenterUserManagment">센터 운영자 관리</a> 
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<a class="dropdown-item" href="/MyPageSecurity">회원 정보 변경</a>
							</sec:authorize>
						</div>
					</li>
					
				</ul>
			</div>
		</nav>
	</div>
</div>
