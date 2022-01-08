<%@ page contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet"
	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<script
	src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>

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
				<div class="col">
					<div class="bg-white tm-block">
						<div class="row">
							<div class="col-12">
								<h2 class="tm-block-title d-inline-block">공지사항 등록</h2>
							</div>
						</div>
						<div class="row mt-4 tm-edit-product-row">
							<div id="editor" class="col"></div>
							<div
								class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0 text-right"
								style="padding-top: 10px;">
								<button type="submit" class="btn btn-small btn-primary">저장</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../include/footer.jsp" />
		</div>
	</div>
	<script>
		const Editor = toastui.Editor;
		const editor = new Editor({
			el : document.querySelector('#editor'),
			height : '500px',
			initialEditType : 'markdown',
			previewStyle : 'vertical'
		});
		editor.getMarkdown();
	</script>
</body>
</html>