<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
	<title>Single Product</title>

		<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
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

.mb-15{

margin-bottom:15.7px;

}
.mt-15{
margin-top:15.7px;
}

.gray-ver{

width:200px;
text-align:center;
background-color:#ddd !important;

}

.gray-ver:hover{

background-color:rgb(254,254,254)!important;
color:#374b56 !important;
}

.gray-select{
background-color:rgb(254,254,254)!important;
color:#374b56 !important;
box-shadow: 0px 0px 10px 0px rgb(0,0,0,0.1);
}

.dogiconSTYL{
display:inline-block; 
width:50px; 
height:50px;
background-position:center;
background-size: cover;
background-repeat: no-repeat;
background-color: #ddd;
border-radius:5px;
}
.textareaReadonlySTY{
background-color:rgb(0,0,0,0);
border:0px;
padding:16px;
}
.memberDogInfoSTY{
background-color:white;
width:95%;
margin:5px;
padding:5px;
border-radius:20px;
margin-right:auto; 
margin-left:auto; 
}
.crewImageSTY{
border-radius: 3px; 
background-color: white; 
width: 100%; 
height: 50px; 
background-size:100px;
background-repeat:no-repeat;
background-position:left;
background-image:url('${pageContext.request.contextPath}/resources/fileUpload/${crewInfo.crew_profile}');
}


.arrow-ver{

padding:10px !important; 
background-color:rgb(240,240,240,0.4) !important;
}
.arrow-ver:hover{
background-color:white !important;
color:#F28123 !important;

}

