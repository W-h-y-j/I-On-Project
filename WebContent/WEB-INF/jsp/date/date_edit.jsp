<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title></title>
	<link rel="stylesheet" 	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
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
								<h2 class="tm-block-title d-inline-block">일정 수정</h2>
							</div>
						</div>
						<form name="dateEditForm" method="post" class="tm-signup-form">
 							<input hidden="hidden" id="cno" value="${date.cno}"/>
							<input hidden="hidden" id="page" value="${page}"/>
							<div class="form-row">
								<label for="name" class="col-form-label" style="margin-left: 50px; margin-right: 50px;">제목</label>
								<div class="col">
									<input id="name" name="name" value="${date.center_name}" class="form-control validate">
								</div>
							</div>
							<div class="form-row">
								<label for="title" class="col-form-label" style="margin-left: 50px; margin-right: 50px;">제목</label>
								<div class="col">
									<input id="title" name="title" value="${date.center_title}" class="form-control validate">
								</div>
							</div>
							<div class="form-row"> <%--row mt-6 --%>
								<div id="editor" class="col">${date.center_cont}</div>
								<textarea style="display:none;" id="viewerEditor">${date.center_cont}</textarea>
							</div>
							<div class="form-row mt-3">
								<div class="col-12 text-right" >
									<button id="btnSave" type="button" class="btn btn-primary" >저장</button>
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

		function insert_check() {
			if ($.trim($("#title").val()) == "") {
				alert("제목을 입력하세요!");
				$("#title").val("").focus();
				return false;
			}
		}

		$(document).ready(
				function() {
					var content = $("#viewerEditor").val();
					const editor = new toastui.Editor({
						el : document.querySelector('#editor'),
						language : 'ko',
						previewStyle : 'tab', //'tab'
						height : '500px',
						initialEditType : "wysiwyg",
						toolbarItems : [
								[ 'heading', 'bold', 'italic', 'strike' ],
								[ 'hr', 'quote' ],
								[ 'ul', 'ol', 'task', 'indent', 'outdent' ],
								[ 'table', 'image', 'link' ] ],
						hideModeSwitch : true,
						initialValue : content
					});
					
					$("#btnSave").click(function() {
						insert_check();
						
						var dateJson = {
							center_title : $("#title").val(),
							center_cont : editor.getHTML(),
							center_name: $("#name").val(),
							cno: $("#cno").val()
						}
						
						console.log(dateJson); 

						$.ajax({
							type : 'POST',
							url : '/date_edit',
							data : dateJson,
							success : function(res) {
								alert("수정 되었습니다.");
								location.replace("/Center_Date2");
							}

						}); // end ajax
						
					});

				});
	</script>

</body>
</html>