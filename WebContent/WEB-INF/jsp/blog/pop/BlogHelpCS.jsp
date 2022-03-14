<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogHelpCS</title>
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
                    <form action="HelpCS_OK" method="post">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th colspan="3" style="border-bottom: 2px solid black;">자원봉사 확인</th>
                                </tr>
                                <tr>
                                    <th>
                                        아이디
                                    </th>
                                    <th>
                                        봉사시간
                                    </th>
                                    <th>
                                        확인
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:if test="${empty rslist}">
                            	<tr>
                            		<td colspan="3">
                            			<b> 신청자가 없습니다. </b>
                            		</td>
                            	</tr>
                            </c:if>
                            <c:if test="${!empty rslist}">
                            	<c:forEach items="${rslist}" var="b" >
                            		<tr>
                            			<td>
                            				${b.hp_user_id}
                            				<input type="hidden" name="hp_no" value="${hp_no}">
                            			</td>
                            			<td>
                            				<select class="form-select form-select-sm" aria-label=".form-select-sm example" name="user_real_time" style="width: 15vw;">
                                            	<option selected>--</option>
                                            	<option value="1">1</option>
                                            	<option value="2">2</option>
                                            	<option value="3">3</option>
                                            	<option value="4">4</option>
                                            	<option value="5">5</option>
                                            	<option value="6">6</option>
                                            	<option value="7">7</option>
                                            	<option value="8">8</option>
                                        	</select>
                            			</td>
                            			<td>
                            				<select class="form-select form-select-sm" aria-label=".form-select-sm example" name="hp_reflect" style="width: 15vw;">
                                            	<option selected>--</option>
                                            	<option value="Y">반영</option>
                                            	<option value="N">미반영</option>
                                        	</select>
                            			</td>
                            		</tr>
                            	</c:forEach>     
                            </c:if> 
                            </tbody>
                        </table>
                        <input class="btn btn-primary" type="submit" value="봉사시간 반영" style="float: right;">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>