pre {

/* pre태그 내 줄바꿈 (모든 브라우저 호환용) */ 	
white-space: pre-wrap; /* CSS3*/
white-space: -moz-pre-wrap; /* Mozilla, since 1999 */
white-space: -pre-wrap; /* Opera 4-6 */
white-space: -o-pre-wrap; /* Opera 7 */
word-wrap: break-all; /* Internet Explorer 5.5+ */ 

    max-width: 260px; 
    padding:10px; 
    margin:0px;
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

	<%@ include file="../include/Topbar.jsp" %>
	

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section" >
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>today's walk</p>
						<h1>나의 산책크루</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->


		
		

<!-- check out section -->

	<div class="checkout-section" style="margin-top: 60px; margin-bottom: 80px;">
		<div class="container"  >
				<div class="row">
					<div class="col-lg-12" >
						<div class="card" style="border:1px solid #ddd;">
							<!--  -------------- -->
							<div class="card-header " style="height:32px; border:0px; background-color:#374b56;">
								<div class="row">
									<div class="col"></div>
									<div class="col-lg-10 d-flex justify-content-between" id="graybtn">
										<a class="cart-btn gray-ver gray-select" onclick="cardbody(this)" style="font-weight:600; font-size:1.5rem;">크루메인</a>
										<a class="cart-btn gray-ver " onclick="cardbody(this)" style="font-weight:600; font-size:1.5rem;">크루산책</a>
										<a class="cart-btn gray-ver " onclick="cardbody(this)"style="font-weight:600; font-size:1.5rem;">크루정보</a>
									</div>
									<div class="col"></div>
								</div>
							</div>
							<!-- card-body1 -------------- -------------- -------------- -------------- -------------- -------------- -------------- -->
							
							<div class="card-body  " id="cardbody1" style="padding-top:50px; border-radius: 3px; background-color: #ddd;">
							
								<div class="billing-address-form row">
									
									<div class="col-lg-12" style="margin-bottom:31px;">
										<div class="crewImageSTY">
											<div class="d-flex justify-content-between align-items-center" style="box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1); height:50px; margin-left:80px;">
											<h4 style="display:inline-block"> ${crewInfo.crew_name} </h4>
											<div style="display:inline-block; margin-right:10px; "> | ${crewInfo.crew_region} | 크루장: ${crewInfo.crew_master}</div></div>
										</div>
									</div>
									
									<div class="col-lg-6">
											<!-- 채팅내용 출력되는 곳 -->
											<div id="msgScreen" style="background-color: rgb(0,0,0,0.1); overflow-y:scroll; width: 100%; height: 450px; 
											border-radius: 3px;"></div>
											<!-- 채팅 입력하는 곳 -->
											<textarea id="inputMessage" style="width:100%; height:53px;" placeholder="크루원과 소통하기..."></textarea>
	
									</div>
									
									<div class="col-lg-6" >
										<div class="row">
										
										
											<div class="col-lg-12 mb-15">
												<div style="background-color: gray; border-radius:3px; overflow:hidden; width:100%; height: 243px;" id="crewtopCB">
													<!-- 최신 산책글 출력되는 곳 -->
												</div>
											</div>
											
											<div class="col-lg-12">
												<div style="background-color: gray; border-radius:3px; overflow:hidden; width:100%; height: 243px;" id="crewtopCW">
													<!-- 최신 후기글 출력되는 곳 -->
												</div>
											</div>
											
										</div>
									</div>
									
								</div>
								
							</div>
							<!-- card-body2 -->
							<!--  ----------- -------------- -------------- -------------- -------------- -------------- -------------- ----------------- -->
							
							<div class="card-body d-none" id="cardbody2" style="padding-top:50px;border-radius: 3px; padding-bottom:7.5px; background-color: #ddd;">
								<div class="billing-address-form row">
									
									<div class="col-lg-6" style="margin-bottom:36px;">
										<div style="background-color:white; border-radius:3px; box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1);">
											<div class="d-flex justify-content-center align-items-center" style="height:50px; "><h4 style="display:inline-block"> 
											크루 산책 모집 </h4></div>
											
										</div>
		
									</div>
									<div class="col-lg-6"  style="margin-bottom:36px;">
										<div  style="background-color:white; border-radius:3px; box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1);">
											<div class="d-flex justify-content-center align-items-center" style="height:50px; "><h4 style="display:inline-block"> 
											크루 산책 후기 </h4></div>
											
										</div>
		
									</div>
									<!-- ------------------------------ -->
									<div class="col-lg-6" >
										
											<div id="printWalkInfoList" style="background-color: rgb(0,0,0,0.1); padding:7px; padding-bottom:0px; width:100%; height: 430px;overflow-x:hidden; overflow-y:auto; border-radius:3px;">
											
											<!-- ------------------------------ 
											
												
												
											
											 ------------------------------ -->	
												
											</div>	
										

											<!-- ------------------------------ -->
					
												<div class="align-items-center " style="border:1px solid #ddd; border-radius:3px;">												
													<div class="row">
														<div class="col-lg-12 d-flex justify-content-start"> <a onclick="location.href='crewWalkWritePage'"class="cart-btn" style="text-align:center; padding:5px; border-radius:3px; width: 120px;">산책모집하기</a> </div>
														<div class="col-lg-12">
															<div class="" style="display:inline-block; width:100%; height:50px;">
																<div class="d-flex justify-content-center align-items-center"> <a class="cart-btn arrow-ver" onclick="prevCrewListPaging()"><i class="fa-solid fa-circle-chevron-left" style="font-size:30px; margin:0px;"></i></a><a onclick="nextCrewListPaging()"class="cart-btn arrow-ver" style="margin-left:15px;"><i class="fa-solid fa-circle-chevron-right" style="font-size:30px;margin:0px;"></i></a></div> 
																
															</div>
														</div>
													</div>
												</div>
											<!-- ------------------------------ -->
									</div>		
									<!-- ------------------------------ -->
								<div class="col-lg-6">
										
											<div id="printWalkReviewInfoList" style="background-color: rgb(0,0,0,0.1); padding:7px; padding-bottom:0px; width:100%; height: 430px;overflow-x:hidden; overflow-y:auto; border-radius:3px;">
											
											<!-- ------------------------------ -->
											
												<div class="align-items-center " style="background-color: white; box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1); margin-bottom: 5px; width: 100%;  border-radius:3px;">												
													<div class="row">
														<div class="col-lg-5">
															<div id="map" style="display:inline-block; width:100%; height:100px; background-color:gray; border-radius:3px;">미니지도출력되는곳</div>
														</div>
														<div class="col-lg-7">
															<div style="display:inline-block; width:100%; height:100px;">
																<div > 제목 내용 작성자 </div> 
																<div > 시작주소 출발일시 인원수</div>
															</div>
														</div>
													</div>
												</div>
												
											<!-- ------------------------------ -->	
												
											</div>	
										

											<!-- ------------------------------ -->
					
												<div class="align-items-center " style="border:1px solid #ddd; border-radius:3px;">												
													<div class="row">
														<div class="col-lg-12 d-flex justify-content-end" style="height:31px;"></div>
														<div class="col-lg-12">
															<div class="" style="display:inline-block; width:100%; height:50px;">
																<div class="d-flex justify-content-center align-items-center"> <a class="cart-btn arrow-ver" onclick="prevCrewReviewListPaging()"><i class="fa-solid fa-circle-chevron-left" style="font-size:30px; margin:0px;"></i></a><a onclick="nextCrewReviewListPaging()"class="cart-btn arrow-ver" style="margin-left:15px;"><i class="fa-solid fa-circle-chevron-right" style="font-size:30px;margin:0px;"></i></a></div> 
																
															</div>
														</div>
													</div>
												</div>
											<!-- ------------------------------ -->
									</div>			
									<!-- ------------------------------ -->
								</div>
							</div>
							<!-- card-body 3-->
							<!--  ----------- -------------- -------------- -------------- -------------- -------------- -------------- ----------------- -->
							
							<div class="card-body d-none" id="cardbody3" style="padding-top:50px;border-radius: 3px; background-color: #ddd;">
								<div class="billing-address-form row">
									
									<div class="col-lg-12" id="crewInfo">
									<!-- 크루정보 입력되는곳 -->
										
										<!-- 크루정보 입력되는곳 -->
									</div>
									
										
											<div class="col-lg-6 mt-15" style="padding-top:16px;">
												<div style="background-color: rgb(0,0,0,0.1); border-radius:15px; box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1) inset; width:100%; height: 233px; overflow:auto;">
													<div id="crewMemberList" style="width:100%; text-align:center;">
														<!-- 크루원 목록 출력되는 곳 -->
														<c:forEach items="${crewMemberList}" var="memberList">
														<c:choose>
															<c:when test="${memberList.member_id == crewInfo.crew_master}">
															<a class="cart-btn gray-ver" style="box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1);display:block; width:95%; padding: 5px; margin:5px; margin-right:auto; margin-left:auto;" 
															onclick="crewMemberDogInfo('${memberList.member_id}','${memberList.member_profile}',this)"><i style="color:#F28123;"class="fa-solid fa-crown"></i>&nbsp;${memberList.member_id}</a>
															</c:when>
															<c:otherwise>
																<a class="cart-btn gray-ver" style="box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1);display:block; width:95%; padding: 5px; margin:5px; margin-right:auto; margin-left:auto; " 
																onclick="crewMemberDogInfo('${memberList.member_id}','${memberList.member_profile}',this)">
																	${memberList.member_id}
																</a>
															</c:otherwise>
														</c:choose>
														</c:forEach>
														
													</div>													

												</div>
											</div>
											
											<div class="col-lg-6 mt-15" style="padding-top:16px;" >
												<div style="background-color:rgb(0,0,0,0.1);text-align:center;  box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1) inset; border-radius:15px; width:100%; height: 233px; overflow:auto;">
													<div id="crewMemberDogList" style="width:100%;">
														<!-- 크루원 강아지 목록 출력되는 곳 -->
														
		
													</div>		
												</div>
											</div>
										</div>
									</div>
							<!-- card-body -->
							
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
	
		<!-- Sockjs -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</body>
<script>

//페이지 로딩시 출력되는 알람
var msg = '${msg}';
if(msg.length > 0){
	Swal.fire(msg);
}


//선택한 탭에따라 출력화면 바꾸기
function cardbody(aObj){
	
	for(var i =0; i<3; i++){
		
		if($(aObj).text() == $("#graybtn a").eq(i).text()){//클릭한 버튼
			console.log("클릭한버튼");
			if(!$("#graybtn a").eq(i).hasClass("gray-select")){
				$("#graybtn a").eq(i).toggleClass("gray-select");
			}
		
			if($("#cardbody"+(i+1)).hasClass("d-none")){
				$("#cardbody"+(i+1)).toggleClass("d-none");
			}
			
		}else{//나머지버튼
			console.log("나머지버튼");
			if($("#graybtn a").eq(i).hasClass("gray-select")){
				$("#graybtn a").eq(i).toggleClass("gray-select");
			}

			if(!$("#cardbody"+(i+1)).hasClass("d-none")){
				$("#cardbody"+(i+1)).toggleClass("d-none");
			}
		}	
	}
	if($(aObj).text()=='크루메인'){
		crewWalkAndViewTopPrint();		
	}
	if($(aObj).text()=='크루산책'){
		crewWalkListPaging(1);	
		crewReviewListPaging(1);		
	}
	
}

//크루 메인 최신글들 출력
function crewWalkAndViewTopPrint(){
	$.ajax({
		type : "get",
		url : "crewWalkTopPrint_ajax",
		data : {},
		async : false,
		dataType : "json",
		success : function (result) {
			console.log("가져온 글 개수(최대2개):"+result.length);
			
				if(result[0] != null){
					boardPrint(result[0]);
				}else {
					output = "";
					output += "<div class=\"row\"><div class=\"col-lg-12\">"
						+"<div class=\"d-flex justify-content-center align-items-center\" style=\"display:inline-block; width:100%; height:43px; background-color:white; border-radius:3px 3px 0px 0px;\"><h5>최신 산책 모집글</h5></div>"
						+"<div class=\"d-flex justify-content-center align-items-center\" style=\"height:200px;\">등록된 글이 없습니다.</div></div>";
					$("#crewtopCB").html(output);
				} 
				if (result[1] != null){
					boardPrint(result[1]);
				}else{
					output = "";
					output += "<div class=\"row\"><div class=\"col-lg-12\">"
						+"<div class=\"d-flex justify-content-center align-items-center\" style=\"display:inline-block; width:100%; height:43px; background-color:white; border-radius:3px 3px 0px 0px;\"><h5>최신 후기 모집글</h5></div>"
						+"<div class=\"d-flex justify-content-center align-items-center\" style=\"height:200px;\">등록된 글이 없습니다.</div></div>";
					$("#crewtopCW").html(output);
				}
				
				
			}
			
			
			
		
	});
}

//크루 메인 최신글 출력 2
function boardPrint(result){
	var codeType = result.walk_code.substring(0,2);
		//카드에 보여질 아웃풋 만들기
			output="";
			output+="<div class=\"row\">"
						
			if(codeType=='CB'){
				var timeDate = new Date(result.walk_time);
				var today = new Date();
				console.log(timeDate+"::"+today);
				
				if(timeDate<today){
					output+= "<div class=\"col-lg-12\" style=\"position:absolute; top:43px; padding-left:15px; padding-right:15px; z-index:5; height:200px; width:100%  \">"
					+"<div class=\"d-flex justify-content-center align-items-center\" style=\"width:100%; height: 100%; background-color: rgb(0,0,0,0.3); border-radius:3px;\">"
					+"<div style=\"text-align:center; border:1px solid #ddd; background:white; padding:15px; border-radius:3px; \">모집 마감되었습니다.<br>새로운 일정을 만들어보세요</div>"
					+"</div>"
					+"</div>";
				}
			}
				
			output+="<div class=\"col-lg-12\">"
			+"<div class=\"d-flex justify-content-center align-items-center\" style=\"display:inline-block; width:100%; height:43px; background-color:white; border-radius:3px 3px 0px 0px;\">";
			if(codeType =='CB'){
				
				output+= "<h5>최신 산책 모집글</h5>";
			}else{
				output+= "<h5>최신 산책 후기글</h5>";
			}
			
			output+="</div></div>"
			+"<div class=\"col-lg-12\" style=\"height:100px;\">"
			+"<div id=\"map"+codeType+"\" style=\"display:inline-block; width:100%; margin-bottom:0px; height:100px; background-color:gray;\">미니지도출력되는곳</div>"
			+"</div>"
			+"<div class=\"col-lg-12\"";
			if(codeType=='CB'){
				var timeDate = new Date(result.walk_time);
				var today = new Date();
				console.log(timeDate+"::"+today);
				if(timeDate >today){
					
					output+= "onclick=\"crewWalkViewPage('"+result.walk_code+"')\" style=\"cursor:pointer;\">";
				}else{
					output+= ">";
				}
				
			}else if(codeType=='CW'){
				output+= "onclick=\"crewReviewPage('"+result.walk_code+"')\" style=\"cursor:pointer;\">";
			}
			
			output+="<div style=\"display:inline-block; overflow:hidden; background-color:white; padding: 3px; width:100%; height:100px; border-radius:0px 0px 3px 3px;\">"
			+"<div id=\"mapinfo"+codeType+"\"> 제목 내용 작성자 </div><div id=\"weatherDiv"+codeType+"\"></div>"
			+"<div style=\"clear:both;\">"+result.walk_title+"</div>"
			+"<div>"+result.walk_content+"</div>"
			+"</div>"
			+"</div>"
			+"</div>";
					
		output += "</div>";
				
				
	//카드에 출력하기
	$("#crewtop"+codeType).html(output);		

		//지도출력하기
					
		var customBounds = new kakao.maps.LatLngBounds(); //좌표를 모두 담은 지도위치 소환하는 객체
		//카드 출력 후 지도 출력될 빨간선 정의
		var clickLine = new kakao.maps.Polyline({
				strokeWeight: 3, // 선의 두께입니다 
			   	strokeColor: '#db4040', // 선의 색깔입니다
		 	   	strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		 	   	strokeStyle: 'solid' // 선의 스타일입니다
		 	}); 
				
				
		var locatedata= result.walk_map ; //서버에서 가져온 지도 좌표들 문자열
		/* console.log("지도좌표 확인~:"+locatedata);  */
				
		var customPath = [];
				
		//서버에서 가져온 좌표를 변환하기 전 배열변수에 입력
		customPath = locatedata.replaceAll("\\","").replace("[\"","").replace("\"]","").split("\",\"");
				
		 
		/* console.log(customPath); */ 
		//서버에서 가져온 좌표를 카카오 맵에서 사용할 수 있도록 변환하는 작업
		
		for(var l =0; l <customPath.length; l++){ 
			var locateCenterdata= new kakao.maps.LatLng(33.450701, 126.570667);
			console.log(customPath[l]);
			customPath[l]=JSON.parse(customPath[l]);
			 		
			locateCenterdata.La= customPath[l].La;
			locateCenterdata.Ma= customPath[l].Ma;
			 		
			customPath[l]=locateCenterdata;
			customBounds.extend(customPath[l]);
		}
		
		
		/* console.log("입력할 변환된 좌표 "+customPath);  */
		 	
		var mapContainer  = document.getElementById("map"+codeType), // 지도를 표시할 div.
			mapOption  = { 
			disableDoubleClickZoom: true, //더블클릭 줌 막기
		    center:customPath[0], // 지도의 중심.
		    level: 3 // 지도의 확대 레벨.
		};

	
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다.
			
		//지도 마무리 설정
		map.setDraggable(false);//드래그를 막는다
		map.setZoomable(false);//줌스크롤을 막는다
		console.log("------customBounds-----");
		console.log(customBounds);
		map.setBounds(customBounds);//여러좌표들을 다 담는 화면이동을 한다(확대레벨 바뀌어버림)
		
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
		    image: startImage, // 출발 마커이미지를 설정합니다
		    clickable:false
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
		    image: arriveImage, // 도착 마커이미지를 설정합니다
		    clickable:false
		});
		//출발마커 찍기
		startMarker.setPosition(customPath[0]);
    	startMarker.setMap(map);
		    	
		//도착마커 찍기
    	arriveMarker.setPosition(customPath[customPath.length-1]);
    	arriveMarker.setMap(map);
		    	
		clickLine.setPath(customPath);
		clickLine.setMap(map);
				
				
		//선의 길이 총 길이와, 걷는 시간을 표시하는 output출력내용입니다./* 총 거리: "+distance+"m, 도보: "+walkkTime+"분 */
		var distance = Math.round(clickLine.getLength());
		var walkkTime = distance / 67 | 0;
							
				
		//날씨정보 출력
		var weatherCheck = result.walk_weatherinfo.split("/")[0];
				
		var divurl = "";
		if (weatherCheck=="0"){
			divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/clear.png';
		}else if (weatherCheck=="1"){
			divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/cloudy.png';
		}else if (weatherCheck=="2"){
			divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/blackcloudy.png';
		}else if (weatherCheck=="3"){
			divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/rain.png';
		}else if (weatherCheck=="4"){
			divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/sleet.png';
		}else if (weatherCheck=="5"){
			divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/snow.png';
		}
				
		//출발일시 사용자에게 보여질문장으로 변환작업
		var time = result.walk_time;
		console.log("time: "+time);
		var timerow = time.split(" ");
		var yyMMdd = timerow[0].split("-")[0]+"년 "+timerow[0].split("-")[1]+"월 "+timerow[0].split("-")[2]+"일 ";
		time = yyMMdd+" "+timerow[1].split(":")[0]+"시 "+timerow[1].split(":")[1]+"분";
				
		var mapinfoOutput = "<div style = \"float:left; border-bottom:1px solid #ddd;\">"+result.walk_startaddr+" | 출발일시: "+time+"</div>";
		mapinfoOutput+="<div style = \"background-image: url('"+divurl+"'); background-size:30px; background-repeat:no-repeat; background-position:center; float:right; width:30px; height:25px;\"id=\"#weatherDiv"+codeType+"\"></div>";
		$("#mapinfo"+codeType).html(mapinfoOutput);
		
		
}
//크루메인 최신글 출력
crewWalkAndViewTopPrint();

