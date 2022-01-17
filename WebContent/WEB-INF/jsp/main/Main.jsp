<%@ page contentType="text/html; charset=UTF-8"%>

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
	<div class="" id="home">
		<div class="container">
			<jsp:include page="../include/header.jsp" />
			<!-- row -->
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
					<ol
						class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
						<li class="tm-list-group-item">시스템 점검이 완료되었습니다. </li>
						<li class="tm-list-group-item">시스템 점검 예정 입니다.</li>
						<li class="tm-list-group-item">센터 블로그 관련 공지사항</li>
						<li class="tm-list-group-item">SNS계정으로 로그인이 가능합니다.</li>
						<li class="tm-list-group-item">시스템 점검 예정 입니다.</li>
						<li class="tm-list-group-item">기능이 추가되었습니다. </li>
						<li class="tm-list-group-item">시스템 점검 예정 입니다.</li>
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
							<button type="button" class="btn btn-primary w-100"
								onclick="location.href='/LoginForm'">로그인하고 후원하기</button>
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
						<ol
							class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
							<li class="tm-list-group-item">「용산비젼공부방」 12월 급식표 안내</li>
							<li class="tm-list-group-item">「성수비젼공부방」 12월 급식표 안내</li>
							<li class="tm-list-group-item">「신대방삼거리복지센터」 보육 교사 긴급 충원 0인</li>
							<li class="tm-list-group-item">「관악아동복지센터」 12월 운영일정 및 행사 안내</li>
							<li class="tm-list-group-item">「강서아동복지센터」 12월 공부방 운영시간 공지</li>
							<li class="tm-list-group-item">「안암칠드런센터」 12월 참여 공지사항 안내</li>
							<li class="tm-list-group-item">「원효로3가청소년공부방」 12월 급식표 알림</li>
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

						<ol
							class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
							<li class="tm-list-group-item">「용산비젼공부방」 12월 운영비 사용 부족으로 인한
								긴급 지원 요청</li>
							<li class="tm-list-group-item">「성수비젼공부방」 12월 후원비 요청 드립니다.</li>
							<li class="tm-list-group-item">「신대방삼거리복지센터」 14시 부터 19시까지
								봉사자를 구합니다.</li>
							<li class="tm-list-group-item">「관악아동복지센터」 세탁기가 고장나 수리가 불가하여
								새로운 제품을</li>
							<li class="tm-list-group-item">「강서아동복지센터 11월 후원금이 부족해 간식지급에
								어려움이</li>
							<li class="tm-list-group-item">「안암칠드런센터」 12월 참여 활동지원 요청
								드립니다.</li>
							<li class="tm-list-group-item">「원효로3가청소년공부방」 책상이 너무 낡아서 다
								부서지려고 합니다.</li>
						</ol>
					</div>
				</div>
				<div class="tm-col tm-col-small">
					<div class="bg-white tm-block h-100">
						<div class="row">
							<div class="col-8">
								<h2 class="tm-block-title d-inline-block">센터 사용 내역</h2>
							</div>
							<div class="col-4 text-right">
								<a href="/Center_Thk" class="tm-link-black">전체 보기</a>
							</div>
						</div>

						<ol
							class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
							<li class="tm-list-group-item">「원효로3가청소년공부방」 지원 감사합니다.</li>
							<li class="tm-list-group-item">「안암칠드런센터」 12월 참여 활동사진 입니다.</li>
							<li class="tm-list-group-item">「관악아동복지센터」 세탁기 감사합니다 ~~</li>
							<li class="tm-list-group-item">「강서아동복지센터」공부방 인테리어 완료</li>
							<li class="tm-list-group-item">「신대방삼거리복지센터」 자원봉사자들과 봉사 활동 완료</li>
							<li class="tm-list-group-item">「원효로3가청소년공부방」책상을 변경하였습니다.</li>
							<li class="tm-list-group-item">「성수비젼공부방」 마스크 구비 완료</li>
						</ol>
					</div>
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
	<jsp:include page="../include/chartThings.jsp" />
</body>
</html>

