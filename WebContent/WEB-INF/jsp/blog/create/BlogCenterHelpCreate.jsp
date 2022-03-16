<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterHelpCreate</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterHelp.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.js" charset = "UTF-8"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 시작일 캘린더 -->
<script>
	$(function () {
		$("#datepicker").datepicker({ dateFormat: "yy-mm-dd" });
	});
</script>
<script>
  $.datepicker.setDefaults({
  	dateFormat: 'yy-mm-dd',
  	prevText: '이전 달',
  	nextText: '다음 달',
  	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
  	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
  	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
  	showMonthAfterYear: true,
  	yearSuffix: '년'
});
$(function() {
  $("#datepicker").datepicker();
});
</script>

<!--  종료일 캘린더  -->
<script>
	$(function () {
		$("#datepicker2").datepicker({ dateFormat: "yy-mm-dd" });
	});
</script>
<script>
  $.datepicker.setDefaults({
  	dateFormat: 'yy-mm-dd',
  	prevText: '이전 달',
  	nextText: '다음 달',
  	monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  	monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
  	dayNames: ['일', '월', '화', '수', '목', '금', '토'],
  	dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
  	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
  	showMonthAfterYear: true,
  	yearSuffix: '년'
});
$(function() {
  $("#datepicker2").datepicker();
});
</script>
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
    
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterHelpTitle">&#9776; 필요해요!</h1>
            </div>        
        </div>
        <div class="row" >
            <div class="col-md-10 offset-md-2">
                <form action="/Help/Create_OK" method="post" >
                    <table class="table" style="width: 60vw;">
                        <thead>
                            <th>필요해요! 작성</th> 
                        </thead>
                        <tbody>

                            <tr>
                                <td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="CenterID" style="width: 10vw;">
                                </td>
                                <td>
                                    <input class="form-control" type="text" placeholder="센터 아이디를 입력해주세요." name="hp_centerid" aria-label="default input example">
                            	</td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="비밀번호" style="width: 10vw;">
                                </td>
                                <td>
                                    <label for="inputPassword2" class="visually-hidden">Password</label>
                                    <input type="password" class="form-control" id="inputPassword2" name="centerpwd" placeholder="Password" style="width: 43vw;">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="센터 이름" style="width: 10vw;">
                                </td>
                                <td>
                                    <input class="form-control" type="text" placeholder="센터 이름을 입력해주세요." name="hp_centername" aria-label="default input example">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label style="width: 20vw;">제목</label>
                                </td>
                                <td>
                                    <input class="form-control" type="text" placeholder="제목을 입력하세요." name="hp_title" aria-label="default input example">
                                </td>
                            </tr>
                            <tr>
                            	<td>
                            		<label style="width: 20vw;">일정 선택</label>
                            	</td>
                            	<td>
                            		<span>
                            			
                            			<input type="text" class="form-control" id="datepicker" name="hp_stdate">
											~
                            			<input type="text" class="form-control" id="datepicker2" name="hp_endate">
                            		</span>
                            	</td>
                            </tr>
                            <tr>
                            	<td>
                            		<label style="width: 20vw;">모집 인원 수</label>
                            	</td>
                            	<td>
                            		<input class="form-control" type="text" placeholder="인원수" name="hp_pe" aria-label="default input example"> 명
                            	</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <span class="input-group-text">세부내용 입력</span>
                                    <textarea class="form-control" aria-label="With textarea" name="hp_cont" style="height: 45vh;"></textarea>
                                </td>
                            </tr>  
                        </tbody>
                    </table>
                    <input class="btn btn-primary" type="reset" value="취소" style="margin-left: 55vw;"> 
                    <input class="btn btn-primary" type="submit" value="완료">
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="../include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>