</script>


<script type="text/javascript">



//수정시 사진 재로딩 지연 커버용 변수들
var imageurl;
var file ;
var introducetext = "";
$("#inputCheckFile").val("empty");



//크루정보 수정버튼 눌러 수정준비하기
function toggleModify(){
	$("#toggleModifyBtn").toggleClass("d-none");
	$("#submitModifyBtn").toggleClass("d-none");
	$("#cancleModifyBtn").toggleClass("d-none");
	$("#imageUploadDiv").toggleClass("d-none");
	$("#textarea").toggleClass("textareaReadonlySTY").attr("readonly",false);
}


//크루정보 수정 취소
function cancleModify(){
	crewInfoPrint();
}



//페이지 시작시 : 크루 정보 출력실행
crewInfoPrint();



//크루정보 가져와 출력하기 함수
function crewInfoPrint(){
	console.log("crewInfoPrint실행");
	$.ajax({
		type : "get",
		url : "crewInfo_ajax",
		data : {},
		async : false,
		dataType : "json",
		success : function (result) {
			
			console.log("크루정보 가져오기실행 : "+result);
			
			var output ="";
			
			output += "<form id=\"formTag\"><div style=\"border-radius: 15px; background-color: white; padding:15.7px; box-shadow: 0px 0px 10px 0px rgb(0,0,0,0.1); width: 100%; \"> "
					+"<div class=\"row\" style=\"padding-left:15.7px; padding-right:15.7px;\"> "
					+"<div class=\"col-lg-3\" ><div style=\"margin-top:25px; margin-bottom:20px;\"> "
					+"<div id=\"imgbox\"style=\"position:relative; width:150px; height:150px; border-radius:3px; background-color:white; margin:auto; background-size:cover; "
					+" background-position:center; border:1px solid #ddd;";
			if(imageurl == null){
				output += " background-image:url('${pageContext.request.contextPath}/resources/fileUpload/"+result.crew_profile+"');";
			}if(imageurl != null){
				output += " background-image:url('"+imageurl+"');";
			}
			output += "\"><div class=\"d-none\" id=\"imageUploadDiv\" style=\"position:absolute; bottom:-1px; left:-1px;text-align:center; width:150px; padding:3px; background-color:white; border-radius:3px; margin:auto; " 
					+"margin-top:15px; cursor:pointer; border:1px solid #ddd; color:#374b56;\" onclick=\"$('#inputFileTag').click()\">이미지바꾸기</div></div> "
					+"<input name=\"crew_file\" onchange=\"loadFile(this)\" id=\"inputFileTag\" " 
					+"type=\"file\" style=\"display:none;\"><input class=\"d-none\"id=\"inputCheckFile\" type=\"text\" name=\"checkFile\"></div></div><div class=\"col-lg-9\"><br><div class=\"row\"> "
					+"<div class=\"col-lg-6 d-flex justify-content-between\" style=\" padding-left:20px;\"> "
					+"<div class=\"d-flex justify-content-center align-items-center\"> <h4 id=\"crewName\">"+result.crew_name+"</h4></div> "
					+"<div class=\"d-flex justify-content-center align-items-center\"><h5>"+result.crew_region+"</h5></div></div> "	
					+"<div class=\"col-lg-6 d-flex justify-content-between\" > "	
					+"<div class=\"d-flex justify-content-center align-items-center\" style=\"font-weight:200;\">크루장 : "+result.crew_master+"</div><div> " ;
			
			var dogWC = result.crew_dogweight.split("/");
			
			output += "<div class=\"dogiconSTYL\" style=\"";
			
			if(dogWC[0] == "0010"){
				output += "background-image: url('${pageContext.request.contextPath}/resources/fileUpload/dogbody/dogbody_s.png');";
			}
			
			output += "\"></div> <div class=\"dogiconSTYL\" style=\"";
			
			if(dogWC[1] == "1025"){
			output += " background-image: url('${pageContext.request.contextPath}/resources/fileUpload/dogbody/dogbody_m.png');";
			}
			
			output += "\"></div> <div class=\"dogiconSTYL\" style=\"";
			
			if(dogWC[2] == "2580"){
			output += "background-image: url('${pageContext.request.contextPath}/resources/fileUpload/dogbody/dogbody_l.png');";
			}
			
			output += "\"></div> "
					+"</div></div> "
					+"<div class=\"col-lg-12 \"><hr > "
					+"<div><textarea name=\"crew_introduce\"id =\"textarea\"class=\"textareaReadonlySTY\" style=\"height:20%;\">"+result.crew_introduce+"</textarea></div></div> "
					+"</div></div></div></div></div><div class=\"col-lg-12 \"><br><div class=\"row\"><div class=\"col\"></div> ";
			
			//내용 바뀐거 확인용 저장		
			introducetext=result.crew_introduce;
					
			if(result.crew_master != '${sessionScope.loginId}'){
			output+="<div class=\"col-lg-3 mb-15 mt-15\" ><a class=\"cart-btn \" onclick=\"crewLeave('me')\" style=\"width:100%; padding-top:15px; text-align:center;\">크루 탈퇴</a></div> ";
			}
			
			if(result.crew_master == '${sessionScope.loginId}'){			
			output+="<div class=\"col-lg-3 \" style=\"display:inline-block; padding-top:15px;\"><a class=\"cart-btn\" onclick=\"crewDelState()\" style=\" width:100%; text-align:center;\">크루 삭제</a></div> "
					+"<div class=\"col-lg-3 \" style=\"display:inline-block; padding-top:15px;\"> "
					+"<a id=\"toggleModifyBtn\"class=\"cart-btn\" style=\"width:100%; text-align:center;\" onclick=\"toggleModify()\">크루 수정</a>"
					+"<a id=\"submitModifyBtn\"class=\"cart-btn d-none\" style=\" width:100%; text-align:center;\" onclick=\"submitModify()\">수정 확인</a></div> "
					+"<div class=\"col-lg-3\"  style=\"padding-top:15px;\"><a id=\"cancleModifyBtn\"class=\"cart-btn d-none\" style=\" width:100%; text-align:center;\" onclick=\"cancleModify()\">수정 취소</a> "
					+"</div>";
			}
			output += "</div> </form>";
				
			$("#crewInfo").html(output);
		}
	});
}




