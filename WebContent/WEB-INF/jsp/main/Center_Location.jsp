<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>I-ON:아이 온 희망나눔 서비스</title>
<link rel="stylesheet" type="text/css" href="../../Resources/css/map.css" />
<jsp:include page="../include/base.jsp" />
<style>
.searchArea {
 text-align: right;
 margin: 0px 0px 0px 50px;
}

</style>
</head>
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





<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3abf6bc5433a12d8d4da82d477c3dca7&libraries=services"></script>

<div class="map_wrap">
    <div id="map" style="width:1400px;height:100%;position:relative;overflow:hidden;margin:0 0 0 100px;"></div>
	 
        
        
</div>
<br/>
<script>
//마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch("${find_name}", placesSearchCB); 

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



							<!-- row -->
							<form method="get" action="Center_Location" onsubmit="searchPlaces(); return false;">
							<p class="searchArea">
								<select name="find_field">									
									<option value="center_name" <c:if test="${find_field=='center_name'}">${'selected'}</c:if>>센터명</option>									
								</select>&nbsp; 								
								<input name="find_name" size="30px" value="${find_name}" id="keyword" /> 
								<input type="submit" value="검색" />								
								<%-- 검색후 실행 --%>
					            <input type="button" value="전체목록" onclick="location='Center_Location?page=${page}';" />				
							</p>
							</form>
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
								<c:if test="${!empty blist}">
								  <c:forEach var="b" items="${blist}">
									<tr>
										<td class="tm-product-name"><a href="#"
											onclick="" class="home">${b.center_name}</a></td>
										<td class="text-center">${b.center_add}</td>
										<td>${b.center_tel}</td>
									</tr>
								  </c:forEach>	
								</c:if>										
								</tbody>
							</table>
						</div>
					</div>
					

					<div class="tm-table-mt tm-table-actions text-center">
						<!-- <div class="tm-table-actions-col-right"> -->
						<!-- <p class="page"> -->
						<span class="tm-pagination-label">Page</span>
						<nav aria-label="Page navigation" class="d-inline-block">

							<%-- 검색전 페이징 --%>
				<c:if test="${(empty find_field) && (empty find_name)}">
					<c:if test="${page<=1}">[이전]&nbsp;</c:if>
					<c:if test="${page>1}">
					<a href="Center_Location?page=${page-1}">[이전]</a>&nbsp;
    				</c:if>

					<%--현재 쪽번호 출력--%>
					<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
						<c:if test="${a == page}"> <%--현재 페이지가 선택되었다면--%> <${a}> </c:if>
						<c:if test="${a != page}"> <%--현재 페이지가 선택되지 않았다면 --%>
						<a href="Center_Location?page=${a}">[${a}]</a>&nbsp; </c:if>
					</c:forEach>

					<c:if test="${page >= maxpage}"> [다음] </c:if>
					<c:if test="${page<maxpage}">
						<a href="Center_Location?page=${page+1}">[다음]</a>
					</c:if>
				</c:if>

				<%-- 검색후 페이징 --%>
				<c:if test="${(!empty find_field) || (!empty find_name)}">
					<c:if test="${page<=1}">[이전]&nbsp;</c:if>
					<c:if test="${page>1}">
						<a href="Center_Location?page=${page-1}&find_field=${find_field}&find_name=${find_name}">[이전]</a>&nbsp;
    				</c:if>

					<%--현재 쪽번호 출력--%>
					<c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
						<c:if test="${a == page}"> <%--현재 페이지가 선택되었다면--%> <${a}> </c:if>
						<c:if test="${a != page}"> <%--현재 페이지가 선택되지 않았다면 --%>
							<a href="Center_Location?page=${a}&find_field=${find_field}&find_name=${find_name}">[${a}]</a>&nbsp;
     					</c:if>
					</c:forEach>

					<c:if test="${page >= maxpage}">[다음]</c:if>
					<c:if test="${page<maxpage}">
						<a href="Center_Location?page=${page+1}&find_field=${find_field}&find_name=${find_name}">[다음]</a>
					</c:if>
				</c:if>
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