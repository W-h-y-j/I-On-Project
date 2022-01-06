<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogMain</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
</head>

<body>
    <jsp:include page="include/blogHead.jsp" />
    <!-- Head부분 나중에 잘라서 include로 넣어야하는 부분임.-->
    <!-- profile 시작-->
    <div class = "container-fluid">
        <div class = "row">
            <div class = "col-md-3">
                <div class="card">
                    <img src="../../../Resources/img/blog/B1.JPG" class="card-img-top" alt="시설사진">
                    <div class="card-body">
                      <p class="card-text">
                          <b>행복한지역아동센터</b><br/>
                          서울특별시 은평구 연서로 39 2층 역촌동 <br/>
                          <b>연락처</b><br/>
                          02-386-3246
                          <button class="btn btn-primary" type="submit">수정</button>
                      </p>
                    </div>
                  </div>
            </div>
            
            <div class="col-md-8" id="gall">
                <table class = "border-main">
                    <th class = "border-main-title" colspan="3"> <a href="#">&#9776; 최근 활동</a></th>
                    <tr>
                        <td class = "border-main-img"><a href="#"><img src="../../../Resources/img/blog/bb8.jpeg" class="img-thumbnail" alt="..."></a></td>
                        <td class = "border-main-img"><a href="#"><img src="../../../Resources/img/blog/bb8.jpeg" class="img-thumbnail" alt="..."></a></td>
                        <td class = "border-main-img"><a href="#"><img src="../../../Resources/img/blog/bb8.jpeg" class="img-thumbnail" alt="..."></a></td>
                    </tr>
                </table>   
            </div>
        </div>
    </div>
    <!-- 1단-->
    <!-- 2단-->
    <div class="container-fluid">
        <div class="row" id="blog-main-two">
            <div class="col-md-3">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col" id="main-tie"><a href="#">&#9776; 공지사항</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="row"><a href="#">[프로그램]새해 행복 나눔 계획</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[공지]운영시간 변경 안내</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[공지]후원 내역 반영 절차</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[공지]코로나로 인한...</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-3">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col" id="main-tie"><a href="#">&#9776; 필요해요!</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="row"><a href="#">[후원]신년 아이들을 위한 모금</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[자원봉사]신년맞이 행사 인원 모집</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[물품]세탁기, 가전제품 교체 필요</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[후원]12월 행사를 위한 모금</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-3">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col" id="main-tie"><a href="#">&#9776; 감사해요!</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="row"><a href="#">[후원]신년 아이들을 위한 모금 감사</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[자원봉사]신년맞이 행사 인원 모집 감사</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[물품]세탁기, 가전제품 교체 필요 감사</a></td>
                        </tr>
                        <tr>
                            <td scope="row"><a href="#">[후원]12월 행사를 위한 모금 감사</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--footer-->
    <jsp:include page="include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>