//크루정보 수정 함수
function submitModify(){
	Swal.fire({
		   title: '정말로 수정하겠습니까?',
		   icon: 'warning',
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#F28123', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#ddd', // cancel 버튼 색깔 지정
		   confirmButtonText: '수정', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   reverseButtons: true, // 버튼 순서 거꾸로

	}).then(result => {
		// 만약 Promise리턴을 받으면,
		if (result.isConfirmed) {
		// 만약 모달창에서 confirm 버튼을 눌렀다면 //처리시작
			  
			var text = $("#textarea").val();
		   	if(introducetext != text && text <10){
		   		Swal.fire('한줄 소개글은 10글자 이상이어야 합니다');
		   		return null;
		   	}
		   	
			
			
			//폼태그의 파라메터들을 통채로 변수에 저장한다. //이미지 변경이 없는경우?
			var form = $('#formTag')[0];
			var formData = new FormData(form);
							
			
			$.ajax({
				type: "POST",
				url: "crewInfoModify_ajax",
				data: formData,
				async : false,
				processData: false,
				contentType: false,
				enctype: 'multipart/form-data',
				success: function (result) {
  					if(result=="OK"){
  						
  						$("#toggleModifyBtn").toggleClass("d-none");
  						$("#submitModifyBtn").toggleClass("d-none");
  						$("#cancleModifyBtn").toggleClass("d-none");
  						$("#imageUploadDiv").toggleClass("d-none");
  						$("#textarea").toggleClass("textareaReadonlySTY").attr("readonly",true);
  						
						Swal.fire('수정하였습니다','','success');
						crewInfoPrint();
						
						if(imageurl!=null && imageurl.length > 0){
							console.log("그림바뀌어라");
							$(".crewImageSTY").eq(0).css("background-image","url("+imageurl+")");
							imageurl=null;
							$("#inputCheckFile").val("empty");
						}
						
  					}else{
  						Swal.fire('수정에 실패하였습니다.');
  						crewInfoPrint();
  					}
				}
			});
		}
	});
}


//이미지파일 입력시 실행함수
function loadFile(inputObj) {
	
  file = event.target.files[0];
  
  var reader = new FileReader();
  //파일이 입력된다면 실행된다.(이벤트)
  reader.onload = function(inputObj){
	  
	  $("#imgbox").css("background-image", "url("+inputObj.target.result+")");
	  imageurl=inputObj.target.result;
	  $("#inputCheckFile").val("in");
  }
  //파일을 데이터url형식으로 파일을 저장한다.(메소드)
  reader.readAsDataURL(file);

}



