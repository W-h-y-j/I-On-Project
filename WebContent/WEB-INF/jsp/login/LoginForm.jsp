<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <script src="https://developers.kakao.com/sdk/js/kakao.js"></script> -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>I-ON:아이 온 희망나눔 서비스</title>
<jsp:include page="../include/base.jsp" />
</head>

<body class="bg03">
	<div class="container">
		<jsp:include page="../include/header.jsp" />
		<div class="row tm-mt-big">
			<div class="col-12"
				style="margin: auto !important; max-width: 1200px;">
				<div class="bg-white tm-block" style="float: left; width: 50%;">
					<div class="row">
						<div class="col-12 text-center">
							<i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
							<h2 class="tm-block-title mt-3">후원인 로그인</h2>
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-12">
							<form name="login-sns" action="" method="post" class="tm-login-form">
								<jsp:include page="naverlogin.jsp"></jsp:include>
								<jsp:include page="kakaologin.jsp"></jsp:include>
							</form>
						</div>
					</div>
				</div>
				<div class="bg-white tm-block" style="float: left; width: 50%;">
					<div class="row">
						<div class="col-12 text-center">
							<i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
							<h2 class="tm-block-title mt-3">센터 로그인</h2>
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-12">
							<form action="/login" method="post" class="tm-login-form">
								<div class="input-group mt-3">
									<label for="username"
										class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">센터ID</label>
									<input name="username" type="text"
										class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7" id="center_id" required>
								</div>
								<div class="input-group mt-3">
									<label for="password"
										class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Password</label>
									<input name="password" type="password"
										class="form-control validate" id="password" required>
								</div>
								<div class="row mt-2">
									<div class="col-12  text-center">
										<a href="/CenterUserInsert" class="tm-link-black" style="padding-right: 50px;">센터 운영자 회원가입</a>
									</div>
								</div>
								<div class="input-group mt-3">
									<button type="submit" class="btn btn-primary d-inline-block mx-auto">Login</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>