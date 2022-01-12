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
	<div class="container">
		<jsp:include page="../include/header.jsp" />
		<div class="row tm-content-row tm-mt-big">
			<div class="col-xl-12 col-lg-24 tm-md-24 tm-sm-24 tm-col">
				<div class="bg-white tm-block h-100">
					<div class="row">
						<div class="col-md-8 col-sm-24">
							<h2 class="tm-block-title d-inline-block">사용자 정보 수정하기</h2>
						</div>
					</div>
					<div class="form-row">
						<label for="password" class="col-sm-1 col-form-label">비밀번호</label>
						<div class="col-sm-4">
							<input placeholder="******" id="password" name="password"
								type="password" class="form-control validate">
						</div>
						<div class="col-auto">
							<button id="UserMod" type="submit"
								class="btn btn-primary btn-small" href="/UserInfo">저장</button>
						</div>
					</div>
				</div>
				<jsp:include page="../include/footer.jsp" />
			</div>
		</div>
	</div>
</body>
</html>