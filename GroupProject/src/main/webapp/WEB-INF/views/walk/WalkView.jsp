<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.Date" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>산책모집내용</title>

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
     outline:none;
}

select{
width:100%;
}

textarea{

width: 100%;
border-radius: 3px;
border: 1px solid #ddd;
padding: 15px;
height: 120px;
resize: none;
outline:none;
}

.spanSTYL{
padding-top:2px;
padding-bottom:2px;
float:right; 
width:23.333%; 
height:58px; 
border: 1px solid #ddd; 
border-left:0px;
border-radius:0px 0px 0px 0px;"
}

.selectSpanSty{
background-color:#F28123;
border-top:1px solid #F28123;
border-top:1px solid #F28123;
}
.nonSelectSpanSty{
color:#ddd;
}
#weatherDiv{
border-right: 1px solid #ddd;
border-top: 1px solid #ddd;
border-bottom: 1px solid #ddd;
border-radius:0px 3px 3px 0px;

background-position: center;
background-repeat : no-repeat;
background-size:40px; 
}
.hideBtn{
display:none;
}
</style>
</head>
<script type="text/javascript">

var memberInfo_first='${walkBoardInfo.walk_mid}';
var memberRow= memberInfo_first.split("/");
var memberCheck=0;
var loginId_first= '${sessionScope.loginId}';
for(var i =0; i<memberRow.length; i++){
	if (memberRow[i]==loginId_first){
		memberCheck=1;		
	}
	console.log(loginId_first+"와"+memberRow[i]);
}

