<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>크루활동스케줄</title>

		<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;200;300;400;500;600&display=swap" rel="stylesheet">

		<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
	<!-- fontawesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	
	<script src="https://kit.fontawesome.com/3b0042e53f.js" crossorigin="anonymous"></script>

<style>
a.cart-btn{
background-color:#374b56;
}
.cart-btn:hover{
color: #fff !important;
}

 /*kakao지도 관련 스타일 시작*/
.dot {overflow:hidden;float:left;width:12px;height:12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/mini_circle.png');}    
.dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:12px;padding:5px;background:#fff;}
.dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
.number {font-weight:bold;color:#ee6152;}
.dotOverlay:after {content:'';position:absolute;margin-left:-6px;left:50%;bottom:-8px;width:11px;height:8px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white_small.png')}
.distanceInfo {position:relative;top:5px;left:5px;list-style:none;margin:0;}
.distanceInfo .label {display:inline-block;width:50px;}
.distanceInfo:after {content:none;}
/*지도 관련 스타일 끝*/


/*숲사진 들어가는 곳*/
.breadcrumb-section:after {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  content: "";
background-image:url("${pageContext.request.contextPath}/resources/assets/img/forest.jpg");

background-position:right center;
  z-index: -1;
  opacity:1;

}


nav.main-menu ul ul.sub-menu{
width:180px;
}

.card-header h5 div{
padding:10px;
}

/*기본 인풋 태그 스타일을 바꿉니다*/
input,select{
     border: 1px solid #ddd; 
     padding: 15px; 
     width: 100%; 
     border-radius: 3px; 
}

select{
width:100%;
}

.select{
height:100px;
overflow:scroll;
}

option{
height:100px;
overflow:scroll;
}

/*a.cart-btn 스타일 가져와서 만든 새로운 클래스*/
a.inputbtn{

	text-align:center;
    width:17.5%;
    display: inline-block;
    background-color: #374b56;
    color: #fff;
    border-radius: 3px;
    padding-bottom: 15px; 
    padding: 15px 17px;
    border:1px solid #374b56;
}
/*a.inputbtn 버튼 클릭시 스타일 토글될때*/
a.inputbtnOff{

	text-align:center;
    width:17.5%;
    display: inline-block;
    border:1px solid #ddd;
    background-color: #fff;
    color: gray;
    border-radius: 3px;
    padding-bottom: 15px; 
    padding: 15px 17px;
}

/*인원수 버튼용 추가 스타일*/
a.inputbtnOffAdd{
	border-left:0px;
}
/*a.cart-btn:hover 스타일 가져와서 만든 새로운 클래스*/
a.inputbtn:hover {

  background-color: #051922;
  border:1px solid  #051922;
  color: white;
}

/*지정된 곳만 사용하는 지정스타일*/
#inputword {
outline:none;
border-radius: 3px 0px 0px 3px;

}

#inputword:focus{
height:57px;
border:solid 2px black;
border-radius: 3px 0px 0px 3px;
}

#bill {
    width: 100%;
    border-radius: 3px;
    border: 1px solid #ddd;
    padding: 15px;
    height: 120px;
    resize: none;
}

#startAddr{
 	width: 100%;
    border-radius: 3px;
    border: 1px solid #ddd;
    padding: 15px;
    height: 57.19px;
    resize: none;
    outline:none;
}

#inputbtn{
border-radius: 0px 3px 3px 0px;
padding-bottom: 15px; 
padding-top:17px;
}

.inputbtnstyle{
border-radius: 3px;
padding-bottom: 15px; 
padding-top:17px;
}
/*지정된 스타일 끝*/

/* 달력 뜯어고침 시작 */

/*달력 외곽 패딩 들어가있는거 스타일 맞추려고 뺌*/
.ui-datepicker {
padding:0px;
}

/*month 타이틀 스타일*/
.ui-widget-header {
    border: 0px solid #dddddd;
    background: rgba(0,0,0,.03);
    border-radius: 3px 3px 0px 0px;
    color: #333333;
    font-weight: bold;
}

/*위에 타이틀과 스타일 이어서 day 타이틀 */
.ui-datepicker th, .ui-datepicker th span{
 background:  rgba(0,0,0,.03);
}

/*달력 테두리 색 더 흐리게*/
.ui-widget.ui-widget-content {
    border: 1px solid #ddd;
}

/*디폴트 날짜 숫자 스탈*/
.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default, .ui-button, html .ui-button.ui-state-disabled:hover, html .ui-button.ui-state-disabled:active {
    border: 0px solid #c5c5c5;
    background:  #ffffff;
    font-weight: normal;
    color: #454545;
}

/*선택된 날짜 스타일*/
.ui-state-active,
.ui-widget-content .ui-state-active,
.ui-widget-header .ui-state-active,
a.ui-button:active,
.ui-button:active,
.ui-button.ui-state-active:hover {

	background: #374b56;
	border-radius:3px;
	font-weight: normal;
	color: #ffffff;
}

/*클릭은 안되지만 오늘 날짜 회색 표시*/
.ui-datepicker-today .ui-state-default{
	background-color:rgba(0,0,0,.09);
    
}
/*전체 달력 글자 중앙으로*/
.ui-datepicker td span, .ui-datepicker td a {
    text-align: center;
}


/*휠명령되는 a태그 스타일*/
#wheelST,#wheelST2{
background-image: url('${pageContext.request.contextPath}/resources/fileUpload/wheel2.png');
background-repeat: no-repeat;
background-size: 30px;
background-position: right;
}
#clickST{
background-image: url('${pageContext.request.contextPath}/resources/fileUpload/click2.png');
background-repeat: no-repeat;
background-size: 30px;
background-position: right;
}

