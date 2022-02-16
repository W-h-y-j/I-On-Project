<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterNotice</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterNotice.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="include/blogHead.jsp" />
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterNoticeTitle">&#9776; 공지사항</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">						
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item active" aria-current="page">공지사항</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        <div class="col-md-5 offset-md-7">
            <form class="d-flex">
                <select class="form-select form-select-sm" aria-label=".form-select-sm example" style="width: 5vw;">
                    <option  selected>구분</option>
                    <option value="1">공지</option>
                    <option value="2">프로그램</option>
                </select>
                <input class="form-control me-2" type="search" placeholder="검색어 입력" aria-label="Search" style="width:15vw; margin-left:1vw;">
                <button class="btn btn-outline-primary" type="submit">Search</button>
            </form>
        </div>
        <br/>
        
        <div class="row" id="CenterNoticeLine">
            <div class="col-md-9 offset-md-2">
                <table class="table table-striped table-hover" id="CenterNoticeTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>구분</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>날짜</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <c:forEach items="${systemBlog}" var="systemBlog">
										<tr>
												<td>${systemBlog.notice_no}</td>
												<td>${systemBlog.notice_div}</td>
												<td>${systemBlog.notice_title}</td>
												<td>${systemBlog.notice_writer}</td>
												<td>${systemBlog.notice_date}</td>
												<td>${systemBlog.notice_view}</td>
										</tr>
									</c:forEach>
                    <!--  
                        <tr>
                            <td>8</td>
                            <td>프로그램</td>
                            <td><a href="/blog/Notice/View" style="text-decoration: none; color:black"> 크리스마스 기념</a></td>
                            <td>시설관리자</td>
                            <td>2021-12-24</td>
                            <td>23</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>공지사항</td>
                            <td><a href="#" style="text-decoration: none; color:black">코로나 언제쯤 끝나지 빨리 끝나서 나가서 술 마시면서 놀고싶다 볼링치고싶다 골프도 치고싶다</a></td>
                            <td>시설관리자</td>
                            <td>2021-11-07</td>
                            <td>150</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>공지사항</td>
                            <td><a href="#" style="text-decoration: none; color:black">코로나로 수칙에 따른 운영방침</a></td>
                            <td>시설관리자</td>
                            <td>2021-09-07</td>
                            <td>45</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>공지사항</td>
                            <td><a href="#" style="text-decoration: none; color:black">사이트 이용수칙 안내</a></td>
                            <td>시설관리자</td>
                            <td>2021-08-20</td>
                            <td>63</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>프로그램</td>
                            <td><a href="#" style="text-decoration: none; color:black">정서발달을 위한 음악교육</a></td>
                            <td>시설관리자</td>
                            <td>2021-06-25</td>
                            <td>77</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>공지사항</td>
                            <td><a href="#" style="text-decoration: none; color:black">봉사활동 시간 변동 안내</a></td>
                            <td>시설관리자</td>
                            <td>2021-06-17</td>
                            <td>95</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>프로그램</td>
                            <td><a href="#" style="text-decoration: none; color:black">사고발달을 위한 훈련</a></td>
                            <td>시설관리자</td>
                            <td>2021-05-07</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>공지사항</td>
                            <td><a href="#" style="text-decoration: none; color:black">후원 유의사항 전달</a></td>
                            <td>시설관리자</td>
                            <td>2021-01-07</td>
                            <td>52</td>
                        </tr>
                        -->
                    </tbody>
                </table>
                
                
                <nav aria-label="Page navigation example" id="CenterNoticePage">
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
                            <button type="button" class="btn btn-primary" id="CenterNoticeBtn" onclick="location.href='/blog/Notice/Create'">글작성</button>
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