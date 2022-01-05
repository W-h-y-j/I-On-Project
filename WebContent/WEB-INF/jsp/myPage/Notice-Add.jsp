<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title></title>
<jsp:include page="../include/base.jsp" />
</head>
<body id="reportsPage">
	<div class="" id="bg02">
		<div class="container">
			<jsp:include page="../include/header.jsp" />
			<!-- row -->
			<div class="row tm-mt-big">
				<div class="col-xl-8 col-lg-10 col-md-12 col-sm-12">
					<div class="bg-white tm-block">
						<div class="row">
							<div class="col-12">
								<h2 class="tm-block-title d-inline-block">공지사항 등록</h2>
							</div>
						</div>
						<div class="row mt-4 tm-edit-product-row">
							<div class="col-xl-7 col-lg-7 col-md-12">
								<form action="" class="tm-edit-product-form">
									<div class="input-group mb-3">
										<label for="name"
											class="col-xl-3 col-lg-3 col-md-3 col-sm-4 col-form-label">제목
										</label> <input id="name" name="name" type="text"
											class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
									</div>
									<div class="input-group mb-3">
										<label for="description"
											class="col-xl-3 col-lg-3 col-md-3 col-sm-4 col-form-label">내용</label>
										<textarea
											class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
											rows="10" required></textarea>
									</div>
									<div class="col-xl-4 col-lg-4 col-md-12 mx-auto mb-4">
										<!-- <div class="tm-product-img-dummy mx-auto">
											<i class="fas fa-5x fa-cloud-upload-alt"
												onclick="document.getElementById('fileInput').click();"></i>
										</div> -->
										<div class="custom-file mt-3 mb-3">
											<input id="fileInput" type="file" style="display: none;" />
											<input type="button" class="btn btn-primary d-block mx-auto"
												value="파일 첨부"
												onclick="document.getElementById('fileInput').click();" />
										</div>
									</div>
									<div class="input-group mb-3">
										<div class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0">
											<button type="submit" class="btn btn-primary">등록</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>

</body>
</html>