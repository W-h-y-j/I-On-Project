<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title></title>
<jsp:include page="../include/base.jsp" />
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
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
								<h2 class="tm-block-title d-inline-block">일정 등록</h2>
							</div>
						</div>
						<form name="datewriteForm" method="post" class="tm-signup-form">
							<div class="form-row">
								<label for="name" class="col-form-label" style="margin-left: 50px; margin-right: 50px;">센터</label>
								<div class="col">
									<input placeholder="" id="center_name" name="center_name" type="text" class="form-control validate">
								</div>
							</div>
							<div class="form-row">
								<label for="title" class="col-form-label" style="margin-left: 50px; margin-right: 50px;">제목</label>
								<div class="col">
									<input placeholder="" id="center_title" name="center_title" type="text" class="form-control validate">
								</div>
							</div>
							<div class="form-row">
								<label for="title" class="col-form-label" style="margin-left: 50px; margin-right: 50px;">기간</label>
								<div class="col">
									<input placeholder="" id="center_title" name="center_title" type="text" class="form-control validate">
							~
								</div>
							</div>
							
							<div class="form-row">
								<label for="title" class="col-form-label" style="margin-left: 50px; margin-right: 50px;">기간</label>
								<div class="col">
									<input placeholder="" id="center_title" name="center_title" type="text" class="form-control validate">
								</div>
							</div>
							<div class="form-row"> <%--row mt-6 --%>
								<div id="editor" class="col"></div>
								<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
								<!-- <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 mt-3 text-right">
									<div class ="col">
										<input type="text" class="col-md-12 col-sm-8 form-control validate" id="fileArea" name="fileArea">
										<input type="button" class="btn btn-small btn-primary" value="첨부파일" onclick="document.getElementById('fileInput').click();" />
									</div>
								</div> -->
							</div>
							<div class="form-row mt-3">
								<div class="col">
									<div class="input-group">
	  									<input type="text" class="form-control" placeholder="첨부파일" aria-label="fileArea" id="fileArea" name="fileArea" aria-describedby="button-addon2">
										<div class="input-group-append">
	  										<input id="fileInput" type="file" style="display: none;" /> 
	    									<button class="btn btn-small btn-primary" type="button" id="fileInputButton" onclick="document.getElementById('fileInput').click();">파일 첨부</button>
	  									</div>
									</div>
								</div> 
							</div>
							<div class="form-row mt-3">
								<div class="col-12 text-right" >									
									<button id="btnSave" type="button" class="btn btn-primary" >저장</button>									
									<!-- <a href="#none" class="btn btn-primary" id="btnSave">저장</a> -->
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
			if($.trim($("#center_title").val())==""){
				alert("제목을 입력하세요!");
				$("#center_title").val("").focus();
				return false;
			}
		}
		
		$(document).ready(function() {
			const editor = new toastui.Editor({
				el : document.querySelector('#editor'),
				previewStyle : 'tab', //'tab'
				height : '500px',
				initialEditType : "wysiwyg",
				toolbarItems : [
						[ 'heading', 'bold', 'italic', 'strike' ],
						[ 'hr', 'quote' ],
						[ 'ul', 'ol', 'task', 'indent', 'outdent' ],
						[ 'table', 'image', 'link' ] ],
				hideModeSwitch : true,
				initialValue : ' ' //cont
			});
			
			$("#btnSave").click(function() {
				insert_check();
				var dateJson = {
					center_title : $("#center_title").val(),
					center_cont : editor.getHTML(),
					center_name: $("#center_name").val()
				}
				console.log(dateJson); 

				$.ajax({
					type : 'POST',
					url : '/date_write',
					data : dateJson,
					success : function(res) {
						alert("등록 되었습니다.");
						location.replace("/Center_Date2");
					}

				});// end ajax

			});
		});

	</script>
</body>
</html>