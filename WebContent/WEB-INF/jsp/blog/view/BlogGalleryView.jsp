<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogGalleryView</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterGallery.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterGalleryTitle">&#9776; 활동사진</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item"><a href="/blog/Gallery" style="text-decoration: none;">활동사진</a></li>
                    <li class="breadcrumb-item active" aria-current="page">게시글</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/><br/>

        <div class="row">
            <div class="col-md-8 offset-md-2" style="height: 65vh;">
                <table class="table">
                    <thead>
                        <tr style="background-color: rgb(233, 232, 232); border-top:2px solid black">
                            <th style="width: 30vw; font-size: 2rem; text-align: center;">
                                크리스마스 행사
                            </th>
                            <td>
                                작성자: CenterID
                            </td>
                            <td>
                                작성일: 2021-12-25 20:30
                            </td>
                            <td>
                                조회수: 8
                            </td>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <tr style="border-bottom: 2px solid black;">
                            
                            <td colspan="4" style="padding-top:5vh; padding-left: 3vw; height: 30vh;">
                                <div >
                                    <img src="../../../../Resources/img/blog/bb8.jpeg" style="max-width:60vw; max-height: 45vh;" class="rounded mx-auto d-block" alt="...">
                                </div>
                                크리스마스 행사 사진입니다.
                            </td>
                        </tr>
                    </tbody>
                </table>
                
            </div>
            <div class="col-md-8 offset-md-2">
                <input class="btn btn-primary" type="button" value="수정" >
                <input class="btn btn-primary" type="button" value="목록으로" style="float: right;" onclick="location.href='/blog/Gallery'">
            </div>
            
            <div class="col-md-8 offset-md-2" style="margin-top: 5vh;">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>
                                <span class="input-group-text">&#9776; 댓글</span>
                                <textarea class="form-control" aria-label="With textarea" style="height: 10vh;">
                                  -  여긴 다음에 DB,스크립트 포함해서 수정 필요 -
                                </textarea>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
    
    <jsp:include page="../include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>