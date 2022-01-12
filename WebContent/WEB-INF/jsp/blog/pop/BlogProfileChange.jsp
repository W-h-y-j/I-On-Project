<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogProfileChange</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .profileChangeArea{
            width:773px;
            height:752px;
        }
    </style>
</head>
<body>
    <div class="ProfileChangeArea">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form>
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
                                        <label for="inputPassword2" class="visually-hidden">Password</label>
                                        <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input class="form-control" type="file" id="formFileMultiple"  multiple > 
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <span class="input-group-text">소개말 입력</span>
                                        <textarea class="form-control" aria-label="With textarea" style="height: 200px;"></textarea>
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