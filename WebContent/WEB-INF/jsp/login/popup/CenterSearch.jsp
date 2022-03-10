<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>센터 검색</title>
<jsp:include page="../../include/base.jsp" />
</head>
<body>
<%-- 모달 추가 필요 --%>
	<div class="table-responsive">
		<div class="col-12">
			<div class="row" style="margin-top: 50px;">
				<label for="name" class="col-sm-2 col-form-label">센터 명</label>
				<div class="col-sm-4">
					<input placeholder="센터명을 입력하세요" id="centerName" name="centerName" type="text" class="form-control validate" onkeyup="enterkey();">
				</div>
				<div class="col-auto">
					<input id="searchCenter" type="button" value="검색" class="btn btn-small btn-primary" onclick="centerSearch();"/>
				</div>
			</div>
		</div>
		<table
			class="table table-hover table-striped tm-table-striped-even mt-3 text-center">
			<thead>
				<tr class="tm-bg-gray text-center">
					<th scope="col" class="text-center" style="padding: 0px;"><label style="margin-bottom: 9px;">Check</label></th>
					<th scope="col" class="text-center" style="padding: 0px;"><label style="margin-bottom: 9px;">센터 이름</label></th>
					<th scope="col" class="text-center" style="padding: 0px;"><label style="margin-bottom: 9px;">센터 주소</label></th>
					<th scope="col" class="text-center" style="padding: 0px;"><label style="margin-bottom: 9px;">센터 연락처</label></th>
				</tr>
			</thead>
			<tbody id="searchResult">
				<tr>
					<td colspan="4" height="s30" align="center">검색 결과가 없습니다.</td>
				</tr>
			</tbody>
		</table>
	<button id="btnSave" type="button" class="btn btn-primary" >선택</button>
</body>
<script type="text/javascript">
	
	// 검색 결과 리스트를 json으로 담아줄 전역 변수 
	var centerInfo= [];
	
	// enter key 검색
	function enterkey() {
		if(window.event.keyCode == 13) {
			centerSearch();
		}
	}
	
	// 검색버튼 클릭 시 발동!
	function centerSearch() {
		if($.trim($("#centerName").val())==""){
			alert("센터명을 입력하세요");
			$("#centerName").val("").focus();
			return false;
		}
		var param = {};
		param.center_name = $("#centerName").val();
		console.log(param);
		$.ajax({  
			type: 'POST',
			url : "/centerfind",
			dataType : "json",
			contentType : "application/json",
			data : JSON.stringify(param),
			success : function(result){
				$("#searchResult").empty();
				centerInfo = result; 
				if(result == null || result.length == 0) {
					var rowHtml = '<tr>'
						+'<td height="s30" align="center">검색 결과가 없습니다.</td>'
					+'</tr>';
					$("#searchResult").append(rowHtml);
					return;
				} 
				$.each(result, function(idx, item) {                                
					var rowHtml =  '<tr> '
					+'	<td> '
					+'	<input type="radio" name="radio" value="'+idx+'">  '
					+'	</td>'
					+'	<td class="text-center">'+item.center_name+'</td> '
					+'	<td>'+item.center_add+'</td>'
					+'	<td>'+item.center_tel+'</td> '
					+'</tr> ';
					
					$("#searchResult").append(rowHtml);
					
				});
				
			}
		});
	}
	
	// 버튼 
	$("#btnSave").click(function() {
		var index =$("input:radio[name='radio']:checked").val();
		if(index == null) {
			alert("센터를 선택하세요");
			return;
		}
		opener.call(centerInfo[index]); 
		window.close();
		
	});
</script>
</html>

