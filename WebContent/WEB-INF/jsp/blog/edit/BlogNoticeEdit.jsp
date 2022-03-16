<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogCenterNoticeEdit</title>
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
                <form action="/blog/Notice/Edit" method="post">
                  <input type="hidden" name="notice_no" value="${blog.notice_no}">
                  <input type="hidden" name="notice_writer" value="${blog.notice_writer}">
                    <table class="table" style="width: 60vw;">
                        <thead>
                            <th>공지사항 수정</th> 
                        </thead>
                        <tbody>                        
                           
                            <tr>
                                <td>
                                    <label style="width: 20vw;">제목</label>
                                </td>
                                <td>
                                    <input class="form-control" type="text"  name="notice_title"  value="${blog.notice_title}">
                                   
                                </td>
                            </tr>
                            
                            <tr>
                                <td colspan="2">
                                    <span class="input-group-text">텍스트 입력</span>
                                    <textarea name="notice_content"   class="form-control" aria-label="With textarea" style="height: 45vh;">${blog.notice_content}</textarea>
                                </td>
                            </tr>  
                        </tbody>
                    </table>	
                    
                    <input class="btn btn-primary" type="submit" value="완료">
                    <input class="btn btn-primary" type="reset" value="취소" style="margin-left: 55vw;">                      
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="../include/blogFooter.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>