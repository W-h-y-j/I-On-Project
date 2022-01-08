<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterGallery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../Resources/css/blog/CenterGallery.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="include/blogHead.jsp" />
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
                    <li class="breadcrumb-item active" aria-current="page">활동사진</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <table class="table" style="border-bottom: 2px solid black;">
                    <thead>
                        <th>활동사진</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <a href="#" style="text-decoration: none; color:black">
                                    <img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="" style="width: 21vw; height: 21vh;">
                                    <span>2020-01-07</span>
                                </a>
                            </td>
                            <td>
                                <a href="#" style="text-decoration: none; color:black">
                                    <img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="" style="width: 21vw; height: 21vh;">
                                    <span>2020-01-07</span>
                                </a>
                            </td>
                            <td>
                                <a href="#" style="text-decoration: none; color:black">
                                    <img src="../../../Resources/img/blog/bb8.jpeg" class="img-thumbnail" alt="" style="width: 21vw; height: 21vh;">
                                    <span>2020-01-07</span>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" style="text-decoration: none; color:black">
                                    <img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="" style="width: 21vw; height: 21vh;">
                                    <span>2020-01-07</span>
                                </a>
                            </td>
                            <td>
                                <a href="#" style="text-decoration: none; color:black">
                                    <img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="" style="width: 21vw; height: 21vh;">
                                    <span>2020-01-07</span>
                                </a>
                            </td>
                            <td>
                                <a href="#" style="text-decoration: none; color:black">
                                    <img src="../../../Resources/img/blog/b2.JPG" class="img-thumbnail" alt="" style="width: 21vw; height: 21vh;">
                                    <span>2020-01-07</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <nav aria-label="Page navigation example" id="CenterGalleryPage">
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
                            <button type="button" class="btn btn-primary" id="CenterGalleryBtn" onclick="location.href='/blog/Gallery/Create'">글작성</button>
                        </li>
                    </ul>
                </nav>      
            </div>
        </div>
    </div>
    <br/><br/>
    <jsp:include page="include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>