#weatherDiv{
height:76px;
width:100%;
border-left: 1px solid #ddd;
border-top: 1px solid #ddd;
border-right: 1px solid #ddd;
border-radius:3px 3px 0px 0px;

background-position: center;
background-repeat : no-repeat;
background-size:70px; 
}

.selectSTY{

    color: #fff !important;
	text-align:center;
    width:17.5%;
    display: inline-block;
    background-color: #374b56;
    border-radius: 3px;
    padding-bottom: 15px; 
    padding: 15px 17px;
    border:1px solid #374b56;
    
}

.selectoffSTY{

	text-align:center;
    width:17.5%;
    display: inline-block;
    border:1px solid #ddd;
    background-color: #fff;
    color: #ddd !important;
    border-radius: 3px;
    padding-bottom: 15px; 
    padding: 15px 17px;
    
}
</style>
</head>

<body>

	<%@ include file="../include/Topbar.jsp" %>
	

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Crew</p>
						<h1>크 루 활 동 스 케 줄</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->


	
	<!-- check out section -->
	<div class="checkout-section mt-150" style="margin-bottom: 50px;">
		<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="card ">
							<div class="card-header">
								<h5 class="mb-0">
									<div>장소와 산책로</div>
								</h5>
							</div>

							<div class="card-body">
								<div class="billing-address-form row">
									<div class="col-12">
										<p>
											<input type="text" readonly id="startAddr" value="출발지: ${memberInfo.member_address}">
										</p>
										<p>
											<input type="text" style="width: 60%;" id="inputword"><a style="width: 40%" id="inputbtn" 
											class="cart-btn text-center" onclick="startMap()">주소 검색하기</a>
										</p>
										<p>
											<input type="text" readonly id="totalDistance" value="총거리: 도보: ">
										</p>
										<p>
										<div class="card">
											<div class="card-header text-center">
											클릭하여 경로를 지정하며 우클릭시 경로가 완료됩니다.</div>
											<div onclick="toggleOverlay()" class="card-body" id="map"	style="background-color: gray; width: 100%; height: 350px; 
											border-radius: 3px; padding-top: 2px;"></div>
										</div>
										</p>
										<p>
											<a class="cart-btn text-center" style="width: 100%" onclick="mapReset()">경로 초기화하기</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-6">
						<div class="card ">
							<div class="card-header">
								<h5 class="mb-0">
									<div>시간 및 인원과 모집 안내사항</div>
								</h5>
							</div>

							<div class="card-body">
								<div class="billing-address-form">
									<div class="accordion" id="accordionExample">
										<div class="single-accordion">
											<div id="headingOne" style="display: inline-block; width: 100%;">
												<div id="collapsebtn" data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													<div class="d-flex justify-content-between">
														<a class="cart-btn text-center" style="width: 100%">
														날짜 및 시간 선택하기</a>
													</div>
												</div>
											</div>
											
											<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
												<div class="d-flex justify-content-between" style="margin-top: 17px;">
													<div id="datepicker"></div>
													<div style="width: 100%; margin-left: 17px;">
													
														<p>
							        						<a style="width:100%" class="inputbtn text-center" id="clickST" onclick="toggleAmPm(this)">오전</a>
								        				</p>
								        				
									        			<p>
															<div class="d-flex justify-content-between">
									        					<a style="width:45%; padding-right:25px;" class="inputbtn text-center" id="wheelST">12시</a>
									        					<a style="width:45%; padding-right:25px;" class="inputbtn text-center" id="wheelST2">정각</a>
								        					</div>
								        				</p>
								        				
														<p>
															<div class="d-flex justify-content-between">
								        						<div style="width:45%;">
								        							<div id="weatherDiv" style="font-size:12px;">
								        								<div style="text-align:center; height:73%;" id="rainRateDiv" ></div>
								        								
								        								<div style="text-align:center;" id="tmpDiv"></div>
								        							</div>
								        							<a onclick="searchWeather()" class="inputbtn text-center" style="width:100%; 
								        							padding-top:5px; padding-bottom:5px; border-radius:0px 0px 3px 3px;">날씨검색</a>
								        						</div>
								        						<a onclick="checkDateData()" class="inputbtn" style="width:45%; height:111px; 
								        						display: flex; align-items:center; justify-content: center;">확인</a>
								        					</div>
								        				</p>
								        				
							        				</div> 
							        			</div>
						        				<a class="cart-btn" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true"
													aria-controls="collapseOne"	style="width:100%; padding:5px;"></a>
						    				</div>
						  				</div>
									</div>


						        	<p style="margin-top:17px;">
										<input id ="dateInformation"type="text" readonly style="outline:none;width:80%;  border-radius:3px 0px 0px 3px;" 
										value="출발일시: "><span id ="weatherMirror"style="background-repeat:no-repeat; background-size:50px; background-position: center; 
										padding-bottom:1px; float:right; width:20%; height:57px; border: 1px solid #ddd; 
										border-left:0px; border-radius:0px 3px 3px 0px;"></span>
									</p>
						        	<p id = "people">
										<input type="text" readonly style="outline:none;width:30%; border-radius:3px 0px 0px 3px" value="인원수(본인포함):"><a style="border-radius:0px" 
										class="inputbtnOff inputbtnOffAdd" onclick="inputbtnSTtoggle2(this)">3명</a><a style="border-radius:0px" 
										class="inputbtnOff inputbtnOffAdd" onclick="inputbtnSTtoggle2(this)">6명</a><a style="border-radius:0px" 
										class="inputbtnOff inputbtnOffAdd" onclick="inputbtnSTtoggle2(this)">14명</a><a style="border-radius:0px 3px 3px 0px;"
										class="inputbtnOff inputbtnOffAdd" onclick="inputbtnSTtoggle2(this)">20명</a>
									</p>
						        	<p>
						        		<div class="row">
						        			<div class= "col">
						        				<a id="dogS" class="selectoffSTY" style="width:100%; cursor:default;" >10kg미만<br>소형견</a>
						        			</div>
						        			<div class= "col">
						        				<a id="dogM" class="selectoffSTY" style="width:100%; cursor:default;" >10kg~25kg<br>중형견</a>
						        			</div>
						        			<div class= "col">
						        				<a id="dogL" class="selectoffSTY" style="width:100%; cursor:default;" >25kg초과<br>대형견</a>
						        			</div>
										</div>
									</p>
									<p>
									
										<input id="title" type="text" placeholder="제목">
									
									</p>
						        	<p>
										<textarea name="bill" id="bill" cols="30" rows="10"
											placeholder="모집 상세 안내 사항"></textarea>
									</p>
						        
						     </div>
						 </div>
					 </div>
				</div>
						
				<div class="col-lg-12 text-center" style="padding-top:50px;">
					<a onclick="sendFormData()" class="cart-btn" style="width:100%;">등록하기</a>
				</div>		
			</div>
	
		</div>
	</div>
	<!-- end check out section -->
	<div style="display:none">
		<form id ="finalForm" action="crewWalkWrite" method="POST">

			<!-- 작성자아이디 -->
			<input name="walk_writer" type="text">
			<!-- 제목 -->
			<input name="walk_title" type="text">
			<!-- 모집내용 -->
			<textarea name="walk_content"></textarea>
			<!-- 마감일시(모집일시) -->
			<input name="walk_time" type="text">
			<!-- 출발지주소 -->
			<input name="walk_startaddr" type="text">
			<!-- 지도좌표정보 -->
			<input name="walk_map" type="text">
			<!-- 날씨정보 -->
			<input name="walk_weatherinfo" type="text">
			<!-- 강아지무게코드 -->
			<input name="walk_bodytype" type="text">
			<!-- 인원수 -->
			<input name="walk_people" type="text">
		</form>
	</div>

	<%@ include file="../include/Footer.jsp" %>	
	
	<!-- jquery -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	
	
	<!-- 카카오맵 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b97f6706a8c69d9e1a92e4f095ca9d1c&libraries=services"></script>
	<!-- datePickerㄴ -->
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<!-- Swal.fire 창  -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

