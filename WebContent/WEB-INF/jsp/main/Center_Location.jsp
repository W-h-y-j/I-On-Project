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
    <div id="map" style="width:1580px;height:100%;position:relative;overflow:hidden;"></div>
	 <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>            
            <form onsubmit="searchPlaces(); return false;">    
                    키워드 : <input type="text" value="서울지역아동센터" id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
             </form>                   
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
        
    </div>    
</div>

<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                '</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
</script>
	<br/>



							<!-- row -->
							<form method="get" action="Center_Location">
							<p class="searchArea">
								<select name="find_field">
									<option value="sr">검색</option>
									<option value="center_name" <c:if test="${find_field=='center_name'}">${'selected'}</c:if>>센터</option>
									<option value="center_add" <c:if test="${find_field=='center_add'}">${'selected'}</c:if>>지역</option>
								</select>&nbsp; 								
								<input name="find_name" size="30px" value="${find_name}" /> 
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
											onclick="openMinihp('/26337');" class="home">${b.center_name}</a></td>
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