<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterInfoChange</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterInfo.css" rel="stylesheet">
    
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
    <div class = "container-fluid" id="ChangeInfoInfo">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterInfoTitle">&#9776; 시설 소개</h1>
            </div>        
        </div>
        <br/>
        <div class="row" >
            <div class="col-md-8 offset-md-2">
                <form action="/blog/Info/Change_OK" enctype="multipart/form-data" method="post" accept-charset="UTF-8">
                    <table class="table">
                        <thead>
                            <th>시설소개 변경</th> 
                        </thead>
                        <tbody>
                        	<tr>
                        		<td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="센터 아이디" style="width: 10vw;">
                            	</td>
                            	<td>
                                    <input class="form-control" type="text" placeholder="센터 아이디를 입력해주세요." name="centerid" aria-label="default input example">
                            	</td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="비밀번호" style="width: 10vw;">
                                </td>
                                <td>
                                    <label for="inputPassword2" class="visually-hidden">Password</label>
                                    <input type="password" class="form-control" id="inputPassword2" placeholder="Password" name="centerpwd" style="width: 53vw;">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <label for="formFileMultiple" class="form-label"></label>
                                    <input class="form-control" type="file" name="infoimg" id="formFileMultiple" multiple>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <span class="input-group-text">소개말 입력</span>
                                    <textarea class="form-control" name="infocont" aria-label="With textarea" style="height: 30vh;"></textarea>
                                </td>
                            </tr>  
                        </tbody>
                    </table>
                    <input class="btn btn-primary" type="reset" value="취소" style="margin-left: 57vw;"> 
                    <input class="btn btn-primary" type="submit" value="완료">
                </form>
            </div>
        </div>
    </div>
    <br/><br/>
    
    <jsp:include page="../include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>