<script type="text/javascript">
var msg = '${msg}';
if(msg.length > 0){
	Swal.fire(msg);
}
</script>
<script type="text/javascript">


var formStartAddr = ""; //출발지: 인천 서구 경서동 777
var formDate = ""; //20220711/오전/1210
var formWeather = ""; //2/평균기온:24도/비올확률:40%
var formPeople = 0; //4
var formDogWeight = "----/----/----"; //0100/----/---- (소형견만모집, 기본값 소형견 0100 중형견1025 대형견2580)


//검색결과 올바를때 그리기를 시작할 수 있게 확인하기 위한 변수(맵 레벨)
var getLevel;

var cancleMapCenter; //점하나 찍고 그리기 취소시 돌아갈 좌표정보를 담을 전역변수입니다.
var totalMapCenter; //지도의 중앙을 맞추기 위한 전역변수입니다.(bounds는 레벨재조정되서 끊김.)
var beforeInputaddr=""; //회원의 지역+ 검색지역 두번돌려야해서 초기 주소만을 담을 전역변수입니다.  
var bounds; //선그리기완료시 사용할 위치정보오브잭트 입니다.
var boundCenterbase;//지역 초기화할시 돌아갈 위치정보 오브잭트입니다.

var boundCenter; //선그리기 초기화시 돌아갈 위치정보 오브잭트 입니다. 
var mapContainer = document.getElementById('map'), //지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.43894649565803, 126.67369422996464), //지도의 중심좌표
        level: 4, //지도의 확대 레벨
        disableDoubleClickZoom: true//더블클릭으로 줌기능(기본탑재) 끄기
    };

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
//사용자의 지도 드래그이동기능을 막습니다
map.setDraggable(false);
//사용자의 줌스크롤기능을 막습니다
map.setZoomable(false);

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places(); 

//초기화면에서 바로 회원의 정보중 주소의 시/군구 내용으로 검색을 합니다.

	//회원의 주소 앞 부분(시,구)를 저장합니다.
	var memberAddress = '${memberInfo.member_address}'; 
	beforeInputaddr = memberAddress.split(" ")[0];
	console.log("초기 주소입력불러오기:"+beforeInputaddr);
	
	ps.keywordSearch(beforeInputaddr, placesSearchCB); 

	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
    	if (status === kakao.maps.services.Status.OK) {
    		boundCenterbase = new kakao.maps.LatLngBounds();
    		for(var i = 0; i <data.length; i++){
    			boundCenterbase.extend(new kakao.maps.LatLng(data[i].y, data[i].x)); 
    		}
    		          
         	//검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
           		map.setBounds(boundCenterbase);
         	//setBounds시 지도 확대 레벨이 강제로 재조정되기때문에 지도 확대 레벨을 다시 조정해줍니다.
            	map.setLevel(5);
         	
            	totalMapCenter= map.getCenter();
            	$("#startAddr").val("출발지: "+beforeInputaddr);
    		}
    	}