</script>
<body>

	<%@ include file="/WEB-INF/views/include/Topbar.jsp" %>
	

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Walk</p>
						<h1>모 집 내 용</h1>
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
					<div class="col-lg-12">
						<div class="card ">
						
							<!--  -------------- -->
						
							<div class="card-header">
								<h5 class="mb-0" style="display:inline-block;">
									<div>산책일정</div>
								</h5>
								<div style="display:inline-block; color:rgb(0,0,0,0.5);">작성일시: ${walkBoardInfo.walk_date}, 조회수: ${walkBoardInfo.walk_hits}</div>
							</div>
							<!--  -------------- -->
							<div class="card-body" style="padding-bottom:0px;">
								<div class="billing-address-form row">
									<div class="col-lg-6" style="margin-bottom:15.7px;">
										<p>
											<input type="text" readonly id="startAddr" value="${walkBoardInfo.walk_startaddr}">
										</p>

										
										<p>
										<div class="card">
											<div id="totalDistance" class="card-header text-center">
											총거리 도보시간 나오는곳</div>
											<div class="card-body" id="map"	style="background-color: gray; width: 100%; height: 350px; 
											border-radius: 3px; padding-top: 2px;"></div>
										</div>
										</p>
										
									</div>
									
									<div class="col-lg-6" >
									
										<div class="d-flex">
										<div style="display: inline-block; margin-bottom:15.7px; width:75%;">
											<input id ="dateInformation"type="text" readonly style="margin-top:0px; height:57px; outline:none; width:100%;  border-radius:3px 0px 0px 3px;" 
											value="출발일시: ">
										</div>
										<div id ="weatherDiv" style=" position:relative; width:25%; height:57px;display: inline-block;">
											<div id="rainRateDiv" style="position:absolute; font-size:12px; left:25px; top:0px;"></div>
											<div id="tmpDiv" style="position:absolute; font-size:12px; left:35px; bottom:0px;"></div>
										</div>
										</div>
										
										
										<p style="text-align: center; ">
										
											<input type="text" readonly style="float:left; outline:none; width:26%; text-align:center; border-radius:3px ;"  value="모집 인원: ${walkBoardInfo.walk_people}명">
											<span id="dogWL" class="spanSTYL" style="margin-bottom:15.7px; border-radius:0px 3px 3px 0px;">25kg~초과<br>대형견</span><span id="dogWM" class="spanSTYL">10kg~25kg<br>중형견</span><span style="border-radius:3px 0px 0px 3px;  border-left:1px solid #ddd;"class="spanSTYL" id="dogWS">~10kg미만<br>소형견</span>
										</p>
										
										<p>	
											<input type="text" readonly id="titleInputTag" value="제목: ${walkBoardInfo.walk_title}">
										
										</p>
										<p >
										<textarea id="contentTextarea" style="height:247px; " readonly>${walkBoardInfo.walk_content}</textarea>
										</p>
										
										
										<!-- 날짜변수선언 -->
										<c:set var = "today" value = "<%=new Date() %>"> </c:set>
										<!-- String데이터를 날짜변수속성으로 바꾼다 -->
										<fmt:parseDate value = "${walkBoardInfo.walk_time}" var = "walkTime" pattern="yyyy-MM-dd HH:mm:ss"></fmt:parseDate>
										<c:set var="arr01" value="${fn:split(walkBoardInfo.walk_mid, '/') }" ></c:set>
										<c:set var="ifmember" value=""></c:set>
										<c:forEach items="${arr01}" var="memberid">		
										<c:if test="${memberid == sessionScope.loginId}">
										 	<c:set var="ifmember" value="in"></c:set>
										</c:if>	
										</c:forEach>

										<c:choose>
											<c:when test="${today > walkTime}"> 
												<div style="float:right;">
													<a  class="cart-btn" style="width:120px; text-align:center;" onclick="">후기 작성하기</a>
												</div>
											</c:when>
											
											<c:otherwise>
											
												<c:choose>
													<c:when test="${walkBoardInfo.walk_writer == sessionScope.loginId}">
														<div style="float:right;">
															<a  class="cart-btn" style="width:120px; text-align:center;" onclick="walkViewModifyPage()">수정</a>
															<a class="cart-btn" style="width:120px; text-align:center; margin-left:15.7px;" onclick="walkDelState()">삭제</a>
														</div>
													</c:when>
													
													<c:otherwise>

															<c:choose>
															
																<c:when test="${ifmember == ''}">
																	<div style="float:right;">
																		<a  class="cart-btn" style="width:120px; text-align:center;" onclick="walkViewJoin()">참가하기</a>
																	</div>
																</c:when>
																
																<c:when test="${ifmember == 'in'}">
																	<div style="float:right;">
																		<a  class="cart-btn" style="width:120px; text-align:center;" onclick="walkViewLeave()">탈퇴하기</a>
																	</div>
																</c:when>
															
															</c:choose>
															
													</c:otherwise>
													
												</c:choose>
											</c:otherwise>
											
										</c:choose>
										
									</div>
								</div>
							</div>
						
							<!--  -------------- -->
							<div class="card-header" style="border-top: 1px solid #ddd; ">
								<h5 class="mb-0" style="display:inline-block;">
									<div>참여중인 아이디: </div>
								</h5>
								<div id="joinMemberInfo" style="display:inline-block;"></div>
							</div>
							<!--  -------------- -->
							<div class="card-body" style="padding:35px;">
								
								
								<div style="padding-bottom:10px;">
								<textarea id="recontent"></textarea>
								</div>
								<div style="float:right;">
								<a class="cart-btn" style="width:110px; text-align:center;" onclick="recommentSubmit()">댓글작성</a>
								</div>
							
								<br style="clear:both;"><hr>
								<br>
								
									<br><br>
									
									<div id="commentDiv">
									
										
										
										
									</div>	
									
									
							</div>
							<!--  -------------- -->
						</div>
					</div>
			</div>
		</div>
	</div>
	<!-- end check out section -->
	
	



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
	<!-- datePicker -->
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	<!-- Swal.fire 창  -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
<script>


var msg = '${msg}';
if(msg.length > 0){
	Swal.fire(msg);
}

</script>
<script type="text/javascript">



$(document).ready(function(){
	recommentView();
});



function recommentSubmit(){
	var content = $("#recontent").val();
	if(content.length ==0){
		Swal.fire("내용을 입력해주세요");
		return false;
	}
	var loginId = '${sessionScope.loginId}';
	var boardC = '${walkBoardInfo.walk_code}';
	console.log("넘어가는 데이터"+content+loginId+boardC);
	$.ajax({
		type : "get",
		url : "walkRecomment_ajax",
		data : { "recomment_writer":loginId,"recomment_boardcode" : boardC ,"recomment_content":content},
		async : false,
		success : function (result) {
			if(result=="OK"){
				console.log("등록이 완료되었습니다");
				recommentView();
				 $("#recontent").val("");
			}
		}
	});
}



