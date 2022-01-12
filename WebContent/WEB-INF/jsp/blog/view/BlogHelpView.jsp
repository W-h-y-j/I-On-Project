<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlogHelpView</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/blogM.css" rel="stylesheet">
    <link href="../../../../Resources/css/blog/CenterHelp.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="../include/blogHead.jsp" />
    <div class = "container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 id="CenterHelpTitle">&#9776; 필요해요!</h1>
            </div>        
        </div>
        <div class="row">
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/blog" style="text-decoration: none;">홈</a></li>
                    <li class="breadcrumb-item"><a href="/blog/Help" style="text-decoration: none;">필요해요!</a></li>
                    <li class="breadcrumb-item active" aria-current="page">게시글</li>
                </ol>
            </nav>
            <br/>
        </div>
        <br/>
        
        <div class="row">
            <div class="col-md-8 offset-md-2" style="height: 68vh;">
                <table class="table">
                    <thead>
                        <tr style="background-color: rgb(233, 232, 232); border-top:2px solid black">
                            <th style="width: 30vw; font-size: 2rem; text-align: center;">
                                정서발달 훈련을 위한 모금 모집
                            </th>
                            <td>
                                작성자: CenterID
                            </td>
                            <td>
                                작성일: 2021-12-24 17:30
                            </td>
                            <td>
                                조회수: 230
                            </td>
                        </tr>
                    </thead>

                    <!-- 확인 버튼 팝업 스크립트 -->
                    <script type="text/javascript">
                        function HelpCheckOpen(){
    
                        var popUrl = "/blog/HelpCM";	//팝업창에 출력될 페이지 URL
    
                        var popOption = "width=510, height=610, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
    
                                window.open(popUrl,"",popOption);
                             }
                    </script>

                    <!-- 신청 버튼 팝업 스크립트 -->
                    <script type="text/javascript">
                        function HelpRequestOpen(){
    
                        var popUrl2 = "/blog/HelpRM";	//팝업창에 출력될 페이지 URL
    
                        var popOption2 = "width=510, height=610, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
    
                                window.open(popUrl2,"",popOption2);
                             }
                     </script>
                    
                    <tbody>
                        <tr style="border-bottom: 2px solid black;">
                            
                            <td colspan="4" style="padding-top:5vh; padding-left: 3vw; height: 30vh;">
                                <p>*모금 안내*</p>
                                <p>아이들 정서발달 훈련을 위한 모금을 합니다.</p>
                                <p>블록, 놀이기구, 수채화 등등 구매예정</p>
                                <p>많은 관심 부탁드립니다. </p>
                                <!-- 태그에 따른 확인과 신청 눌렀을때 팝업 다르게 정보 제공 나중에 수정해야함 db연결하고 나서 .-->
                                <a href="javascript:HelpCheckOpen()"><input class="btn btn-primary" type="button" value="신청확인" ></a>
                                <a href="javascript:HelpRequestOpen()"><input class="btn btn-primary" type="button" value="신청" ></a>
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
                <input class="btn btn-primary" type="button" value="수정" >
                <input class="btn btn-primary" type="button" value="목록으로" style="float: right;" onclick="location.href='/blog/Help'">
                
                
            </div>
        </div>
    </div>
    <jsp:include page="../include/blogFooter.jsp" />
</body>
</html>