console.log("info.js")

var mapOptions = {
    center: new naver.maps.LatLng(37.358879897225094, 127.11488138258703),  //지도의 초기 중심 좌표
    zoom: 15, //지도의 초기 줌 레벨
    zoomControl: true, //줌 컨트롤의 표시 여부
    zoomControlOptions: { //줌 컨트롤의 옵션
        position: naver.maps.Position.TOP_RIGHT
    }
};

var map = new naver.maps.Map('map', mapOptions);

// 지도 마커 생성
var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(37.358879897225094, 127.11488138258703),
    map: map
});

//setOptions 메서드를 이용해 옵션을 조정할 수도 있습니다.
map.setOptions("mapTypeControl", true); //지도 유형 컨트롤의 표시 여부

naver.maps.Event.addListener(map, 'zoom_changed', function (zoom) {
    console.log('zoom:' + zoom);
});