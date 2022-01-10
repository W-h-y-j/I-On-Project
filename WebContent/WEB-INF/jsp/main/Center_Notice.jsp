<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">	
    <title>아동센터 공지</title>
    <jsp:include page="../include/base.jsp" />
  </head>
<body id="reportsPage" class="white">
    <div class="container">
    <jsp:include page="../include/header.jsp" />
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width:1600px; margin:auto">
  <a class="navbar-brand" href="#">아동센터 공지</a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>

<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" href="/Center_Location">아동 센터 찾기</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="/Center_Notice">아동 센터 공지</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="/Center_Help">아동 센터 후원요청</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="/Center_Thk">아동 센터 후원 사용 내역</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="/Center_Image">아동 센터 활동 사진</a>
  </li>
</ul>
    

    <img src="Resources/img/Center/now_img.png" class="rounded mx-auto d-block" alt="..."  style="width:1600px; margin:auto">
    
     <p class="searchArea" style="width:1600px; margin:auto" >
								<select class="option">
									<option value="sr">검색</option>
									<option value="title">제목</option>
									<option value="addr">내용</option>
								</select>&nbsp; <input type="text" name="" class="textbox" /> <input
									type="button" value="검색" class="btn" onclick="#" />
							</p>
    
    	<div class="table-responsive">		
    <table class="table table-bordered" style="width:1600px; margin:auto"  >

  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">구분</th>
      <th scope="col">센터명</th>
      <th scope="col">제목</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>기타</td>
       <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">한빛 지역 아동센터</td>
      <td>신년 감사인사</td>
      <td>2022-01-06</td>
    </tr>
    <tr>
      <th scope="row">2</th>
     <td>프로그램</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">빛고을지역 아동센터</td>
      <td>제1회 아동자치회 개최</td>
      <td>2022-01-06</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>센터운영</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">소나무지역 아동센터</td>
      <td>소나무지역아동센터 소식지 (2022-1호)</td>
      <td>2022-01-06</td>
   </tr>   
      <th scope="row">4</th>
      <td>센터운영</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">소나무지역 아동센터</td>
      <td>소나무지역아동센터 1월 일정표 안내</td>
      <td>2022-01-06</td>
     <tr>
      <th scope="row">5</th>
      <td>센터운영</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">미리내지역아동센터</td>
      <td>2021년 1월 월간계획표 & 1월 식단표</td>
      <td>2022-01-06</td>
      </tr>
    <tr>  
      <th scope="row">6</th>
      <td>예산</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">용호지역아동센터</td>
      <td>2022년 지역아동센터 세입,세출 예산(안) 공고 및 결과 제출</td>
      <td>2022-01-05</td>
      </tr>
     <tr> 
      <th scope="row">7</th>
      <td>센터운영</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">주암지역아동센터</td>
      <td>2021년 12월 후원자 명부 (결연, 운영보조 지원 후원)</td>
      <td>2022-01-05</td>
      </tr>
     <tr> 
      <th scope="row">8</th>
      <td>센터운영</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">주암지역아동센터</td>
      <td>1월 센터 일정표</td>
      <td>2021-01-05</td>
      </tr>
      <tr>
      <th scope="row">9</th>
      <td>기타</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">주암지역아동센터</td>
      <td>1월 부모교육칼럼</td>
      <td>2022-01-05</td>
      </tr>
     <tr> 
      <th scope="row">10</th>
      <td>장위지역아동센터밀알학교</td>
      <td style="cursor:pointer;color:#blue;" onClick="location.href='#'">장위지역아동센터밀알학교</td>
      <td>2021년 후원금, 후원물품 수입 및 사용결과보고</td>
      <td>2022-01-05</td>   
    </tr>
  </tbody>
</table>
</div>
 
 <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <jsp:include page="../include/footer.jsp" />
  </div>
  
  </body>
</html>