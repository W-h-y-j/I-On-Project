<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
    <meta charset="UTF-8">
    <title>BlogProfileChange</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
	
	
    <style>
        .profileChangeArea{
            width:773px;
            height:800px;
        }
    </style>
</head>
<body>

    <div class="ProfileChangeArea">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form action="blogProfileChange_OK" onsubmit="return pop_check();" enctype="multipart/form-data" method="post" accept-charset="UTF-8">
                        <table class="table">
                            <thead>
                                <th colspan="2">프로필 수정</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="CenterID" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input type="text" class="form-control" name="pr_id">
                                    </td>
                                </tr>
                                <tr>
                                	<td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="센 터 명" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input type="text" class="form-control" name="pr_centername">
                                    </td>
                                </tr>
                                <tr>
                                	<td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="상세주소" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input type="text" class="form-control" name="pr_address">
                                    </td>
                                </tr>
                                <tr>
                                	<td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="연 락 처" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input type="text" class="form-control" name="pr_tell">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input class="form-control" type="file"  name="img" > 
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <span class="input-group-text">소개말 입력</span>
                                        <textarea class="form-control" aria-label="With textarea" name="pr_cont" style="height: 200px;"></textarea>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input class="btn btn-primary" type="reset" value="취소" style="margin-left: 350px;"> 
                        <input class="btn btn-primary" type="submit" value="완료" >
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>