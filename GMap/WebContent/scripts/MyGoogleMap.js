var map;
var currentMarker;

var initLocation;
var browserSupportFlag;
var geocoder;
var infowindow;
var latitude;
var longitude;

var iIdFolder = -1;

function checkNhapTenDiaDiem() {
	var x=document.forms["frmNhapTenDiaDiem"]["tenDiaDiem"].value;
	if (x==null || x.length<=4) {
		alert("Cần nhập tên địa điểm!");
		return;
	}
	document.forms["frmNhapTenDiaDiem"].submit();
}
function themDiaDiem() {
	//alert(iIdFolder);
	//alert(lastClicked.getID());
	if (iIdFolder==-1) {
		alert("Cần chọn thư mục muốn lưu địa điểm!");
		return false;
	}
	document.forms["frmThemDiaDiem"]["iIdFolder"].value = iIdFolder;
	document.forms["frmThemDiaDiem"]["iKinhDo"].value = currentMarker.getPosition().lng(); 
	document.forms["frmThemDiaDiem"]["iViDo"].value = currentMarker.getPosition().lat();
	document.forms["frmThemDiaDiem"].submit();
}
function themThuMuc() {
	//alert(iIdFolder);
	//alert(lastClicked.getID());
	if (iIdFolder==-1) {
		alert("Cần chọn thư mục cha!");
		return false;
	}
	document.forms["frmThuMuc"]["iIdFolder"].value = iIdFolder;
	document.forms["frmThuMuc"]["iKinhDo"].value = currentMarker.getPosition().lng(); 
	document.forms["frmThuMuc"]["iViDo"].value = currentMarker.getPosition().lat();
	document.forms["frmThuMuc"].submit();
}
function op(id) {
	//var obj = findObj(id);    
	//if (!obj.isOpen) clickOnNodeObj(obj);
	iIdFolder = id;
}




//ham xu ly khong dinh vi duoc
function handleNoGeolocation(errorFlag) {
    if (errorFlag == true) {
        alert("Dịch vụ định vị địa lý có lỗi!");
        initLocation = vietnam;
    }
    else {
        alert("Trình duyệt không hỗ trợ định vị địa lý!");
        initLocation = hcmCity;
    }
    map.setCenter(initLocation);
}

//ham khoi tao ban do
function initialize() {
//    var myOptions = {
//        zoom: 8,
//        mapTypeId: google.maps.MapTypeId.ROADMAP
//    };
//
//    map = new google.maps.Map(document.getElementById("map"), myOptions);
    //var latlng = hcmCity;
	var hcmCity = new google.maps.LatLng(10.7930593, 106.62913040000001);
    var myOptions = {
      zoom: 14,
      center: hcmCity,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map"), myOptions);
    
    currentMarker = new google.maps.Marker({
		position: hcmCity, 
		map: map, 
		title:"Vị trí đang chọn!"
	});
	google.maps.event.addListener(map, 'click', function(me) {		
		//noteTarget(me.latLng);
		currentMarker.setPosition(me.latLng);
		}
		);		
//    // Try W3C Geolocation (Preferred)
//    if (navigator.geolocation) {
//        browserSupportFlag = true;
//        navigator.geolocation.getCurrentPosition(function (position) {
//            initLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
//            map.setCenter(initLocation);
//            latitude = position.coords.latitude;
//            longitude = position.coords.longitude;
//        }, function () {
//            handleNoGeolocation(browserSupportFlag);
//        });
//    }
//
//    // Try Google Gears Geolocation
//    else if (google.gears) {
//        browserSupportFlag = true;
//        var geo = google.gears.factory.create('beta.geolocation');
//        geo.getCurrentPosition(function (position) {
//            initLocation = new google.maps.LatLng(position.latitude, position.longitude);
//            map.setCenter(initLocation);
//            latitude = position.coords.latitude;
//            longitude = position.coords.longitude;
//        }, function () {
//            handleNoGeolocation(browserSupportFlag);
//        });
//    }
//
//    // Browser doesn't support Geolocation
//    else {
//        browserSupportFlag = false;
//        handleNoGeolocation(browserSupportFlag);
//    }
}

//Tim dia diem
function findLocation(address, flag) {
    if (!geocoder) {
        geocoder = new google.maps.Geocoder();
    }
    var geocoderRequest = { address: address };
    geocoder.geocode(geocoderRequest, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if (!marker) {
                marker = new google.maps.Marker({ map: map });
            }
            marker.setPosition(results[0].geometry.location);
            if (!infowindow) {
                infowindow = new google.maps.InfoWindow();
            }
            var content = '<strong>' + results[0].formatted_address + '</strong></br>';
            content += 'Vĩ độ:' + results[0].geometry.location.lat() + '</br>';
            content += 'Kinh độ:' + results[0].geometry.location.lng() + '</br></br></br>';
            infowindow.setContent(content);
            infowindow.open(map, marker);
            if (flag == true) {
                var panel = document.getElementById("diadiempanel");
                var panelContent = "<strong>Các kết quả tìm được:</strong></br>";
                for (var i in results) {
                    panelContent += "<a href='javascript:void(0);' name='" + results[i].formatted_address + "' onclick=linkDiaDiem_Click(this)>" + results[i].formatted_address + "</a>" + "</br></br>";
                }
                panel.innerHTML = panelContent;
            }
            google.maps.event.addListener(marker, 'click', function () {
                infowindow.open(map, marker);
            });
        }
        else {
            alert('Không tìm thấy địa chỉ cần tìm');
        }
    });
}

//ham xu ly su kien button click
function btnDiaDiem_Click() {
    var address = document.getElementById("DiaDiem").value;
    findLocation(address, true);
}

//ham xu ly su kien link click
function linkDiaDiem_Click(link) {
    var DiaDiem = link.name;
    findLocation(DiaDiem, false);
}

//ham xu ly su kien button click
function btnMyLocation_Click() {

    map.setZoom(20);
    var content = 'Vi tri cua ban</br>' + 'Vi do: ' + latitude + '</br> kinh do: ' + longitude;
    var marker = new google.maps.Marker({
        position: initLocation,
        map: map
    });
    // Creating a InfoWindow
    var infoWindow = new google.maps.InfoWindow({
        content: content
    });
    // Adding the InfoWindow to the map
    infoWindow.open(map, marker);

}