//크루 탈퇴요청
function crewLeave(check){
	console.log("입력받은 파라메터:"+check);
	//탈퇴시킬 아이디
	var leaveId="";
	
	//안내메세지에 들어갈 단어 (현재:크루)
	var name = $("#crewName").text();
	
	//파라메터가 me가 아닐경우
	if(check != 'me'){
		name = check;//크루->회원이름
	}
	
	//입력받은 이름 뒤 조사정하기.
	var obj= name[name.length-1];
	//입력값의 마지막 글자를 변수 obj에 담아 문자의 코드(숫자)를 다음과 같이 계산한 후 나머지 값이 0이면 받침이 없는것, 나머지 값이 있으면 받침이 있는것이다.
	var num = (obj.charCodeAt()-44032)%28;
	var josa="";
	
	if( num == 0){
		josa="를";
	}else{
		josa="을"
	}
	
	//버튼 글자
	var btnStr="";
	//안내 내용
	var infotext = "";
	
	if (check=='me'){//회원의 자발적 탈퇴일경우
		//탈퇴시킬 아이디=로그인된 아이디
		leaveId= '${sessionScope.loginId}';
		//안내내용 저장하기 '정말로 크루를 탈퇴하겠습니까?'
		infotext= '정말로 '+name+josa+' 탈퇴하겠습니까?';
		//버튼글자 저장
		btnStr ="탈퇴";
		
	}if(check != 'me'){ //크루장이 강퇴시키는 경우
		//탈퇴시킬 아이디= 매개변수로 받은 회원아이디
		leaveId = check; 
		//안내내용 저장하기 '정말로 회원을 강퇴하겠습니까?'
		infotext= '정말로 '+name+josa+' 강퇴 하겠습니까?';
		//버튼 글자 저장
		btnStr="강퇴";
	}

	Swal.fire({
		   title: infotext ,
		   icon: 'warning',
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#F28123', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#ddd', // cancel 버튼 색깔 지정
		   confirmButtonText: btnStr, // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   reverseButtons: true, // 버튼 순서 거꾸로

	}).then(result => {
		// 만약 Promise리턴을 받으면,
		if (result.isConfirmed) {
		// 만약 모달창에서 confirm 버튼을 눌렀다면 //처리시작
		
			location.href='crewLeave?leaveId='+leaveId;
		}
	
	});
	
}



//크루삭제하기
function crewDelState(){
	
	Swal.fire({
		   title: '정말 크루를 삭제하겠습니까?',
		   icon: 'warning',
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#F28123', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#ddd', // cancel 버튼 색깔 지정
		   confirmButtonText: '삭제', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   reverseButtons: true, // 버튼 순서 거꾸로

	}).then(result => {
		// 만약 Promise리턴을 받으면,
		if (result.isConfirmed) {
		// 만약 모달창에서 confirm 버튼을 눌렀다면 //처리시작
		
			location.href='crewDelState';
		}
	
	});
}



//크루원에게 등록된 강아지 정보 가져오기
function crewMemberDogInfo(member_id,member_profile,thisObj){

	 for(var i =0; i<$("#crewMemberList a").length; i++){
		 
		if($("#crewMemberList a").eq(i).text() == $(thisObj).text()){ //클릭한 객체일경우
			
			if(!$("#crewMemberList a").eq(i).hasClass("gray-select")){//없으면
				
			$(thisObj).toggleClass("gray-select");	//부여한다.
			}
			
		}else{//클릭하지 않은 객체일경우

			
			if($("#crewMemberList a").eq(i).hasClass("gray-select")){ //해당클래스가 있으면 				
				$("#crewMemberList a").eq(i).toggleClass("gray-select");			//클래스를 토글한다.
			}
		}
	}
	 
	


	$.ajax({
		type : "get",
		url : "crewMemberDogList_ajax",
		data : {"memberId": member_id},
		async : false,
		dataType : "json",
		success : function (result) {
			var output = "";
			output += " <div class=\"memberDogInfoSTY\" style=\"box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1);\">"
				+" <div class=\"row\" style=\"padding:15.7px; padding-bottom:0px;\">";
			//크루원 정보출력
				output +=" <div class=\"col-lg-3 d-flex justify-content-end\" style=\" text-align:center;\">"											
				+" <div class=\"dogiconSTYL\" style=\"background-image:url('${pageContext.request.contextPath}/resources/fileUpload/";
				if(member_profile !=null && member_profile.length>0){
				output += ""+member_profile;
				}else{
				output +="basic.jpeg";	
				}
						
				output += "');\"></div>"
				+" </div><div class=\"col-lg-9 d-flex justify-content-between align-items-center\" style=\" text-align:center; \">"
				+" <div style=\" display:inline-block;\">"+member_id+"</div>";
				if(${sessionScope.loginId == crewInfo.crew_master} && member_id != '${crewInfo.crew_master}'){
					
					output+= "<div><div onclick=\"crewLeave('"+member_id+"')\" style=\" display:inline-block; margin-right:15px; background-color:#ddd; border:1px solid #ddd; padding:5px; cursor:pointer; border-radius:3px; \">회원 강퇴</div>"
						+"<div onclick=\"crewMaster('"+member_id+"')\" style=\" display:inline-block; margin-right:15px; background-color:#ddd; border:1px solid #ddd; padding:5px; cursor:pointer; border-radius:3px; \">크루장위임</div></div>";
				}
				
				output+= "</div><div class=\"col-lg-12\"><hr></div>";
			//강아지 정보 출력	
			for(var i = 0 ; i<result.length; i++){
				var dog_birth = result[i].dog_birth.split(" ")[0];
				
				output += " <div class=\"col-lg-4 d-flex justify-content-end\" style=\"  margin-bottom: 15px;\">"
				+" <div class=\"dogiconSTYL\" style=\"background-image:url('${pageContext.request.contextPath}/resources/fileUpload/";
				if(result[i].dog_image !=null && result[i].dog_image.length>0){
					output += ""+result[i].dog_image;		
				}else{
					output += "dogbasic.png";	
				}
				output += "');\"></div></div>"
				+" <div class=\"col-lg-8 d-flex justify-content-start align-items-start\" style=\" margin-bottom: 15px;\">"
				+" <div style=\"text-align:left;display:inline-block; padding-right:15px;\">이름: "+result[i].dog_name+"<br>견종: "+result[i].dog_type+"</div>"
				+" <div style=\"text-align:left; display:inline-block;\">성별: "+result[i].dog_gender+"<br>생일: "+dog_birth+"</div></div>";
			}	
			
			output +=" </div></div>";
			$("#crewMemberDogList").html(output);
		}
	});
		
}


//크루장 권한 위임 요청 함수
function crewMaster(memberId){
	Swal.fire({
		   title: '정말로 '+memberId+'에게 크루장을 위임하시겠습니까?',
		   icon: 'warning',
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#F28123', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#ddd', // cancel 버튼 색깔 지정
		   confirmButtonText: '위임', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   reverseButtons: true, // 버튼 순서 거꾸로

	}).then(result => {
		// 만약 Promise리턴을 받으면,
		if (result.isConfirmed) {
		// 만약 모달창에서 confirm 버튼을 눌렀다면 //처리시작
		
			location.href='crewMaster?memberId='+memberId;
		}
	
	});
}



//페이징 이동을 위한 전역변수 설정
//현재 페이지
var localPage=1;
//이전페이지
//다음페이지
var localMaxPage=1;

//산책 후기 이동을 위한 전역변수 설정
//현재 페이지
var localReviewPage=1;
var localReviewMaxPage=1;

//이전페이지
function prevCrewListPaging(){
	if(localPage > 1){
		console.log("이전페이지");
		crewWalkListPaging(localPage-1);
		return null;
	}
	console.log("이전페이지가 없습니다");
	
}

//다음페이지
function nextCrewListPaging(){
	if(localPage < localMaxPage){
		console.log("다음페이지");
		crewWalkListPaging(localPage+1);
		return null;
	}
	console.log("다음페이지가 없습니다");
}