// 키워드로 장소를 검색합니다
function startMap(){
	
	var inputaddr = $("#inputword").val();
	inputaddr = beforeInputaddr+" "+inputaddr;
	console.log("버튼눌러서 주소입력:"+inputaddr);
	
	ps.keywordSearch(inputaddr, placesSearchCB); 

	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
    	if (status === kakao.maps.services.Status.OK) {

        	// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
       	 	// LatLngBounds 객체에 좌표를 추가합니다
       	 	boundCenter = new kakao.maps.LatLngBounds();
			
        	
        	
        	//좌표데이터를 입력합니다.
        	for(var i =0; i<data.length; i++){
        		boundCenter.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        	}
     
         	//검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
           	map.setBounds(boundCenter);
         	//setBounds시 지도 확대 레벨이 강제로 재조정되기때문에 지도 확대 레벨을 다시 조정해줍니다.

         	getLevel = map.getLevel();
         	
         	if(getLevel<=3){
         	//나중에 점찍고 취소될때 돌아갈 좌표를 저장합니다.
            	cancleMapCenter = map.getCenter();
         		if(getLevel<3){
         		map.setLevel(3);
         		}
         	}else{//검색결과 지도 레벨 4부터는 재검색 하도록 합니다.
        	
        		Swal.fire("자세한 주소를 입력해주세요");
 
				map.setLevel(5);
				map.panTo(totalMapCenter);
        	}
         	
        	
        	      
    	}else{
    		Swal.fire("검색결과가 없습니다.");
    	} 
	}
} 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
//선그리기 스크립트 시작

var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다.
var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다.
var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다.
var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다.
var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

var row =[]; //배열 변수를 생성합니다.
var locData=""; //좌표정보를 String으로 담을 변수입니다.

//출발 마커 생성 전 이미지 옵션입니다.
var startSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다(카카오에서 쓰는 아이콘주소임)    
startSize = new kakao.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
startOption = { 
    offset: new kakao.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
};
//출발 마커 이미지를 생성합니다
var startImage = new kakao.maps.MarkerImage(startSrc, startSize, startOption);

//출발지 마커를 정의합니다.
var startMarker = new kakao.maps.Marker({
    draggable: false, // 출발 마커가 드래그 x
    image: startImage // 출발 마커이미지를 설정합니다
});

	//도착 마커 생성 전 이미지 옵션입니다.
	var arriveSrc  = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png', // 출발 마커이미지의 주소입니다(카카오에서 쓰는 아이콘주소임)    
	arriveSize = new kakao.maps.Size(50, 45), // 도착 마커이미지의 크기입니다 
	arriveOption  = { 
	    offset: new kakao.maps.Point(15, 43) // 도착 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	};
	//도착 마커 이미지를 생성합니다
	var arriveImage = new kakao.maps.MarkerImage(arriveSrc, arriveSize, arriveOption);

	//도착 마커를 정의합니다.
	var arriveMarker = new kakao.maps.Marker({
	    draggable: false, // 도착 마커가 드래그 x
	    image: arriveImage // 도착 마커이미지를 설정합니다
	});
	
	//클릭할때 덮어써서 기억하는 좌표를 생성합니다.
	var clickPosition;
// 지도에 클릭 이벤트를 등록합니다
// 지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	 console.log(getLevel);
	console.log(clickLine);
	console.log(drawingFlag);
 if(getLevel ==null || getLevel> 3){
	  Swal.fire("출발할 장소를 검색해주세요");
  }else{
	  if(clickLine == null && drawingFlag==false || clickLine!=null && drawingFlag==true ){
	    // 마우스로 클릭한 위치입니다 
	    clickPosition = mouseEvent.latLng;
	    
	    console.log(clickPosition);
	    locData = JSON.stringify(clickPosition);  
	    
	    map.panTo(clickPosition);
	    
	    
	    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
	    if (!drawingFlag) {
	    	startMarker.setPosition(clickPosition);
	    	startMarker.setMap(map);
	    	
	    	
	    	//배열변수를 초기화합니다.
	    	row=[];   
	    	//첫번째 좌표를 배열에 입력합니다.      
	       	row.push(locData);

	        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
	        drawingFlag = true;
	        
	        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
	        deleteClickLine();
	        
	        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
	        deleteDistnce();

	        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
	        deleteCircleDot();
	    
	        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
	        clickLine = new kakao.maps.Polyline({
	            map: map, // 선을 표시할 지도입니다 
	            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
	            strokeWeight: 3, // 선의 두께입니다 
	            strokeColor: '#db4040', // 선의 색깔입니다
	            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            strokeStyle: 'solid' // 선의 스타일입니다
	        });
	        
	        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
	        moveLine = new kakao.maps.Polyline({
	            strokeWeight: 3, // 선의 두께입니다 
	            strokeColor: '#db4040', // 선의 색깔입니다
	            strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            strokeStyle: 'solid' // 선의 스타일입니다    
	        });
	    
	        // 클릭한 지점에 대한 정보를 지도에 표시합니다
	        displayCircleDot(clickPosition, 0);
			
	        //지도이동할 범위 변수 초기화 후 첫번째 좌표를 입력합니다.
	        bounds =new kakao.maps.LatLngBounds();
	        bounds.extend(clickPosition);
	            
	        //처음 클릭한 좌표를 주소로 검색해 출력합니다. 
	        searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	            if (status === kakao.maps.services.Status.OK) {
	            	
	                var detailAddr = !!result[0].road_address ? result[0].road_address.address_name : '';
	                if(detailAddr.length == 0){
	                detailAddr =result[0].address.address_name };
	             
					var nameSplit= detailAddr.split(" ");
					detailAddr= "";
					for(var i = 2; i<nameSplit.length; i++){
						detailAddr+=nameSplit[i];
					}
	                // 태그에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	                
					//정해진 주소 출력
	         		$("#startAddr").val("출발지: "+beforeInputaddr+" "+detailAddr);
	         		formStartAddr =  "출발지: "+beforeInputaddr+" "+detailAddr;
	            }   
	        });
	          
	    } else { // 선이 그려지고 있는 상태이면
	    	var distance = Math.round(clickLine.getLength());
	    	
	    	//두번째이상 추가되는 좌표를 차례로 범위변수에 입력합니다.
	    	bounds.extend(clickPosition);
			//두번째이상 추가되는 좌표를 차례로 배열에 입력합니다.
			row.push(locData);
	    
	        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
	        var path = clickLine.getPath();

	        // 좌표 배열에 클릭한 위치를 추가합니다
	        path.push(clickPosition);
	        
	        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
	        clickLine.setPath(path);

	        var distance = Math.round(clickLine.getLength());
	        displayCircleDot(clickPosition, distance);
	    	
	    }
	  }
	 } 
});
 
 
//상세주소 검색 함수
function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

