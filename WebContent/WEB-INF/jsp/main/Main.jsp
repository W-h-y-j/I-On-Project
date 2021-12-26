<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>I-ON:아이 온 희망나눔 서비스</title>
	<jsp:include page="../include/base.jsp" />
</head>
<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
        	<jsp:include page="../include/header.jsp" />
            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
                <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title">센터 찾기</h2>
                        	<input type="button" class="btn btn-primary d-block mx-auto" value="센터 찾으러 가기" onclick="#">
                    </div>
                </div>
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100 row">
                    	<div class="col-8">
                    		<h2 class="tm-block-title">센터 활동 사진</h2>
                    	</div>
                        <div class="col-4 text-right"> 
                    		<a href="" class="tm-link-black"> 전체 보기</a> 
                    	</div>
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block" src="Resources/img/main01.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block" src="Resources/img/main02.jpg"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block" src="Resources/img/main03.jpg"
										alt="Third slide">
								</div>
							</div>
							<a class="carousel-control-prev"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <span class="carousel-control-next-icon"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>

					</div>
                </div>
                
                <div class="tm-col tm-col-small" >
                    <div class="bg-white tm-block border border-secondary" >
    					<div class="col-12">
							<button type="button" class="btn btn-primary w-100">로그인하고 후원하기</button>
						</div>
                    	<div class="row mt-3">
                    		<div class="col-6 text-center">
                    			<a href="" class="tm-link-black">회원가입</a>
                    		</div>
                    		<div class="col-6 text-center"> 
                    			<a href="" class="tm-link-black">비밀번호 찾기</a>
                    		</div>
                    	</div>
                    </div>
                	<div class="bg-white tm-block " >
                    	<div class="row">
                    		<div class="col-8">
                    			<h2 class="tm-block-title d-inline-block">시스템 공지</h2>
                    		</div>
                    		<div class="col-4 text-right"> 
                    			<a href="" class="tm-link-black"> 전체 보기</a> 
                    		</div>
                    	</div>
	                   	<ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
                            <li class="tm-list-group-item">
                                Donec eget libero
                            </li>
                            <li class="tm-list-group-item">
                                Nunc luctus suscipit elementum
                            </li>
                            <li class="tm-list-group-item">
                                Maecenas eu justo maximus
                            </li>
                        </ol>
                    </div>
				</div>
                

                <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-8">
                                <h2 class="tm-block-title d-inline-block">센터 공지사항</h2>
                            </div>
                            <div class="col-4 text-right">
                                <a href="products.html" class="tm-link-black">전체 보기</a>
                            </div>
                        </div>
                        <ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
                            <li class="tm-list-group-item">
                                Donec eget libero
                            </li>
                            <li class="tm-list-group-item">
                                Nunc luctus suscipit elementum
                            </li>
                            <li class="tm-list-group-item">
                                Maecenas eu justo maximus
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="tm-col tm-col-big">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-8">
                                <h2 class="tm-block-title d-inline-block">센터 후원 요청</h2>
                            </div>
                            <div class="col-4 text-right">
                                <a href="products.html" class="tm-link-black">전체 보기</a>
                            </div>
                        </div>
                        <ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
                            <li class="tm-list-group-item">
                                Donec eget libero
                            </li>
                            <li class="tm-list-group-item">
                                Nunc luctus suscipit elementum
                            </li>
                            <li class="tm-list-group-item">
                                Maecenas eu justo maximusyy
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="tm-col tm-col-small">
                    <div class="bg-white tm-block h-100">
                    	<div class="row">
                            <div class="col-8">
                                <h2 class="tm-block-title d-inline-block">센터 사용 내역</h2>
                            </div>
                            <div class="col-4 text-right">
                                <a href="products.html" class="tm-link-black">전체 보기</a>
                            </div>
                        </div>
                        
                        <ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big">
                            <li class="tm-list-group-item">
                                Donec eget libero
                            </li>
                            <li class="tm-list-group-item">
                                Nunc luctus suscipit elementum
                            </li>
                            <li class="tm-list-group-item">
                                Maecenas eu justo maximus
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                            <li class="tm-list-group-item">
                                Pellentesque auctor urna nunc
                            </li>
                            <li class="tm-list-group-item">
                                Sit amet aliquam lorem efficitur
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
            <jsp:include page="../include/footer.jsp" />
        </div>
    </div>
    <jsp:include page="../include/chartThings.jsp"/>
</body>
</html>

