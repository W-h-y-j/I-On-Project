<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>I-ON:아이 온 희망나눔 서비스</title>
<jsp:include page="../include/base.jsp" />
</head>
<body id="reportsPages" class="bg03">
	<div class="container">
		<jsp:include page="../include/header.jsp" />
		<!-- row -->
		<div class="row tm-content-row tm-mt-big">
			<div class="tm-col">
				<div class="bg-white tm-block">
					<div class="row">
						<div class="col-12">
							<h2 class="tm-block-title">회원 가입</h2>
							<div class="row">
								<div class="col-12">
									<form action="" class="tm-signup-form">
										<div class="form-row">
											<label for="name" class="col-sm-1 col-form-label">센터
												명</label>
											<div class="col-sm-4">
												<input placeholder="센터명을 검색하세요" id="name" name="name"
													type="text" class="form-control validate"
													disabled="disabled">
											</div>
											<div class="col-auto">
												<button id="searchCenter" type="submit" class="btn btn-primary btn-small" href="/centerSearch">센터검색</button>
											</div>
										</div>
										<div class="form-row">
											<label for="id" class="col-sm-1 col-form-label">ID</label>
											<div class="col-sm-4">
												<input placeholder="ID를 입력하세요" id="id" name="id" type="text" class="form-control validate">
											</div>
											<div class="col-auto">
												<button type="submit" class="btn btn-primary btn-small">ID중복확인</button>
											</div>
											<div class="col-auto">
												<a style="color: #F4511E; font-size: 12px; margin-top: 50px; margin-left: 20px;">
												입력하신 ID는 센터 블로그의 도메인이 됩니다. 센터를 대표하는 ID로 작성해 주세요.</a>
											</div>
										</div>
										<div class="form-row">
											<label for="password" class="col-sm-1 col-form-label">비밀번호</label>
											<div class="col-sm-4">
												<input placeholder="******" id="password" name="password" type="password" class="form-control validate">
											</div>
											<label for="password2" class="col-sm-1 col-form-label">비밀번호 확인</label>
											<div class="col-sm-4">
												<input placeholder="******" id="password2" name="password2" type="password" class="form-control validate">
											</div>
										</div>
										<div class="form-row">
											<a style="color: #F4511E; font-size: 12px; margin-bottom: 20px; margin-left: 20px;">
												센터 검색시 자동으로 추가 됩니다. </a>
										</div>
										<div class="form-row">
											<label for="center_addr" class="col-sm-1 col-form-label">센터 주소</label>
											<div class="col-sm-9">
												<input placeholder="" id="center_addr" name="center_addr" type="text" class="form-control validate" disabled="disabled">
											</div>
										</div>

										<div class="form-row">
											<label for="center_tel" class="col-sm-1 col-form-label">센터 연락처</label>
											<div class="col-sm-4">
												<input placeholder="" id="center_tel" name="center_tel" type="tel" class="form-control validate" disabled="disabled">
											</div>
											<label for="phone" class="col-sm-1 col-form-label">담당자 연락처</label>
											<div class="col-sm-4">
												<input placeholder="010-030-0440" id="phone" name="phone" type="tel" class="form-control validate" disabled="disabled">
											</div>
										</div>
										<div class="form-row">
											<label for="email" class="col-sm-1 col-form-label">대표 이메일</label>
											<div class="col-sm-4">
												<input placeholder="example@test.co.kr" id="email" name="email" type="email" class="form-control validate" disabled="disabled">
											</div>
										</div>
										<div class="row">
											<div class="col-12 col-sm-8 tm-btn-center">
												<button type="submit" class="btn btn-primary">저장</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../include/footer.jsp" />
	</div>
</body>
</html>