//크루산책목록 페이징
function crewWalkListPaging(page){
	
	console.log("산책목록 페이징 처리 시작");
	localPage = page;
	var output = "";
	var pagingOutput = "";
	
	$.ajax({
		type : "get",
		url : "crewWalkPaging_ajax",
		data : { "page" : page },
		async : false,
		dataType : "json",
		success : function (result) {
			if (result.length >0){
			console.log(result[0].endPage);
			localMaxPage= result[0].endPage;
			
				for (var i = 0; i < result.length; i++){
					
					//현재 산책모집게시글에 참여중인 사람 수 구하기
					var walk_midRow = result[i].walk_mid.split("/");
					var midCount= walk_midRow.length;
					//모집마감시간이 현재시간을 지나면 후기를 작성할 수 있는 권한이 생김, 체크하는 변수를 만들자.
					var timeDate = new Date(result[i].walk_time);
					var today = new Date();
					
					//카드에 보여질 아웃풋 만들기
					
					output += " <div id = \"box"+i+"\" style=\"position:relative; background-color: gray; padding:0px; box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1); margin-bottom: 5px; width: 100%;  border-radius:3px;\"> "												
							+ " <div class=\"row align-items-center\" ";
							
					if(timeDate>today){
						output += " onclick= \"crewWalkViewPage('"+result[i].walk_code+"')\" ";
					}
					output +="style=\"padding:0px; ";
					if(timeDate>today){
						output +="cursor:pointer;";
					}else{
						output +="cursor:default;";
					}
					output +="margin-right: 0px; margin-left: 0px; \"> "	
							+" <div class=\"col-lg-5 align-items-center\" style=\"height:100px; padding: 0px; ";
					 if(timeDate<today){output += " mix-blend-mode: multiply; ";}
					output += "\"> "
							+" <div id=\"map"+i+"\" style=\"display:inline-block; width:100%; height:100px; background-color:gray; border-radius:3px;\"></div> "
							+" </div> "
							+" <div class=\"col-lg-7\" style=\"background-color:white; border-radius:3px; height:100px; ";
					 if(timeDate<today){output += " mix-blend-mode: multiply; ";} 
					output +="\"> "
							+" <div style=\"display:inline-block; width:100%; height:100px; overflow:hidden\"> "
							+" <div id =\"mapinfo"+i+"\"> 출발일시 인원수</div> "
							+" <div style=\"clear:both;\"><h5 style=\"display:inline-block; margin-bottom:9px;\">"+result[i].walk_title+"</h5>"
							+" <div style=\"display:inline-block; float:right;\">"+result[i].walk_writer+"</div></div>  "
							+" <div style=\"clear:both;\">"+result[i].walk_content+"</div> "
							+" </div> "
							+" </div> "
							+" </div> ";
							
					var walkjoinmemberRow=result[i].walk_mid.split("/");
					
					if(timeDate<today){
						for(var j=0; j<walkjoinmemberRow.length; j++){
							console.log("후기가능 체크: "+walkjoinmemberRow[j]);
							
							if('${sessionScope.loginId}' == walkjoinmemberRow[j]){	
								
								

								$.ajax({
									type : "get",
									url : "checkReviewGrant_ajax",
									data : { "walk_writer" : walkjoinmemberRow[j],"walk_code": result[i].walk_code},
									async : false,
									success : function (result2) {
										
										
								if(result2=='OK'){
									
									output += " <div style=\"position:absolute; right:0px; bottom:0px;\"><a onclick=\"crewReviewWritePage('"+result[i].walk_code+"')\"class=\"cart-btn\" style=\"padding:3px; border-radius:3px; margin:3px;\">후기작성하기</a></div>";
								}else{
									output += " <div style=\"position:absolute; right:0px; bottom:0px;\"><a class=\"cart-btn gray-select\" style=\"padding:3px; border-radius:3px; box-shadow: none; border:0px; cursor:default; margin:3px;\">후기작성완료</a></div>";
								}										
											
										}
									
								});
	
								
							} 		
						}
					}
					
					output += "</div>";

				 }
				
				
			//카드에 출력하기
			$("#printWalkInfoList").html(output);			
		

			//지도출력하기
				for(var k = 0; k < result.length; k++){
					
					var customBounds = new kakao.maps.LatLngBounds(); //좌표를 모두 담은 지도위치 소환하는 객체
				//카드 출력 후 지도 출력될 빨간선 정의
				var clickLine = new kakao.maps.Polyline({
		 	   		strokeWeight: 3, // 선의 두께입니다 
		 	    	strokeColor: '#db4040', // 선의 색깔입니다
		 	    	strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		 	    	strokeStyle: 'solid' // 선의 스타일입니다
		 		}); 
				
				
				var locatedata= result[k].walk_map ; //서버에서 가져온 지도 좌표들 문자열
				
				var customPath = [];
				
				console.log(locatedata); 
				//서버에서 가져온 좌표를 변환하기 전 배열변수에 입력
				customPath = locatedata.replaceAll("\\","").replace("[\"","").replace("\"]","").split("\",\"");
				
				console.log("0번째"+customPath[0]); 
				console.log(customPath); 
				//서버에서 가져온 좌표를 카카오 맵에서 사용할 수 있도록 변환하는 작업
			 	for(var l =0; l <customPath.length; l++){ 
			 		var locateCenterdata= new kakao.maps.LatLng(33.450701, 126.570667);
			 		console.log(customPath[l]);
			 		customPath[l]=JSON.parse(customPath[l]);
			 		
			 		locateCenterdata.La= customPath[l].La;
			 		locateCenterdata.Ma= customPath[l].Ma;
			 		
					customPath[l]=locateCenterdata;
					customBounds.extend(customPath[l]);
			 	}
			 	console.log("입력할 변환된 좌표 "+customPath); 
		 	
			 	var mapContainer  = document.getElementById('map'+k), // 지도를 표시할 div.
			 		mapOption  = { 
			 		disableDoubleClickZoom: true, //더블클릭 줌 막기
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
				    image: startImage, // 출발 마커이미지를 설정합니다
				    clickable:false
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
				    image: arriveImage, // 도착 마커이미지를 설정합니다
				    clickable:false
				});
				//출발마커 찍기
				startMarker.setPosition(customPath[0]);
		    	startMarker.setMap(map);
		    	
				//도착마커 찍기
		    	arriveMarker.setPosition(customPath[customPath.length-1]);
		    	arriveMarker.setMap(map);
		    	
				clickLine.setPath(customPath);
				clickLine.setMap(map);
				
				
				//선의 길이 총 길이와, 걷는 시간을 표시하는 output출력내용입니다./* 총 거리: "+distance+"m, 도보: "+walkkTime+"분 */
				var distance = Math.round(clickLine.getLength());
				var walkkTime = distance / 67 | 0;
							
				
				//날씨정보 출력
				var weatherCheck = result[k].walk_weatherinfo.split("/")[0];
				
				var divurl = "";
				if (weatherCheck=="0"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/clear.png';
				}else if (weatherCheck=="1"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/cloudy.png';
				}else if (weatherCheck=="2"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/blackcloudy.png';
				}else if (weatherCheck=="3"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/rain.png';
				}else if (weatherCheck=="4"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/sleet.png';
				}else if (weatherCheck=="5"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/snow.png';
				}
				
				//출발일시 사용자에게 보여질문장으로 변환작업
				var time = result[k].walk_time;
				console.log("time: "+time);
				var timerow = time.split(" ");
				var yyMMdd = timerow[0].split("-")[0]+"년 "+timerow[0].split("-")[1]+"월 "+timerow[0].split("-")[2]+"일 ";
				time = yyMMdd+" "+timerow[1].split(":")[0]+"시 "+timerow[1].split(":")[1]+"분";
				
				var mapinfoOutput = "<div style = \"float:left; border-bottom:1px solid #ddd;\">출발: "+time+"</div>";
				mapinfoOutput+="<div style = \"background-image: url('"+divurl+"'); background-size:30px; background-repeat:no-repeat; background-position:center; float:right; width:30px; height:25px;\"id=\"#weatherDiv"+k+"\"></div>";
				$("#mapinfo"+k).html(mapinfoOutput);
				
				
			}
		
		}else{
			console.log("등록된 게시물이 없습니다.");
			output = "<div class=\"d-flex align-items-center justify-content-center\"style=\"width:100%; height: 100%; text-align:center; color:white;\">등록된 게시물이 없습니다.</div>";
			
			$("#printWalkInfoList").html(output);
		}
			}
		});
}




//크루산책리뷰작성페이지 이동요청
function crewReviewWritePage(cwbboardcode){
	
	console.log("크루산책리뷰작성페이지이동요청"+cwbboardcode);
	location.href='crewReviewWritePage?crewWalkCode=' + cwbboardcode;
	
}
//크루산책상세페이지 이동요청
function crewWalkViewPage(walkcode){
	console.log(walkcode);
	location.href='crewWalkViewPage?crewWalkCode='+walkcode;
}