function recommentView(){

	var loginId = '${sessionScope.loginId}';
	var output="";
	var boardC = '${walkBoardInfo.walk_code}';
	$.ajax({
		type : "get",
		url : "walkRecommentView_ajax",
		data : { "boardCode" : boardC },
		async : false,
		dataType : "json",
		success : function (result) {
						console.log("댓글 출력 요청 결과:");
						console.log(result[0]);
						
			for(var i =0; i< result.length ; i++){
			output += "<div class=\"row\">"
			+"<div class=\"col-2 d-flex align-items-start justify-content-center\" >"
			+"<div style=\"margin-top:20px; background-image: url('${pageContext.request.contextPath}/resources/fileUpload/";
				
				if(result[i].member_profile == null){
					output+= "basic.jpeg";
				} else{
					output+= ""+result[i].member_profile+"";	
				}
				
			output+="'); background-position: center; background-size:cover;  width:60px; height:60px; border-radius:50%;\"></div></div>"
			+"<div class=\"col-10\" style=\"padding-left:0px;\"><div class=\"row\"><div class=\"col-12\">"
			+"<div style=\"float:left; padding:10px;\"><h6>"+result[i].recomment_writer+"</h6></div>"
			+"<div style=\"float:left; padding:10px;\">"+result[i].recomment_date+"</div>";
			if(loginId != result[i].recomment_writer){
				output+="<div class=\"d-flex align-items-start\"style=\"float:left; padding:10px;\" onclick=\"insertReport('"+result[i].recomment_code+"')\">"
				+"<img src=\"${pageContext.request.contextPath}/resources/fileUpload/siren.png\" style=\"width:12px; height:20px; padding-bottom:6px;\">신고</div>";
			}
			
				
			output+="</div><div class=\"col-12\"><textarea id=\"recommentDiv"+i+"\" readonly style=\"border:0px; padding:10px; float:left;\">"+result[i].recomment_content+"</textarea>";
			
				if(loginId==result[i].recomment_writer){
				output +="<div id=\"delBtn"+i+"\"style=\"float:right; padding:10px;\" onclick=\"deleteOrder("+i+")\">삭제</div>"
					+"<div id=\"modiBtn"+i+"\"style=\"float:right; padding:10px;\" onclick=\"modifyOrder("+i+")\">수정</div>"
					+"<div class=\"hideBtn\"id=\"subBtn"+i+"\"style=\"float:right; padding:10px;\" onclick=\"submitRecomment('"+result[i].recomment_code+"',"+i+")\">확인</div>"
					+"<div class=\"hideBtn\"id=\"cancleBtn"+i+"\"style=\"float:right; padding:10px;\" onclick=\"cancleOrder("+i+")\">취소</div>"
						
				}
				output+="</div></div></div></div><hr>";
			}
			 
			$("#commentDiv").html(output);
		}
	});
}


var modiOrdel="";

function deleteOrder(num){
	$("#delBtn"+num).toggleClass("hideBtn");
	$("#modiBtn"+num).toggleClass("hideBtn");
	$("#subBtn"+num).toggleClass("hideBtn");
	$("#cancleBtn"+num).toggleClass("hideBtn");
	modiOrdel="del";
}

function modifyOrder(num){
	recommentView();
	$("#delBtn"+num).toggleClass("hideBtn");
	$("#modiBtn"+num).toggleClass("hideBtn");
	$("#subBtn"+num).toggleClass("hideBtn");
	$("#cancleBtn"+num).toggleClass("hideBtn");
	modiOrdel="modi";
	 $("#recommentDiv"+num).attr("readonly",false).css("border","1px solid #ddd");
}

