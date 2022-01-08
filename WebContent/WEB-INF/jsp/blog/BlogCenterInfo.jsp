<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterInfo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterInfo.css" rel="stylesheet">

</head>
<body>
    <body>
        <jsp:include page="include/blogHead.jsp" />
        <div class = "container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h1 id="CenterInfoTitle">&#9776; 시설 소개</h1>
                </div>        
            </div>
            <!-- CenterInfoHead-->
            <div class="row">
                <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                        <li class="breadcrumb-item active" aria-current="page">시설소개</li>
                    </ol>
                </nav>
                <br/>
            </div>
            <div class="row" id="CenterInfoImg">
                <div class="col-md-8 offset-md-2">
                    <img src="../../../Resources/img/blog/b2.JPG" class="img-fluid" alt="센터소개사진" id="CenterInfoPhoto">    
                </div>
            </div>
            <br/><br/>
            <div class="row">
                <div class="col-md-8 offset-md-2" id="CenterInfoTextLine">
                    시설소개 안내문입니다.
                    
                </div>    
            </div>
        </div>
        <br/>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-1 offset-md-9">
                    <button id="CenterInfoTextBtn" class="btn btn-primary" type="button" onclick="location.href='/blog/Info/Change'">수정</button>
                </div>
            </div>
        </div>
        <br/>
        <jsp:include page="include/blogFooter.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>