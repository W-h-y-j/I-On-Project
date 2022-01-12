<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogHelpRM</title>
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
                    <form>
                        <table class="table">
                            <thead>
                                <th colspan="2">후원 신청하기</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="UserID" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <label for="inputPassword2" class="visually-hidden">Password</label>
                                        <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="후원금액" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input class="form-control" type="text" placeholder="후원금액을 숫자만 입력하세요." aria-label="default input example">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:23vw">
                                    
                                        <input class="form-control" type="text" value="입금자명" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                    <td style="width: 80vw;">
                                        <input class="form-control" type="text" placeholder="입금자 성함 입력" aria-label="default input example">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input class="form-control" type="text" value="입금계좌: [국민]000000-00-000000" aria-label="Disabled input example" disabled readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <p style="color:red">확인 전, 입금계좌 꼭 확인해주세요!</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                         
                        <input class="btn btn-primary" type="submit" value="입금 신청 완료" style="float: right;">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>