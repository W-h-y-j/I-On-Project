<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogHelpRS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .HelpRequestArea{
            width:500px;
            height:600px;
        }
    </style>
    
</head>
<body>
    <div class="HelpRequestArea">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <form action="/HelpRS_OK" method="post">
                        <table class="table">
                            <thead>
                                <th colspan="2">자원봉사 신청하기</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="UserID" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td>
                                    	<input class="form-control" type="text" placeholder="아이디를 입력해주세요." name="user_id" aria-label="default input example" >
                            		</td>
                                </tr>
                                <tr>
                                	<td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="Pssword" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                	<td>
                                    	<label for="inputPassword2" class="visually-hidden">Password</label>
                                    	<input type="password" class="form-control" id="inputPassword2" name="centerpwd" placeholder="Password" >
                                	</td>
                            	</tr>
                                <tr>
                                    <tr>
                                        <td colspan="2">
                                            <input class="form-control" type="text" value="봉사일정 : ${fn:substring(hp_stdate,0,10)} ~ ${fn:substring(hp_endate,0,10)}" name="cal" aria-label="Disabled input example" disabled readonly>
                                        	<input type="hidden" name="hp_no" value="${hp_no}">
                                        </td>
                                    </tr>
                                </tr>
                                <tr>
                                    <td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="연락처" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input class="form-control" type="text" placeholder="연락처 입력"  name="user_tell"aria-label="default input example">
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="희망시간" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input class="form-control" type="text" placeholder="시간 입력(시간단위로 입력해주세요.)" name="user_time" aria-label="default input example">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <p style="color:red">자세한 시간대는 담당자와 확인해주세요.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                         
                        <input class="btn btn-primary" type="submit" value="봉사 신청 완료" style="float: right;">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>