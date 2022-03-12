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
									<form class="tm-signup-form" method="post" action="CenterUserInsert" onsubmit="return insert_check();">
										<div class="form-row">
											<label for="name" class="col-sm-2 col-form-label">센터 명</label>
											<div class="col-sm-5">
												<input placeholder="센터명을 검색하세요" id="center_name" name="center_name" type="text" class="form-control validate" readonly="readonly">
											</div>
											<div class="col-auto">
												<input id="searchCenter" type="button" value="센터검색" class="btn btn-primary btn-small" data-toggle="modal" data-target="#exampleModal" onclick="center_find();"/>
												<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">센터검색</button> -->
											</div>
										</div>
										<div class="form-row">
											<label for="id" class="col-sm-2 col-form-label">ID</label>
											<div class="col-sm-5">
												<input placeholder="ID를 입력하세요" id="center_id" name="center_id" type="text" class="form-control validate">
											</div>
											<div class="col-auto">
												<input type="button" class="btn btn-primary btn-small" value="ID 중복확인" onclick="id_check();"></input>
												<span id="idcheck"></span>
											</div>
											<div class="form-row"> 
												<a style="color: #F4511E; font-size: 12px; margin-bottom: 20px; margin-left: 20px;">
													입력하신 ID는 센터 블로그의 도메인이 됩니다. 센터를 대표하는 ID로 작성해 주세요.</a>
											</div>
										</div>
										<div class="form-row">
											<label for="password" class="col-sm-2 col-form-label">비밀번호</label>
											<div class="col-sm-4">
												<input placeholder="******" id="password" name="password" type="password" class="form-control validate">
											</div>
											<label for="password2" class="col-sm-2 col-form-label">비밀번호 확인</label>
											<div class="col-sm-4">
												<input placeholder="******" id="password2" name="password2" type="password" class="form-control validate">
											</div>
										</div>
										<div class="form-row">
											<a style="color: #F4511E; font-size: 12px; margin-bottom: 20px; margin-left: 20px;">
												센터 검색시 자동으로 추가 됩니다. </a>
										</div>
										<div class="form-row">
											<label for="center_add" class="col-sm-2 col-form-label">센터 주소</label>
											<div class="col-sm-10">
												<input placeholder="" id="center_add" name="center_add" type="text" class="form-control validate" readonly="readonly">
											</div>
										</div>

										<div class="form-row">
											<label for="center_tel" class="col-sm-2 col-form-label">센터 연락처</label>
											<div class="col-sm-4">
												<input id="center_tel" name="center_tel" type="tel" class="form-control validate" readonly="readonly">
											</div>
											<label for="center_user_name" class="col-sm-2 col-form-label">담당자명</label>
											<div class="col-sm-4">
												<input id="center_user_name" name="center_user_name" type="text" class="form-control validate" />
											</div>
										</div>
										<div class="form-row">
											<label for="center_email" class="col-sm-2 col-form-label">대표 이메일</label>
											<div class="col-sm-4">
												<input placeholder="example@eleifend.co" id="center_email" name="center_email" type="email" class="form-control validate">
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

<script>
	// 센터검색
	function center_find(){
		$url="/CenterSearch";//매핑주소
		window.open($url,"센터찾기","width=1000px,height=500px," +"scrollbars=yes");
	}
	
	// 센터검색창에서 데이터 받기
	function call (data) {
		var centerInfo = data;
		$("#center_name").val(centerInfo.center_name);
		$("#center_add").val(centerInfo.center_add);
		$("#center_tel").val(centerInfo.center_tel);
	}
	
	// id 중복체크를 했는지 안했는지 확인 하려고 만든 변수
	var idCheckSum = false;
	
	// ID 체크
	function id_check(){
		
	 /* copy begin */
		$("#idcheck").hide();
		//아이디 영역을 숨김
		$center_id=$.trim($("#center_id").val());

		if($center_id.length < 4){
			$("#idcheck").text('');
			//idcheck 아이디 영역 문자열을 초기화
			$("#idcheck").show();
			alert("아이디는 4자 이상이어야 합니다.");
			$("#center_id").val('').focus();
			return false;
		};
		
		if($center_id.length > 15){
			$("#idcheck").text('');
			$("#idcheck").show();
			alert("아이디는15자 미만이어야 합니다.");
			$("#center_id").val('').focus();
			return false;
		};

		if(!(validate_id($center_id))){
			$("#idcheck").text('');
			$("#idcheck").show();
			alert("아이디는 영문소문자,숫자,_조합만 가능합니다.");
			$("#center_id").val('').focus();
			return false;
		};
		
		//아이디 중복확인
	    $.ajax({	
	        type:"POST",
	        url:"Center_idCheck", 
	        data: {"center_id":$center_id},  
	        datatype:"int",
	        success: function (data) {
	        	//서버 데이터를 data변수에 저장
	      	  if(data==1){//중복 아이디가 있다면
	      		$("#idcheck").text('');
	        	$("#idcheck").show();
	        	alert("중복된 아이디입니다.");
	          	$("#center_id").val('').focus();
	          	return false;
		     
	      	  }else{//중복 아이디가 아니면
	      		$("#idcheck").text('');
	      		$("#idcheck").show();
	      		alert("사용가능한 아이디입니다.");
	      		idCheckSum = true;
	      		$("#password").focus();
	      	  }  	    	  
	        },
	    	  error:function(){
	    		  alert("data error");
	    	  }
	      });
	
	}
	
	function validate_id($center_id) {
	  var pattern= new RegExp(/^[a-z0-9_]+$/);//아이디를 영문소문자와 숫자 와 _조합으로 처리
	  return pattern.test($center_id);
	};
	
	// 입력 체크
	function insert_check() {
		if($.trim($("#center_name").val())==""){
			alert("센터명을 입력하세요!");
			$("#center_name").val("").focus();
			return false;
		}
		
		if($.trim($("#center_id").val())==""){
			alert("센터 아이디를 입력하세요!");
			$("#center_id").val("").focus();
			return false;
		}
		
		if(idCheckSum == false){
			alert("ID 중복 확인 버튼을 눌러주세요!");
			return false;
		}
		
		$password=$.trim($("#password").val());
		$password2=$.trim($("#password2").val());
		if($mem_pwd == ""){
			alert("비밀번호를 입력하세요!");
			$("#password").val("").focus();
			return false;
		}
		if($mem_pwd2 == ""){
			alert("비밀번호 확인을 입력하세요!");
			$("#password2").val("").focus();
			return false;
		}
		if($mem_pwd != $mem_pwd2){
			alert("비밀번호와 비밀번호 확인 값이 다릅니다!");
			$("#password").val("");//비번 입력박스를 초기화
			$("#password2").val("");
			$("#password").focus();
			return false;
		}
		if($.trim($("#center_user_name").val())==""){
			alert("담당자명을 입력해주세요");
			$("#center_user_name").val("").focus();
			return false;
		}
		if($.trim($("#center_email").val())==""){
			alert("이메일을 입력하세요!");
			$("#center_email").val("").focus();
			return false;
		}
	}
	
</script>
</html>