//이전페이지
function prevCrewReviewListPaging(){
	if(localReviewPage > 1){
		console.log("이전페이지");
		crewWalkListPaging(localReviewPage-1);
		return null;
	}
	console.log("이전페이지가 없습니다");
	
}

//다음페이지
function nextCrewReviewListPaging(){
	if(localReviewPage < localReviewMaxPage){
		console.log("다음페이지");
		crewWalkListPaging(localReviewPage+1);
		return null;
	}
	console.log("다음페이지가 없습니다");
}




//산책 후기 페이징처리하는 ajax
function crewReviewListPaging(page){
	
	console.log("산책 후기 페이징 처리 시작");
	localReviewPage = page;
	var output = "";
	var pagingOutput = "";
	
	$.ajax({
		type : "get",
		url : "crewReviewListPaging_ajax",
		data : { "page" : page },
		async : false,
		dataType : "json",
		success : function (result) {
			if (result.length >0){
			console.log(result[0].endPage);
			localReviewMaxPage= result[0].endPage;
			
				for (var i = 0; i < result.length; i++){
					
					//현재 산책모집게시글에 참여중인 사람 수 구하기
					var walk_midRow = result[i].walk_mid.split("/");
					var midCount= walk_midRow.length;
					
					
					//카드에 보여질 아웃풋 만들기
					
					output += " <div id = \"box"+i+"\" style=\"position:relative; background-color: gray; padding:0px; box-shadow:0px 0px 10px 0px rgb(0,0,0,0.1); cursor:pointer; margin-bottom: 5px; width: 100%;  border-radius:3px;\"> "												
							+ " <div class=\"row align-items-center\" onclick=\"crewReviewPage('"+result[i].walk_code+"')\" ";
							
					
					output +="style=\"padding:0px; ";
					
					output +="margin-right: 0px; margin-left: 0px; \"> "	
							+" <div class=\"col-lg-5 align-items-center\" style=\"height:100px; padding: 0px; ";
					
					output += "\"> "
							+" <div id=\"mapR"+i+"\" style=\"display:inline-block; width:100%; height:100px; background-color:gray; border-radius:3px;\"></div> "
							+" </div> "
							+" <div class=\"col-lg-7\" style=\"background-color:white; border-radius:3px; height:100px; ";
					  
					output +="\"> "
							+" <div style=\"display:inline-block; width:100%; height:100px; overflow:hidden\"> "
							+" <div id =\"mapReviewinfo"+i+"\"> 출발일시 인원수</div> "
							+" <div style=\"clear:both;\"><h5 style=\"display:inline-block; margin-bottom:9px;\">"+result[i].walk_title+"</h5>"
							+" <div style=\"display:inline-block; float:right;\">"+result[i].walk_writer+"</div></div>  "
							+" <div style=\"clear:both;\">"+result[i].walk_content+"</div> "
							+" </div> "
							+" </div> "
							+" </div> ";
							
					
					
					
					
					output += "</div>";

				 }
				
				
			//카드에 출력하기
			$("#printWalkReviewInfoList").html(output);
		

			//지도출력하기
				for(var k = 0; k < result.length; k++){
					
					var customBounds = new kakao.maps.LatLngBounds(); //좌표를 모두 담은 지도위치 소환하는 객체
				//카드 출력 후 지도 출력될 빨간선 정의
				var clickLine = new kakao.maps.Polyline({
		 	   		strokeWeight: 3, // 선의 두께입니다 
		 	    	strokeColor: '#db4040', // 선의 색깔입니다
		 	    	strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		 	    	strokeStyle: 'solid' // 선의 스타일입니다
		 		}); 
				
				
				var locatedata= result[k].walk_map ; //서버에서 가져온 지도 좌표들 문자열
				
				var customPath = [];
				
				console.log(locatedata); 
				//서버에서 가져온 좌표를 변환하기 전 배열변수에 입력
				customPath = locatedata.replaceAll("\\","").replace("[\"","").replace("\"]","").split("\",\"");
				
				console.log("0번째"+customPath[0]); 
				console.log(customPath); 
				//서버에서 가져온 좌표를 카카오 맵에서 사용할 수 있도록 변환하는 작업
			 	for(var l =0; l <customPath.length; l++){ 
			 		var locateCenterdata= new kakao.maps.LatLng(33.450701, 126.570667);
			 		console.log(customPath[l]);
			 		customPath[l]=JSON.parse(customPath[l]);
			 		
			 		locateCenterdata.La= customPath[l].La;
			 		locateCenterdata.Ma= customPath[l].Ma;
			 		
					customPath[l]=locateCenterdata;
					customBounds.extend(customPath[l]);
			 	}
			 	console.log("입력할 변환된 좌표 "+customPath); 
		 	
			 	var mapContainer  = document.getElementById('mapR'+k), // 지도를 표시할 div.
			 		mapOption  = { 
			 		disableDoubleClickZoom: true, //더블클릭 줌 막기
			 	       center:customPath[0], // 지도의 중심.
			 	        level: 3 // 지도의 확대 레벨.
			 	    };


			 	var map2 = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다.
			
			 	//지도 마무리 설정
				map2.setDraggable(false);//드래그를 막는다
				map2.setZoomable(false);//줌스크롤을 막는다
				map2.setBounds(customBounds);//여러좌표들을 다 담는 화면이동을 한다(확대레벨 바뀌어버림)
				console.log("customBounds내용:"+customBounds);
				console.log("최종지도레벨"+map2.getLevel());
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
				    image: startImage, // 출발 마커이미지를 설정합니다
				    clickable:false
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
				    image: arriveImage, // 도착 마커이미지를 설정합니다
				    clickable:false
				});
				//출발마커 찍기
				startMarker.setPosition(customPath[0]);
		    	startMarker.setMap(map2);
		    	
				//도착마커 찍기
		    	arriveMarker.setPosition(customPath[customPath.length-1]);
		    	arriveMarker.setMap(map2);
		    	
				clickLine.setPath(customPath);
				clickLine.setMap(map2);
				
				
				//선의 길이 총 길이와, 걷는 시간을 표시하는 output출력내용입니다./* 총 거리: "+distance+"m, 도보: "+walkkTime+"분 */
				var distance = Math.round(clickLine.getLength());
				var walkkTime = distance / 67 | 0;
							
				
				//날씨정보 출력
				var weatherCheck = result[k].walk_weatherinfo.split("/")[0];
				
				var divurl = "";
				if (weatherCheck=="0"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/clear.png';
				}else if (weatherCheck=="1"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/cloudy.png';
				}else if (weatherCheck=="2"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/blackcloudy.png';
				}else if (weatherCheck=="3"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/rain.png';
				}else if (weatherCheck=="4"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/sleet.png';
				}else if (weatherCheck=="5"){
					divurl='${pageContext.request.contextPath}/resources/fileUpload/weatherIcon/snow.png';
				}
				
				//출발일시 사용자에게 보여질문장으로 변환작업
				var time = result[k].walk_time;
				console.log("time: "+time);
				var timerow = time.split(" ");
				var yyMMdd = timerow[0].split("-")[0]+"년 "+timerow[0].split("-")[1]+"월 "+timerow[0].split("-")[2]+"일 ";
				time = yyMMdd+" "+timerow[1].split(":")[0]+"시 "+timerow[1].split(":")[1]+"분";
				
				var mapinfoOutput = "<div style = \"float:left; border-bottom:1px solid #ddd;\">출발: "+time+"</div>";
				mapinfoOutput+="<div style = \"background-image: url('"+divurl+"'); background-size:30px; background-repeat:no-repeat; background-position:center; float:right; width:30px; height:25px;\"id=\"#weatherDiv"+k+"\"></div>";
				$("#mapReviewinfo"+k).html(mapinfoOutput);
				
				
			}
		
		}else{
			console.log("등록된 게시물이 없습니다.");
			output = "<div class=\"d-flex align-items-center justify-content-center\"style=\"width:100%; height: 100%; text-align:center; color:white;\">등록된 게시물이 없습니다.</div>";
			
			$("#printWalkReviewInfoList").html(output);
		}
			}
		});
}