// 지도에 마우스무브 이벤트를 등록합니다
// 선을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 선의 위치를 동적으로 보여주도록 합니다
kakao.maps.event.addListener(map, 'mousemove', function (mouseEvent) {

    // 지도 마우스무브 이벤트가 발생했는데 선을 그리고있는 상태이면
    if (drawingFlag){
        
        // 마우스 커서의 현재 위치를 얻어옵니다 
        var mousePosition = mouseEvent.latLng; 

        // 마우스 클릭으로 그려진 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();
        
        // 마우스 클릭으로 그려진 마지막 좌표와 마우스 커서 위치의 좌표로 선을 표시합니다
        var movepath = [path[path.length-1], mousePosition];
        moveLine.setPath(movepath);
        moveLine.setMap(map);
        
        var distance = Math.round(clickLine.getLength() + moveLine.getLength()), // 선의 총 거리를 계산합니다
            content = '<div class="dotOverlay distanceInfo">총거리 <span class="number">' + distance + '</span>m</div>'; // 커스텀오버레이에 추가될 내용입니다
        
        // 거리정보를 지도에 표시합니다
        showDistance(content, mousePosition);   
    }             
});                 

// 지도에 마우스 오른쪽 클릭 이벤트를 등록합니다
// 선을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면 선 그리기를 종료합니다
kakao.maps.event.addListener(map, 'rightclick', function (mouseEvent) {

    // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
    if (drawingFlag) {
        
        // 마우스무브로 그려진 선은 지도에서 제거합니다
        moveLine.setMap(null);
        moveLine = null;  
        distanceOverlay.setMap(null);
        // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
        var path = clickLine.getPath();
        
        // 선을 구성하는 좌표의 개수가 2개 이상이면
        if (path.length > 1) {
  
	        // 좌표 배열에 클릭한 위치를 추가합니다
	        path.push(clickPosition);	       
	        var distance = Math.round(clickLine.getLength());
	        displayCircleDot(clickPosition, distance);
	        
        	//지도에 도착마커를 생성합니다.
	    	arriveMarker.setPosition(clickPosition);
	    	arriveMarker.setMap(map);
            // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
            if (dots[dots.length-1].distance) {
                dots[dots.length-1].distance.setMap(null);
                dots[dots.length-1].distance = null;    
            }

            var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
                content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
                
 /*            // 그려진 선의 거리정보를 지도에 표시합니다
            showDistance(content, path[path.length-1]); */
                
			//입력됬던 그동안의 좌표정보를 가지고 범위를 지정합니다. 레벨은 자동강제조정됩니다.                
            map.setBounds(bounds);

                      
            //최종적으로 좌표배열을 확인해봅니다. 여기있는 좌표는 등록할때 같이 넘어가는 지도 좌표 정보가 됩니다.
        	console.log(row);
        	
        	 
        } else {
        	
            // 선을 구성하는 좌표의 개수가 1개 이하이면 
            // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
            deleteClickLine();
            deleteCircleDot(); 
            deleteDistnce();
            //마커를 지웁니다
            startMarker.setMap(null);
            //기존에 등록했던 좌표를 초기화합니다.
            row=[];  
            //검색한 직후 좌표로 돌아갑니다.
            map.panTo(cancleMapCenter);
            
          //정해진 주소 출력
     		$("#startAddr").val("출발지: "+beforeInputaddr);
          //서버로 전송할 주소 전역변수 초기화
     		formStartAddr = "";
        }
        
        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        drawingFlag = false;          
    }  
});    

//클릭으로 그려진 선을 지도에서 제거하는 함수입니다
function deleteClickLine() {
 if (clickLine) {
     clickLine.setMap(null);    
     clickLine = null;        
 }
}

//마우스 드래그로 그려지고 있는 선의 총거리 정보를 표시하고
//마우스 오른쪽 클릭으로 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 생성하고 지도에 표시하는 함수입니다
function showDistance(content, position) {
 
 if (distanceOverlay) { // 커스텀오버레이가 생성된 상태이면
     
     // 커스텀 오버레이의 위치와 표시할 내용을 설정합니다
     distanceOverlay.setPosition(position);
     distanceOverlay.setContent(content);
     
 } else { // 커스텀 오버레이가 생성되지 않은 상태이면
     
     // 커스텀 오버레이를 생성하고 지도에 표시합니다
     distanceOverlay = new kakao.maps.CustomOverlay({
         map: map, // 커스텀오버레이를 표시할 지도입니다
         content: content,  // 커스텀오버레이에 표시할 내용입니다
         position: position, // 커스텀오버레이를 표시할 위치입니다.
         xAnchor: 0,
         yAnchor: 0,
         zIndex: 3  
     });      
 }
} 