function submitRecomment(recommentCode,num){
	if(modiOrdel=="del"){
		$.ajax({
			type : "get",
			url : "walkRecommentDelState_ajax",
			data : { "recommentCode":recommentCode},
			async : false,
			success : function (result) {
				if(result=="OK"){
					console.log("삭제가 완료되었습니다");
					recommentView();	
				}
			}
		});
		
	}else if(modiOrdel=="modi"){
		var inputcontent= $("#recommentDiv"+num).val();
		var loginId = '${sessionScope.loginId}';
		$.ajax({
			type : "get",
			url : "walkRecommentModify_ajax",
			data : { "recomment_writer":loginId,"recomment_code" : recommentCode ,"recomment_content":inputcontent},
			async : false,
			success : function (result) {
				if(result=="OK"){
					console.log("수정이 완료되었습니다");					
					recommentView();
				}
			}
		});
		
	}
	
}

function cancleOrder(num){
	recommentView();
}


</script>


<script type="text/javascript">

var customBounds = new kakao.maps.LatLngBounds(); //좌표를 모두 담은 지도위치 소환하는 객체
//카드 출력 후 지도 출력될 빨간선 정의
var clickLine = new kakao.maps.Polyline({
		strokeWeight: 3, // 선의 두께입니다 
 	strokeColor: '#db4040', // 선의 색깔입니다
 	strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
 	strokeStyle: 'solid' // 선의 스타일입니다
	}); 


var locatedata= '${walkBoardInfo.walk_map}' ; //서버에서 가져온 지도 좌표들 문자열

var customPath = [];
 
//서버에서 가져온 좌표를 변환하기 전 배열변수에 입력
customPath = locatedata.replaceAll("\\","").replace("[\"","").replace("\"]","").split("\",\"");


//서버에서 가져온 좌표를 카카오 맵에서 사용할 수 있도록 변환하는 작업
	for(var j =0; j <customPath.length; j++){ 
		var locateCenterdata= new kakao.maps.LatLng(33.450701, 126.570667);
		console.log(customPath[j]);
		customPath[j]=JSON.parse(customPath[j]);
		locateCenterdata.La= customPath[j].La;
		locateCenterdata.Ma= customPath[j].Ma;
	customPath[j]=locateCenterdata;
	customBounds.extend(customPath[j]);
	}
	console.log("입력할 변환된 좌표 "+customPath); 

	var mapContainer  = document.getElementById('map'), // 지도를 표시할 div.
		mapOption  = { 
		disableDoubleClickZoom: true,
	       center:customPath[0], // 지도의 중심.
	        level: 3 // 지도의 확대 레벨.
	    };


	map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다.

	//지도 마무리 설정
map.setDraggable(false);//드래그를 막는다
map.setZoomable(false);//줌스크롤을 막는다

map.setBounds(customBounds);//여러좌표들을 다 담는 화면이동을 한다(확대레벨 바뀌어버림)
console.log("customBounds내용:"+customBounds);
console.log("최종지도레벨"+map.getLevel());
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
    draggable: false, // 출발 마커가 드래그 가능하도록 설정합니다
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
//출발마커 찍기
startMarker.setPosition(customPath[0]);
startMarker.setMap(map);
//도착마커 찍기
arriveMarker.setPosition(customPath[customPath.length-1]);
arriveMarker.setMap(map);

clickLine.setPath(customPath);
clickLine.setMap(map);

//선의 길이 총 길이와, 걷는 시간을 표시하는 output출력내용입니다.
var distance = Math.round(clickLine.getLength());
var walkkTime = distance / 67 | 0;

$("#totalDistance").text("총 거리: "+distance+"m, 도보: "+walkkTime+"분");
//시간출력
//2022-07-19 00:00:00
var inputdateText = '';
inputdateText = ('${walkBoardInfo.walk_time}').split(" ")[0].split("-")[0]+"년 "+('${walkBoardInfo.walk_time}').split(" ")[0].split("-")[1]+"월 "+('${walkBoardInfo.walk_time}').split(" ")[0].split("-")[2]+"일 ";
inputdateText += ('${walkBoardInfo.walk_time}').split(" ")[1].split(":")[0]+"시 "+('${walkBoardInfo.walk_time}').split(" ")[1].split(":")[1]+"분 ";
$("#dateInformation").val("출발일시: "+inputdateText);

//강아지 무게제한 출력
var dogbody = '${walkBoardInfo.walk_bodytype}';
var dogWs=dogbody.split("/")[0];
var dogWm=dogbody.split("/")[1];
var dogWl=dogbody.split("/")[2];