//크루후기 상세페이지이동요청 

function crewReviewPage(walk_code){
	location.href="crewReviewPage?walk_code="+walk_code;
	
}
</script>

<!-- 웹소켓용 스크립트 -->

<script>


var customUrl='${pageContext.request.contextPath}/connectWSK';

var sock = new SockJS(customUrl);

//채팅방 접속시 실행됨
sock.onopen = function() {
    console.log('채팅접속'); 
};

//메세지 받을 시 실행됨
sock.onmessage = function(e) {
	console.log("메세지받음");
	output="";
    
	var recieveData = JSON.parse(e.data);
    if(recieveData.length == 0 ){
    	
    	output += "<p class=\"text-center\"> 채팅 내용이 없습니다. </p>";
    }else if(recieveData.length > 0) {
    	for(var i = 0; i < recieveData.length; i++){
    		
    		if('${sessionScope.loginId}' == recieveData[i].chat_id){
    					output += "<div style=\"margin:30px;\"><div class=\" d-flex justify-content-end align-items-end \">"
    							+"<span style=\"font-size:15px; margin-right:10px; font-weight:400;\">나</span>";
    					if(recieveData[i].chat_profile!=null){
    						output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/"+ recieveData[i].chat_profile+"');\"></div>";
    						
    					}else{
    						output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/basic.jpeg');\"></div>"
    					}
    					
    					output+="</div>"
        				+ "<div class=\"d-flex justify-content-end align-items-end\" style=\"margin-top:5px;\">"
        		  		+ "<div style=\"font-size:10px; margin-right:10px; text-align:right; \">"+recieveData[i].chat_date+"</div>"
        	 			+ "<div style=\"float:right; border-radius:5px; padding:10px; background-color:#F28123;\"><pre>"+recieveData[i].chat_content+"</pre></div>"
        		  		+ "</div></div>";
    		}else{
    			output += "<div style=\"margin:30px;\"><div class=\" d-flex justify-content-start align-items-end \">";
    				
    			if(recieveData[i].chat_profile!=null){
    				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/"+ recieveData[i].chat_profile+"');\"></div>";
    			
    			}else{
    				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/basic.jpeg');\"></div>"
    			}
    		
    			output+="<span style=\"font-size:15px; margin-left:10px; font-weight:400;\">"+recieveData[i].chat_id+"</span></div>"
    			+ "<div class=\"d-flex justify-content-start align-items-end\" style=\"margin-top:5px;\">"
    			+ "<div style=\"float:left; border-radius:5px; padding:10px; background-color:#374b56;\"><pre style=\"color:white;\">"+recieveData[i].chat_content+"</pre></div>"
      			+ "<div style=\"font-size:10px; margin-left:10px; text-align:left; \">"+recieveData[i].chat_date+"</div>"
      			+ "</div></div>";
    		}
    	}
    }else{
    	if('${sessionScope.loginId}' == recieveData.chat_id){
    		output="";
			output += "<div style=\"margin:30px;\"><div class=\" d-flex justify-content-end align-items-end \">"
				+"<span style=\"font-size:15px; margin-right:10px; font-weight:400;\">나</span>"; 
			if(recieveData.chat_profile!=null){
				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/"+ recieveData[i].chat_profile+"');\"></div>";
			
			}else{
				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/basic.jpeg');\"></div>"
			}
		
			output+="</div>"
			+ "<div class=\"d-flex justify-content-end align-items-end\" style=\"margin-top:5px;\">"
  			+ "<div style=\"font-size:10px; margin-right:10px; text-align:right; \">"+recieveData.chat_date+"</div>"
			+ "<div style=\"float:right; border-radius:5px; padding:10px; background-color:#F28123;\"><pre>"+recieveData.chat_content+"</pre></div>"
  			+ "</div></div>";
	  		
		}else{
			output="";
			output += "<div style=\"margin:30px;\"><div class=\" d-flex justify-content-start align-items-end \">";
			console.log("프로필 사진내용:"+recieveData.chat_profile);
			if(recieveData.chat_profile != null){
				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/"+ recieveData.chat_profile+"');\"></div>";
			
			}else{
				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/basic.jpeg');\"></div>"
			}
		
			output+="<span style=\"font-size:15px; margin-left:10px; font-weight:400;\">"+recieveData.chat_id+"</span></div>"
			+ "<div class=\"d-flex justify-content-start align-items-end\" style=\"margin-top:5px;\">"
			+ "<div style=\"float:left; border-radius:5px; padding:10px; background-color:#374b56;\"><pre style=\"color:white;\">"+recieveData.chat_content+"</pre></div>"
  			+ "<div style=\"font-size:10px; margin-left:10px; text-align:left; \">"+recieveData.chat_date+"</div>"
  			+ "</div></div>";
		}
    }
    
	 $("#msgScreen").append(output);
	 //스크롤 맨 아래로 내림
	 $("#msgScreen").scrollTop($("#msgScreen")[0].scrollHeight);
};

//채팅방 나갈시 실행됨
sock.onclose = function() {
    console.log('채팅나감');
};


//채팅 인풋태그에 엔터키 치면 메세지 전송함
document.getElementById("inputMessage").onkeydown = function(event) { 
	        
	 var key = event.key || event.keyCode;

	if ((key === 'Enter' && !event.shiftKey) || (key === 13 && key != 16)) {
    	event.preventDefault();
    	 console.log("메세지 전송 실행");
    	 
    	 var chatContent = $("#inputMessage").val();
    	 
    	 
    	 //trim()은 공백문자를 모두 지운다.
    	 if(chatContent.trim().length >0){

    		//현재 시간을 가져온다.
    		var today = new Date();
    		today.setHours(today.getHours() + 9);
    	    var transToday = today.toISOString().replace('T', ' ').substring(0, 19);
    	    
    		console.log(transToday);
    		//채팅 내용을 가공
    		output="";
    		output += "<div style=\"margin:30px;\"><div class=\" d-flex justify-content-end align-items-end \">"
				+"<span style=\"font-size:15px; margin-right:10px; font-weight:400;\">나</span>"; 
			if(${sessionScope.loginProfile != null}){
				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/${sessionScope.loginProfile}');\"></div>";
			
			}else{
				output+= "<div style=\"width:50px; height:50px; background-size:cover; border-radius:3px; background-position:center; background-image:url('${pageContext.request.contextPath}/resources/fileUpload/basic.jpeg');\"></div>"
			}
		
			output+="</div>"
			+ "<div class=\"d-flex justify-content-end align-items-end\" style=\"margin-top:5px;\">"
  			+ "<div style=\"font-size:10px; margin-right:10px; text-align:right; \">"+transToday+"</div>"
			+ "<div style=\"float:right; border-radius:5px; padding:10px; background-color:#F28123;\"><pre>"+chatContent+"</pre></div>"
  			+ "</div></div>";
    	 
    		//채팅내용을 화면에 쌓고 인풋태그 값 초기화 
       		$("#msgScreen").append(output);
       		//스크롤 맨 아래로 내림
       		$("#msgScreen").scrollTop($("#msgScreen")[0].scrollHeight);
    	 	$("#inputMessage").val("");
    	 
    	 	//보내줄 Dto객체형테의 json객체 만들기
    	 	var chatDtoJS={
    			"chat_code" : '${sessionScope.crewCode}',
    			"chat_id" : '${sessionScope.loginId}',
    			"chat_content" : chatContent
    	 	};
    	 	//json객체를 json형태의 문자열로 변환
    	 	console.log(chatDtoJS);
    	 	console.log(JSON.stringify(chatDtoJS));
    		//ChatDto 데이터 전송
    	 	sock.send(JSON.stringify(chatDtoJS));
    		} 
    	return false;
	}     
}


</script>
</html>