//그려지고 있는 선의 총거리 정보와 
//선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 삭제하는 함수입니다
function deleteDistnce () {
 if (distanceOverlay) {
     distanceOverlay.setMap(null);
     distanceOverlay = null;
 }
}

//선이 그려지고 있는 상태일 때 지도를 클릭하면 호출하여 
//클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 표출하는 함수입니다
function displayCircleDot(position, distance) {

 // 클릭 지점을 표시할 빨간 동그라미 커스텀오버레이를 생성합니다
 var circleOverlay = new kakao.maps.CustomOverlay({
     content: '<span class="dot"></span>',
     position: position,
     zIndex: 1
 });

 // 지도에 표시합니다
 circleOverlay.setMap(map);

 if (distance > 0) {
     // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
     var distanceOverlay = new kakao.maps.CustomOverlay({
         content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
         position: position,
         yAnchor: 1,
         zIndex: 2
     });

     // 지도에 표시합니다
     distanceOverlay.setMap(map);
 }

 // 배열에 추가합니다
 dots.push({circle:circleOverlay, distance: distanceOverlay});
}

//클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 지도에서 모두 제거하는 함수입니다
function deleteCircleDot() {
 var i;

 for ( i = 0; i < dots.length; i++ ){
     if (dots[i].circle) { 
         dots[i].circle.setMap(null);
     }

     if (dots[i].distance) {
         dots[i].distance.setMap(null);
     }
 }

 dots = [];
}

//우클릭으로 경로 완성 후 클릭하면 거리정보가 토글됩니다.
var toggleSwitch=true;
function toggleOverlay(){
	if (clickLine != null && drawingFlag==false){
		if (toggleSwitch==true){
			
			for (var i = 0; i < dots.length; i++ ){
				if (dots[i].distance) {
					 dots[i].distance.setMap(null); 
				}
			}
			toggleSwitch=false;
			
		}else if(toggleSwitch==false){
			for (var i = 0; i < dots.length; i++ ){
				if (dots[i].distance) {
					dots[i].distance.setMap(map);
				}
			}
			toggleSwitch=true;
		}
		
	}
}

//마우스 우클릭 하여 선 그리기가 종료됐을 때 호출하여 
//그려진 선의 총거리 정보와 거리에 대한 도보, 자전거 시간을 계산하여
//HTML Content를 만들어 리턴하는 함수입니다
function getTimeHTML(distance) {

 // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
 var walkkTime = distance / 67 | 0;
 var walkHour = '';
 var walkMin = '';

 //input에 출력할 정보를 담을 변수를 설정합니다.
 var totalwalkHour="";
 var totalwalkMin="";
 
 // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
 if (walkkTime > 60) {
     walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 ';
     totalwalkHour = Math.floor(walkkTime / 60)+"시간";
 }
 walkMin = '<span class="number">' + walkkTime % 60 + '</span>분';
 totalwalkMin =walkkTime % 60+"분";

 // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
 var content = '<ul class="dotOverlay distanceInfo">';
 content += '    <li>';
 content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
 content += '    </li>';
 content += '    <li>';
 content += '        <span class="label">도보</span>' + walkHour + walkMin;
 content += '    </li>';
 content += '</ul>'

 
 //input태그에 정보를 출력합니다.
 $("#totalDistance").val("총거리: "+distance+"m, 도보: "+totalwalkHour + totalwalkMin);
 
 return content;
}

//지도 경로 초기화하기
function mapReset(){
	if (dots.length>0){
	
	//선지우기
    deleteClickLine();
	//점지우기
	if(dots!=null){
    	deleteCircleDot();
	}	
	//오버레이지우기
	if (distanceOverlay) {
	   distanceOverlay.setMap(null);
	   distanceOverlay = null;
	}
	//그려지고있는 도중이면 반투명선 지우기
	if(moveLine!=null){
	moveLine.setMap(null);
	}
	//그리기 상태값 끄기
    drawingFlag = false; 
    //지도 줌레벨조정
    map.setLevel(3);
  	//검색된 장소 위치를 기준으로 재설정합니다
	map.panTo(cancleMapCenter);
  	//마커 지우기
  	startMarker.setMap(null);
  	arriveMarker.setMap(null);
	//정해진 주소 출력
	$("#startAddr").val("출발지: "+beforeInputaddr);
	//서버로 전송할 전역변수 초기화
	formStartAddr = "";
	 //input태그에 정보를 초기화합니다.
	 $("#totalDistance").val("총거리: 도보: ");
    row=[];  
	}
}



</script>
<!-- 카카오맵 api 관련 스크립트-->

<!-- 데이트피커 관련 스크립트 -->
<script>



$.datepicker.setDefaults({
    dateFormat: 'yy/mm/dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'

});

	$( "#datepicker" ).datepicker({
		minDate: 1,
		maxDate:"+7",
		onSelect: function () {
			$("#weatherDiv").css("background-image","")
			$("#tmpDiv").text("");
			$("#rainRateDiv").text("");
			$("#weatherMirror").css("background-image","");
			formDate = "";
			formWeather="";
        }
	});



</script>

<!-- 클릭시 실행되는 스크립트들 -->
<script>
//요소에 휠을 하면 실행되는 스크립트(시간 선택)
 		$('#wheelST').bind('wheel', function(event) {
		$("#weatherDiv").css("background-image","")
		$("#tmpDiv").text("");
		$("#rainRateDiv").text("");
		$("#weatherMirror").css("background-image","");
		formDate = "";
		formWeather="";
	 event.preventDefault();
	 event.stopPropagation();
	
	console.log(event.originalEvent.deltaY);
 	var Num = Number($('#wheelST').text().replace("시",""));
	if(Num == 12){
		Num =0;
	}
	if(event.originalEvent.deltaY >0){
		if(Num > 0){	
			Num += -1;
		}
	}else{
		if(Num < 11){
			Num += 1;
		}
	}
	if(Num == 0){
		Num=12;
	}
	$('#wheelST').text(Num+"시");
	
}); 
 