$("#dogWS").addClass("nonSelectSpanSty");
$("#dogWM").addClass("nonSelectSpanSty");
$("#dogWL").addClass("nonSelectSpanSty");

if(dogWs !="----"){
	$("#dogWS").removeClass("nonSelectSpanSty").addClass("selectSpanSty");
}if(dogWm !="----"){
	$("#dogWM").removeClass("nonSelectSpanSty").addClass("selectSpanSty");
}if(dogWl !="----"){
	$("#dogWL").removeClass("nonSelectSpanSty").addClass("selectSpanSty");
}
//날씨정보 출력
var weatherInfo= '${walkBoardInfo.walk_weatherinfo}';

var skyState = weatherInfo.split("/")[0];
var tmp = weatherInfo.split("/")[1];
var rainRate = weatherInfo.split("/")[2];

console.log("weatherInfo"+weatherInfo);
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

//참여중인 인원 출력

var joinM = '${walkBoardInfo.walk_mid}';
console.log("joinM"+joinM);
$("#joinMemberInfo").text(joinM);



</script>

<script>

function walkDelState(){
	location.href="walkDelState?boardCode="+'${walkBoardInfo.walk_code}';
}

function walkViewModifyPage(){
	location.href="walkViewModifyPage?boardCode="+'${walkBoardInfo.walk_code}';
}

//해당 산책 모집글에 참여하기
function walkViewJoin(){
	
	Swal.fire({
		   title: '해당 산책모집에 참여하시겠습니까?',
		   icon: 'warning',
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#F28123', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#ddd', // cancel 버튼 색깔 지정
		   confirmButtonText: '참가', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   reverseButtons: true, // 버튼 순서 거꾸로

	}).then(result => {
		// 만약 Promise리턴을 받으면,
		if (result.isConfirmed) {
		// 만약 모달창에서 confirm 버튼을 눌렀다면 //처리시작
		
	location.href="walkViewJoin?boardCode="+'${walkBoardInfo.walk_code}';
		}
	
	});
}

//해당 산책 모집글에서 탈퇴하기 
function walkViewLeave(){
	Swal.fire({
		   title: '해당 산책모집에서 탈퇴하시겠습니까?',
		   icon: 'warning',
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#F28123', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#ddd', // cancel 버튼 색깔 지정
		   confirmButtonText: '탈퇴', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   reverseButtons: true, // 버튼 순서 거꾸로

	}).then(result => {
		// 만약 Promise리턴을 받으면,
		if (result.isConfirmed) {
		// 만약 모달창에서 confirm 버튼을 눌렀다면 //처리시작
		
	location.href="walkViewLeave?boardCode="+'${walkBoardInfo.walk_code}';
		}
	
	});
}

/* 댓글 신고 */
function insertReport(code){
	
	
	Swal.fire({
	    title: '해당 댓글을 신고 하시겠습니까?',
	    text: '신고가 쌓이게 되면 해당 댓글은 삭제 됩니다.',
	    icon: 'warning',
	    showCancelButton: true,
	    confirmButtonText: '확인',
	    cancelButtonText: '취소'
	    
	  }).then((confirm) => {
		  
	      if(confirm.isConfirmed){
	    	  
	    		$.ajax({
	    			type : "get",
	    			url : "crewReviewCommentReport",
	    			data : {"code" : code },
	    			async : false,    		
	    			success : function (result) {
	    				
	    			if(result == "OK"){
	    				
	    				Swal.fire({
							
		 					   title: '신고가 접수되었습니다.',					   
		 					   icon: 'success',					  
		 					   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		 					   confirmButtonText: '확인' // confirm 버튼 텍스트 지정
		 					   
		 					});
	    				
	    			} else {
	    				
	    				Swal.fire({
							
		 					   title: '이미 해당 게시물에 신고접수를 하셨습니다.',					   
		 					   icon: 'error',					  
		 					   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		 					   confirmButtonText: '확인' // confirm 버튼 텍스트 지정
		 					   
		 					});
	    				
	    			}	
	    				
	    			}
	    			
	    			
	    		})
	      }
	     
	  });
	
}



</script>
</html>