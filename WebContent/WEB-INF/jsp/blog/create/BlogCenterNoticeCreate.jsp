<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterNoticeCreate</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterNotice.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
    
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterNoticeTitle">&#9776; 공지사항</h1>
            </div>        
        </div>
        <div class="row" >
            <div class="col-md-10 offset-md-2">
                <form>
                    <table class="table" style="width: 60vw;">
                        <thead>
                            <th>공지사항 작성</th> 
                        </thead>
                        <tbody>

                            <tr>
                                <td>
                                    <label for="staticEmail2" class="visually-hidden">Email</label>
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="CenterID" style="width: 10vw;">
                                </td>
                                <td>
                                    <label for="inputPassword2" class="visually-hidden">Password</label>
                                    <input type="password" class="form-control" id="inputPassword2" placeholder="Password" style="width: 43vw;">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label style="width: 20vw;">제목</label>
                                </td>
                                <td>
                                    <input class="form-control" type="text" placeholder="제목을 입력하세요." aria-label="default input example">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label>구분 선택</label>
                                </td>
                                <td>
                                    <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                        <option selected>구분을 선택해주세요.</option>
                                        <option value="1">공지</option>
                                        <option value="2">프로그램</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" >
                                    <input class="form-control" type="file" id="formFileMultiple"  multiple >
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <span class="input-group-text">텍스트 입력</span>
                                    <textarea class="form-control" aria-label="With textarea" style="height: 45vh;"></textarea>
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