//요소에 휠을 하면 실행되는 스크립트(분 선택)
 	$('#wheelST2').bind('wheel', function(event) {
 		
		$("#weatherDiv").css("background-image","")
		$("#tmpDiv").text("");
		$("#rainRateDiv").text("");
		$("#weatherMirror").css("background-image","");
		formDate = "";
		formWeather="";
		
	 event.preventDefault();
	 event.stopPropagation();
	
	console.log(event.originalEvent.deltaY);
	
	var Num = Number($('#wheelST2').text().replace("분",""));
	
	if ($('#wheelST2').text()=="정각"){
		Num = 0;
	}

	if(event.originalEvent.deltaY >0){
		if(Num > 0){	
			Num += -10;
			if(Num == 0){
				$('#wheelST2').text("정각");
			}else{
				$('#wheelST2').text(Num+"분");
			}
		}
	}else{
		if(Num < 50){
			Num += 10;
			$('#wheelST2').text(Num+"분");
		}
	}
	
	
	
}); 
//오전,오후 선택
 function toggleAmPm(aObj){
	
		$("#weatherDiv").css("background-image","")
		$("#tmpDiv").text("");
		$("#rainRateDiv").text("");
		$("#weatherMirror").css("background-image","");
		formDate = "";
		formWeather="";
		
	 var state = $(aObj).text();
	 if(state == '오전'){
		 $(aObj).text("오후");
		 
	 }else{
		 $(aObj).text("오전");
	 }
 }

//아래 ajax에서 가져오는 결과인데 바로 전역변수에 넣으면 입력전에도 등록이 되어버려서 걸쳐담아야 함. 
var weatherResult ="";

function searchWeather(){
	
	//날짜를 사용하기 쉽게 변환합니다:: / 삭제
	var dateStr = $("#datepicker").val().replaceAll("/","");
	
	//시간을 사용하기 쉽게 변환합니다. 24시양식으로 변환
	var hour = Number($("#wheelST").text().replace("시",""));
	if($("#clickST").text()=="오후"){
		hour += 12;
	}
	if (hour==12||hour==24){
		hour -= 12;
	}
	var hourStr="";
	if(hour<10){
		hourStr = "0"+hour;
	}else{
		hourStr = ""+hour;
	}
	console.log("hourStr:"+hourStr);
	
	//분을 사용하기 쉽게 변환합니다.
	var minStr = $("#wheelST2").text();

	if(minStr == "정각"){
		minStr="00";
	}else{
		minStr = $("#wheelST2").text().replace("분","")
	}
	console.log("minStr:"+minStr);
	var timeStr = hourStr+minStr;
	
	$.ajax({
		type : "POST",
		url : "walkSearchWeather_ajax",		
		data : {"address": beforeInputaddr,"date":dateStr,"time":timeStr},		
		async: false,
		success : function(result){
			console.log(result);
			var skyState = result.split("/")[0];
			var tmp = result.split("/")[1];
			var rainRate = result.split("/")[2];
			
			//날씨정보를 변수에 저장합니다.
			weatherResult = result;
			
			//날씨정보를 바탕으로 화면에 아이콘과 글자들을 뿌려줍니다.
			if(skyState == 0){
				$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/clear.png')")
				$("#tmpDiv").text(tmp);
				$("#rainRateDiv").text(" ");
			}else if(skyState == 1){
				$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/cloudy.png')")
				$("#tmpDiv").text(tmp);
				$("#rainRateDiv").text(" ");
			}else if (skyState == 2){
				$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/blackcloudy.png')")
				$("#tmpDiv").text(tmp);
				$("#rainRateDiv").text(rainRate);
			}else if(skyState == 3){
				$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/rain.png')")				
				$("#tmpDiv").text(tmp);
				$("#rainRateDiv").text(" ");
			}else if(skyState == 4){
				$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/sleet.png')")
				$("#tmpDiv").text(tmp);
				$("#rainRateDiv").text(" ");
			}else if(skyState == 5){
				$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/snow.png')")
				$("#tmpDiv").text(tmp);
				$("#rainRateDiv").text(" ");
			} 
			
		}
	});
	
	
}
//강아지 몸무게 전역변수 선언
var fdw1="----";
var fdw2="----";
var fdw3="----";


var memberHaveDogWeight = '${memberInfo.dogsWeightCode}';
console.log("회원의 강아지들 무게정보:"+memberHaveDogWeight);
var mHDW_S = memberHaveDogWeight.split("/")[0];
var mHDW_M = memberHaveDogWeight.split("/")[1];
var mHDW_L = memberHaveDogWeight.split("/")[2];

if(mHDW_S=="0010"){
	$("#dogS").toggleClass("selectoffSTY").toggleClass("selectSTY");
	fdw1="0010";
}
if(mHDW_M=="1025"){
	$("#dogM").toggleClass("selectoffSTY").toggleClass("selectSTY");
	fdw2="1025";
}
if(mHDW_L=="2580"){
	$("#dogL").toggleClass("selectoffSTY").toggleClass("selectSTY");
	fdw3="2580";
}


function inputbtnSTtoggle2(aObj){
	//인원수를 서버에 보내기 위해 전역변수에 숫자를 입력합니다.
	formPeople = $(aObj).text();
	//인원수 버튼을 클릭할때 하나만 색깔이 달라지도록 하는 스크립트입니다.
	for(var i =0; i <4; i++)
		 if($("#people a").eq(i).hasClass("inputbtn")){
			$("#people a").eq(i).toggleClass("inputbtnOff").toggleClass("inputbtnOffAdd").toggleClass("inputbtn");
		} 	
	$(aObj).toggleClass("inputbtnOff").toggleClass("inputbtnOffAdd").toggleClass("inputbtn");	
}

