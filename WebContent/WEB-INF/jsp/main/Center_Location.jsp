<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>I-ON:아이 온 희망나눔 서비스</title>
<jsp:include page="../include/base.jsp" />
<style>
.searchArea {
 text-align: right;
 margin: 0px 0px 0px 50px;
}

</style>
</head>


<!-- <link rel="stylesheet" type="text/css" href="../css/CLT.css" /> -->
<body id="reportsPage" class="white">
	<div class="container">
		<jsp:include page="../include/header.jsp" />
		<div class="row tm-content-row tm-mt-big">
			<div class="col-xl-12 col-lg-24 tm-md-24 tm-sm-24 tm-col">
				<div class="bg-white tm-block h-100">
					<div class="row">
						<div class="col-md-8 col-sm-24">
							<h2 class="tm-block-title d-inline-block">센터 찾기</h2>

							<!-- Map 그려 줘요  -->



<div id="map" style="width:1580px;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3abf6bc5433a12d8d4da82d477c3dca7&libraries=services"></script>
<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.56648540497021, 126.97751909466031), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch('서울 아동 센터', placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
</script>
	<br/>



							<!-- row -->
							<p class="searchArea">
								<select class="option">
									<option value="sr">검색</option>
									<option value="title">지역구</option>
									<option value="addr">센터명</option>
								</select>&nbsp; <input type="text" name="" class="textbox" size="30px"/> <input
									type="button" value="검색" class="btn" onclick="#" />
							</p>
						</div>


						
						<div class="table-responsive">
							<table
								class="table table-hover table-striped tm-table-striped-even mt-3 text-center">
								<thead>
									<tr class="tm-bg-gray">
										<th scope="col">센터명</th>
										<th scope="col" class="text-center">주소</th>
										<th scope="col">전화번호</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/26337');" class="home">희망의집지역아동센터</a></td>
										<td class="text-center">서울특별시 강북구 삼양로 280-1 강북노인회관 2층
											(미아동)</td>
										<td>02-981-4422</td>
									</tr>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/26401');" class="home">희망신나는집문화학교</a></td>
										<td class="text-center">서울 관악구 중앙길 75 (봉천동)</td>
										<td>02-876-3518</td>
									</tr>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/hopespring');" class="home">희망샘지역아동센터</a></td>
										<td class="text-center">서울특별시 광진구 긴고랑로 137 중곡동</td>
										<td>070-4138-0060</td>
									</tr>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/26505');" class="home">희망드림지역아동센터</a></td>
										<td class="text-center">서울특별시 도봉구 도봉로 110아길 12 (창동) 2층</td>
										<td>02-900-9313</td>
									</tr>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/hshope');" class="home">흑석희망지역아동센터</a></td>
										<td class="text-center">서울특별시 동작구 현충로 111-0 402호 (흑석동,
											명수대상가)</td>
										<td>02-816-8031</td>
									</tr>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/heukseok');" class="home">흑석지역아동센터</a></td>
										<td class="text-center">서울특별시 동작구 현충로 111 401호 (흑석동)</td>
										<td>02-816-8031</td>
									</tr>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/26351');" class="home">행복한지역아동센터</a></td>
										<td class="text-center">서울 강서구 곰달래로 177 (화곡동, 행복한교회)</td>
										<td>02-2605-6419</td>
									</tr>
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="openMinihp('/happy1225');" class="home">행복한지역아동센터</a></td>
										<td class="text-center">서울특별시 은평구 연서로 39 2층 역촌동</td>
										<td>02-386-3246</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					

					<div class="tm-table-mt tm-table-actions text-center">
						<!-- <div class="tm-table-actions-col-right"> -->
						<!-- <p class="page"> -->
						<span class="tm-pagination-label">Page</span>
						<nav aria-label="Page navigation" class="d-inline-block">

							<ul class="pagination tm-pagination">
								<li class="page-item active"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><span class="tm-dots d-block">...</span>
								</li>
								<li class="page-item"><a class="page-link" href="#">13</a></li>
								<li class="page-item"><a class="page-link" href="#">14</a></li>
							</ul>
						</nav>
						<!-- </p> -->
						<!-- </div> -->
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../include/footer.jsp" />
	</div>
</body>

</html>