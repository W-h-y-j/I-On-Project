<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title></title>
	<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.min.css" />
	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.js"></script>
	<jsp:include page="../include/base.jsp" />
</head>
<body id="reportsPage">
	<div class="" id="bg02">
		<div class="container">
			<jsp:include page="../include/header.jsp" />
			<!-- row -->
			<div class="row tm-mt-big">
				<div class="col">
					<div class="bg-white tm-block">
						<div class="row">
							<div class="col-12">
								<h2 class="tm-block-title d-inline-block">공지사항 조회</h2>
							</div>
							<div class="col text-right mb-3">
								<a href="/Notice-Mod?system_notice_no=${myPage.system_notice_no}&page=${page}" class="btn btn-small btn-primary">수정</a>
								<a href="/Notice-Del?system_notice_no=${myPage.system_notice_no}&page=${page}" class="btn btn-small btn-primary">삭제</a>
							</div>
						</div>
						<form name="noticeForm" method="post" class="tm-signup-form">
							<div class="form-row">
								<label for="title" class="col-form-label" style="margin-left: 50px; margin-right: 50px;">제목</label>
								<div class="col">
									<input id="title" name="title" value="${myPage.title}" class="form-control validate" readonly="readonly">
								</div>
							</div>
							<div class="form-row"> <%--row mt-6 --%>
								<div id="viewer" class="col" style="">${myPage.content}</div>
							</div>
							<div class="form-row mt-3">
								<div class="col-12 text-right" >
									<a href="/Notice" class="btn btn-small btn-primary">목록</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
	<script>
	var viewer;
	$(document).ready(function(){
		viewer = new toastui.Editor({
			el: document.querySelector('#viewer'),
			initialEditType : "wysiwyg"
		});
	});
	</script>
</body>
</html>