/*날짜 확인 버튼 누르면 출발일시 input태그에 입력됩니다.*/
 function checkDateData(){
	//날짜를 조회하지 않으면 넘어가지 못하게하고 알람을 울립니다.
	if($("#tmpDiv").text() == ""){
		Swal.fire("날씨를 검색해주세요");
	}else{
		
	//datepicker에서 년월일 가져오기
	var dateStr = $("#datepicker").val().replace("/","년 ").replace("/","월 ")+"일 ";
	var amPmStr = $("#clickST").text()+"";
	var hourStr = $("#wheelST").text()+"";
	var minStr = $("#wheelST2").text()+"";
	console.log(dateStr+" "+amPmStr+" "+hourStr+" "+minStr);
	
	$("#dateInformation").val("출발일시:  "+dateStr+" "+amPmStr+" "+hourStr+" "+minStr);
	
	var bgUrl = $("#weatherDiv").css("background-image")+"";
	
	$("#weatherMirror").css("background-image",bgUrl);
	$("#collapsebtn").click();
	
	
	var formdateStr = $("#datepicker").val().replaceAll("/","");
	var hourNum = Number(hourStr.replace("시",""));
	var minNum= Number(minStr.replace("분",""));
	if (minStr=="정각"){
		minNum="00";
	}
	
	if(hourNum==12){
		hourNum= 0;
	}
	if(amPmStr=="오전"){
		if(hourNum<10){
			hourNum="0"+hourNum;
		}		
	}else if(amPmStr=="오후"){
		hourNum += 12;
	}
	
	formDate= formdateStr+"/"+hourNum+minNum;
	formWeather=weatherResult;
	}
	
}

function sendFormData(){
	var finalcheck = true;	
	
	//작성자아이디체크
	var loginId= '${sessionScope.loginId}';
	if(loginId.length == 0){
		finalcheck = false;
		Swal.fire("로그인 후 이용가능합니다.");
		return null;
	}
	//제목체크
	var formTitle = $("#title").val();
	if(formTitle.length < 2){
		finalcheck = false;
		Swal.fire("제목을 2글자이상 작성해주세요");
		return null;
	}
	//내용체크, 글자수만 확인하고 인풋태그 채로 넘깁니다. (최소 5글자 이상써야 전송됩니다.). -초기화 완벽
	//탬플릿 제작자가 해당 textarea스타일을 아이디(bill)로 지정해놔서 그대로 사용합니다.
	var contents = $("#bill").val();
	if(contents.length < 5){
		finalcheck = false;
		Swal.fire("내용을 5글자이상 작성해주세요");
		return null;
	}
	//모집일시체크-안대도됨. 항상 값이 선택되어 보여지게 되어있음.
	

	//지도좌표정보체크
	if(row.length<2){
		finalcheck = false;
		Swal.fire("경로를 완성해주세요: 경로좌표 부족");
		return null;
	}
	//지도 그리는 중 체크 
	if(drawingFlag == true){
		finalcheck = false;
		Swal.fire("경로를 완성해주세요: 지도 우클릭 미완료");
		return null;
	}
	//날씨정보체크
	if(formWeather.lenght ==0){
		finalcheck = false;
		Swal.fire("날씨를 검색해주세요");
		return null;
	}
	//강아지무게코드체크
	formDogWeight = fdw1+"/"+fdw2+"/"+fdw3;
	if(formDogWeight == "----/----/----"){
		finalcheck = false;
		Swal.fire("회원정보에 등록된 강아지가 없습니다. 강아지를 등록 후 이용해주세요.");
		return null;
	}
	//모집인원수 체크
	if(formPeople==0){
		finalcheck = false;
		Swal.fire("인원수를 선택해주세요");
		return null;
	}

	console.log("보낼 준비된 정보들~~~~");
	//작성자아이디 form에 넣기,
	$("input[name=walk_writer]").val('${sessionScope.loginId}');
	console.log("작성자:"+'${sessionScope.loginId}');
	
	//제목 form에 넣기,
	$("input[name=walk_title]").val($("#title").val());
	console.log("제목:"+$("#title").val());
	
	//내용 form에 넣기,
	$("textarea[name=walk_content]").text($("#bill").val());
	console.log("내용:"+$("#bill").val());
	
	//모집일시체크 form에 넣기,
	$("input[name=walk_time]").val(formDate);
	console.log("모집일시:"+formDate);
		
	//출발주소지 form에 넣기,
	$("input[name=walk_startaddr]").val(formStartAddr);
	console.log("출발지:"+formStartAddr);
		
	//지도좌표정보 form에 넣기,
	var rowStr =  JSON.stringify(row);
	$("input[name=walk_map]").val(rowStr);
	console.log("지도좌표정보:"+rowStr);
	
	//날씨정보 form에 넣기,
	$("input[name=walk_weatherinfo]").val(formWeather);
	console.log("날씨정보:"+formWeather);
	
	//강아지무게코드 form에 넣기.
	$("input[name=walk_bodytype]").val(formDogWeight);
	console.log("강아지 무게정보:"+formDogWeight);
	
	
	//인원수 form에 넣기
	$("input[name=walk_people]").val(Number(formPeople.replace("명","")));
	console.log("강아지 무게정보:"+Number(formPeople.replace("명","")));
	
	
	if (finalcheck == true){
		$("#finalForm").submit();
	}
}

</script>



</html>