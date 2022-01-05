<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="CF_HELP_style.css">
    <title>필요해요</title>
    <jsp:include page="./include/base.jsp" />
  </head>
  <body>
  <jsp:include page="./include/header.jsp"  />
   
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width:50%; margin:auto">
  <a class="navbar-brand" href="#">지역 아동센터 필요해요</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>

<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" href="#">지원아동센터 찾기</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#">지원아동센터 공지</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#">지원아동센터 필요해요</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#">지원아동센터 감사해요</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#">지원아동센터 활동사진</a>
  </li>
</ul>

<div class="form-check-form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
  <label class="form-check-label" for="inlineCheckbox1">강남구</label>
</div>
<div class="form-check-form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">서초구</label>
</div>
<div class="form-check-form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
  <label class="form-check-label" for="inlineCheckbox3">마포구</label>
</div>


 
 <p class="searchArea" style="width:50%; margin:auto" >
								<select class="option">
									<option value="sr">검색</option>
									<option value="title">제목</option>
									<option value="addr">내용</option>
								</select>&nbsp; <input type="text" name="" class="textbox" /> <input
									type="button" value="검색" class="btn" onclick="#" />
							</p>
						</div> 
	<div class="table-responsive">					
    <table class="table table-hover" style="width:50%; margin:auto"  >

  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">센터명</th>
      <th scope="col">필요분야</th>
      <th scope="col">제목</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
    </tr>
    <tr>
      <th scope="row">2</th>
     <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
   </tr>   
      <th scope="row">4</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
     <tr>
      <th scope="row">5</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
      </tr>
    <tr>  
      <th scope="row">6</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
      </tr>
     <tr> 
      <th scope="row">7</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
      </tr>
     <tr> 
      <th scope="row">8</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
      </tr>
      <tr>
      <th scope="row">9</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>
      </tr>
     <tr> 
      <th scope="row">10</th>
      <td>예산</td>
      <td>행복센터</td>
      <td>예산공지</td>
      <td>2021-12-26</td>   
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
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      <jsp:include page="./include/footer.jsp" />
  </body>
</html>