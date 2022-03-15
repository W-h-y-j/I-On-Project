<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterGalleryCreate</title>
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
        <div class="row" >
            <div class="col-md-10 offset-md-2">
                <form action="/blog/Gallery/write_OK"  method="post" accept-charset="UTF-8" enctype="multipart/form-data">
                    <table class="table" style="width: 60vw;">
                        <thead>
                            <th>활동사진 게시글 작성</th> 
                        </thead>
                        <tbody>
							<tr>
                        		<td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="센터 아이디" style="width: 10vw;">
                            	</td>
                            	<td>
                                    <input class="form-control" type="text" placeholder="센터 아이디를 입력해주세요." name="ag_centerid" aria-label="default input example">
                            	</td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="비밀번호" style="width: 10vw;">
                                </td>
                                <td>
                                    <label for="inputPassword2" class="visually-hidden">Password</label>
                                    <input type="password" class="form-control" id="inputPassword2" name="centerpwd" placeholder="Password" style="width: 43vw;">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="센터 이름" style="width: 10vw;">
                                </td>
                                <td>
                                    <input class="form-control" type="text" placeholder="센터 이름을 입력해주세요." name="ag_centername" aria-label="default input example">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label style="width: 20vw;">제목</label>
                                </td>
                                <td>
                                    <input class="form-control" type="text" placeholder="제목을 입력하세요." name="ag_title" aria-label="default input example">
                                </td>
                            </tr>
                            
                            <tr>
                                <td colspan="2" >
                                    <input class="form-control" type="file" name="file" id="formFileMultiple"  multiple>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <span class="input-group-text">텍스트 입력</span>
                                    <textarea class="form-control" aria-label="With textarea" name="ag_cont" style="height: 45vh;"></textarea>
                                </td>
                            </tr>  
                        </tbody>
                    </table>
                    <input class="btn btn-primary" type="reset" value="취소" style="margin-left: 55vw;"> 
                    <input class="btn btn-primary" type="submit" value="완료">
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="../include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>