<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterHelp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterHelp.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="include/blogHead.jsp" />
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterHelpTitle">&#9776; 필요해요!</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item active" aria-current="page">필요해요!</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        <div class="col-md-5 offset-md-7">
            <form class="d-flex">
                <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="width: 5vw;">
                    <option  selected>구분</option>
                    <option value="1">후원</option>
                    <option value="2">자원봉사</option>
                    <option value="3">물품</option>
                </select>
                <input class="form-control me-2" type="search" placeholder="검색어 입력" aria-label="Search" style="width:15vw; margin-left:1vw;">
                <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
        </div>
        <br/>
        <div class="row" id="CenterHelpLine">
            <div class="col-md-9 offset-md-2">
                <table class="table table-striped table-hover" id="CenterHelpTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>구분</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>완료상태</th>
                            <th>날짜</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>8</td>
                            <td>후원</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">크리스마스 행사 모금</a></td>
                            <td>시설관리자</td>
                            <td>진행중</td>
                            <td>2021-12-24</td>
                            <td>23</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>자원봉사</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">크리스마스 행사 자원봉사 인원모집</a></td>
                            <td>시설관리자</td>
                            <td>완료</td>
                            <td>2021-12-24</td>
                            <td>150</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>물품</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">세탁기/건조기 노후로 인한 교체지원</a></td>
                            <td>시설관리자</td>
                            <td>완료</td>
                            <td>2021-09-07</td>
                            <td>45</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>물품</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">냉장고가 부족해요!</a></td>
                            <td>시설관리자</td>
                            <td>완료</td>
                            <td>2021-08-20</td>
                            <td>63</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>후원</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">시설노후로 인한 교체 자금 모금</a></td>
                            <td>시설관리자</td>
                            <td>완료</td>
                            <td>2021-06-25</td>
                            <td>77</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>자원봉사</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">아이들과 함께하는 정서발달</a></td>
                            <td>시설관리자</td>
                            <td>완료</td>
                            <td>2021-06-17</td>
                            <td>95</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>자원봉사</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">정규 봉사활동 인원 모집</a></td>
                            <td>시설관리자</td>
                            <td>완료</td>
                            <td>2021-05-07</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>후원</td>
                            <td><a href="/blog/Help/View" style="text-decoration: none; color:black">새해 자금 운용을 위한 모금</a></td>
                            <td>시설관리자</td>
                            <td>완료</td>
                            <td>2021-01-07</td>
                            <td>52</td>
                        </tr>
                    </tbody>
                </table>
                
                <nav aria-label="Page navigation example" id="CenterHelpPage">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                        <li>
                            <button type="button" class="btn btn-primary" id="CenterHelpBtn" onclick="location.href='/blog/Help/Create'">글작성</button>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    
    <jsp:include page="include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>