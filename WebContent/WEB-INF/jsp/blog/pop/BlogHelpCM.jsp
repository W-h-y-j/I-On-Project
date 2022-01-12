<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogHelpCM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .HelpCheckArea{
            width:500px;
            height:600px;
        }
    </style>
</head>
<body>
    <div class="HelpCheckArea">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <form>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th colspan="3" style="border-bottom: 2px solid black;">후원신청자 확인</th>
                                </tr>
                                <tr>
                                    <th>
                                        아이디
                                    </th>
                                    <th>
                                        후원금액
                                    </th>
                                    <th>
                                        확인
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        닉네임[UserID]
                                    </td>
                                    <td>
                                        240,000원
                                    </td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        닉네임[UserID]
                                    </td>
                                    <td>
                                        240,000원
                                    </td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        닉네임[UserID]
                                    </td>
                                    <td>
                                        240,000원
                                    </td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        닉네임[UserID]
                                    </td>
                                    <td>
                                        240,000원
                                    </td>
                                    <td>
                                        <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input class="btn btn-primary" type="submit" value="후원반영" style="float: right;">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>