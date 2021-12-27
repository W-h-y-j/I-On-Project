<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src = "../js/jquery.js"></script>
<link rel = "stylesheet" type = "text/css" href = "././Resources/css/CL.css" />
</head>
<body> 
<article id = "front">
<form method = "post" action = "#" onsubmit = "return check();">
 <div id = "search">
  <p class="searchArea">
   <select class = "option">
    <option value = "sr">검색</option>
    <option value = "title" >지역구</option>
    <option value = "addr" >센터명</option>
   </select>&nbsp;
   <input type="text" name="" class = "textbox" />
   <input type = "button" value = "검색" class = "btn" onclick = "check()" />
  </p>
 </div>
 <br/><br/>
 <div id = "listTable">
  <table id = "list">
   <thead>			
    <tr>	
     <th class = "name">센터명</th>
	 <th class = "addr">주소</th>
	 <th class = "tel">전화번호</th>
	</tr>
   </thead>
   
   <tbody>
   <tr>				
	<td class="center">
	 <a href="#" onclick="openMinihp('/24052');" class="home">힘찬키움지역아동센터</a>
	</td>
	<td class="left">경기도 광명시 광명로812번길 30 2층 (광명동)</td>				
	<td>02-2681-6173</td>					
   </tr>
			  
   <tr>
    <td class="center">
	 <a href="#" onclick="openMinihp('/himchan2009');" class="home">힘찬지역아동센터</a>
	</td>
	<td class="left">경기도 성남시 수정구 모란로 91 4층 (태평동)</td>				
	<td>031-721-8479</td>					
   </tr>
			  
   <tr>				
	<td class="center">					
	 <a href="#" onclick="openMinihp('/happyhs61');" class="home">흰돌행복한홈스쿨</a>
    </td>
	<td class="left">울산광역시 동구 월봉6가길 3  방어동 </td>				
	<td>052-232-9544</td>					
   </tr>
			  
   <tr>			
	<td class="center">
	 <a href="#" onclick="openMinihp('/grow');" class="home">희망플러스사회적협동조합</a>
	</td>
	<td class="left">경북 포항시 북구 천마로103번길 30 (양덕동)</td>				
	<td>054-277-3370</td>					
   </tr>
			  
   <tr>
	<td class="center">
	 <a href="#" onclick="openMinihp('/26814');" class="home">희망터지역아동센터</a>
	</td>
	<td class="left">인천광역시 강화군 온수길38번길 14 희망터지역아동센터</td>				
	<td>032-937-7811</td>					
   </tr>
			  
   <tr>
	<td class="center">
	 <a href="#" onclick="openMinihp('/25175');" class="home">희망터지역아동센터</a>
	</td>
	<td class="left">경상북도 경주시 용담로54번길 9-0 기정상가 비동 3층 황성동 (황성동)</td>				
	<td>054-742-3689</td>					
   </tr>
			  
   <tr>
	<td class="center">
	 <a href="#" onclick="openMinihp('/hopefull');" class="home">희망찬지역아동센터</a>
	</td>
	<td class="left">경기도 하남시 신장로 200-0 2층 덕풍동 </td>				
	<td>031-791-8103</td>					
   </tr>
			  
   <tr>
	<td class="center">
	 <a href="#" onclick="openMinihp('/24754');" class="home">희망지역아동센터</a>
    </td>
	<td class="left">경기도 화성시 정남면 만년로 470-14  동남A 상가동 201.206호 </td>				
	<td>031-366-1220</td>					
   </tr>
			  
   <tr>
	<td class="center">
	 <a href="#" onclick="openMinihp('/ady353');" class="home">희망지역아동센터</a>
	</td>
	<td class="left">경기도 의정부시 호국로1142번길 21  가능동 </td>				
	<td>031-872-9688</td>					
   </tr>
			  
   <tr>
	<td class="center">						
	 <a href="#" onclick="openMinihp('/24299');" class="home">희망지역아동센터</a>
    </td>
	<td class="left">경기도 성남시 수정구 탄리로31번길 3 2층 희망지역아동센터 (수진동)</td>				
	<td>031-759-9596</td>					
   </tr>
   </tbody>
  </table>
 </div> 
</form>
</article>   
</body>
</html>