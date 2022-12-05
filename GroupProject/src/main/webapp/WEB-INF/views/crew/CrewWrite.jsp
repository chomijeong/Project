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
	<title>산책 크루 생성</title>

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
padding:7px;
float:right; 
width:22.333%; 
height:57px; 
border: 1px solid #ddd; 
border-left:0px;
border-radius:0px 0px 0px 0px;"
font-size:12px;
color:#ddd;
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

.conserve{

border:1px solid #ddd;
border-radius:3px;
}

/*a.cart-btn 스타일 가져와서 만든 새로운 클래스*/
span.inputbtn{
    background-color: #F28123;
    color: #fff;
    border:1px solid #F28123;
}
/*a.cart-btn:hover 스타일 가져와서 만든 새로운 클래스*/
span.inputbtn:hover {
  background-color: #051922;
  border:1px solid  #051922;
  color: #F28123;
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
						<p>Today's Walk</p>
						<h1>산책 크루 생성</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->


		

<!-- check out section -->
	<div class="checkout-section mt-150 mb-150" >
		<div class="container">
				<div class="row">
					<div class="col"></div>
					<div class="col-lg-10">
						<div class="card ">
							<!--  -------------- -->
							<div class="card-header">
								<h5 class="mb-0" >
									<div>산책 크루 생성</div>
								</h5>
								
							</div>
							<!--  -------------- -->
						<form id="formTag" action="crewWrite" method="POST" enctype="multipart/form-data">
							<div class="card-body" style="padding-bottom:0px;">
								<div class="billing-address-form row">
									<div class="col-lg-4">
										<div class="card" style="height:100%; ;">
											
											<div class="card-body" style="width:150px; text-align:center; background-color: rgb(0,0,0,0.07); width: 100%; 
											border-radius: 3px;display: flex; align-items:center; justify-content: center;">
												<div id="imgbox" style="  background-size:cover; background-position:center; border-radius:3px; width:150px; height:150px; overflow:hidden; background-image:url('${pageContext.request.contextPath}/resources/myupload/baseDogFoot.png');">
												</div>
											</div>
											<a href="#inputFile" onclick="$('#fileUpload').click()"><div  class="card-header text-center" style="border-top:1px solid #ddd; border-bottom:0px; ">
												이미지 등록하기</div></a>
												<input type="file" name="crew_file"style="display:none; " id="fileUpload" onchange="loadFile(this)">
										</div>
										
									</div>
									
									<div class="col-lg-8">
									
										
										<div style=" margin-bottom:15.7px; width:100%;">
											<input id="inputCrewName" name="crew_name" type="text" style="margin-top:0px; height:57px; outline:none; width:100%;  border-radius:3px 0px 0px 3px;" 
											placeholder="산책 크루 이름을 적어주세요">
										</div>
										
									
										
										
										<div>
											<input type="text" readonly style="float:left; outline:none; border-right:0px; width:33%; text-align:center; padding:17px; border-radius:3px 0px 0px 2px ;"  value="강아지 무게제한 설정"><span id="dogW2" onclick="inputbtnSTtoggle(this)" class="spanSTYL" 
											style="margin-bottom:15.7px; text-align:center;border-radius:0px 3px 3px 0px;">25kg~초과<br>대형견</span><span 
											id="dogW1" onclick="inputbtnSTtoggle(this)"style="text-align:center;"class="spanSTYL ">10kg~25kg<br>중형견</span><span style="border-radius:3px 0px 0px 3px; 
											 text-align:center;border-left:1px solid #ddd;"class="spanSTYL" onclick="inputbtnSTtoggle(this)" id="dogW0">~10kg미만<br>소형견</span>
											<input id="crew_dogweight" style="display:none;" type="text" name="crew_dogweight">
										</div>
										
										<div>	
											<textarea id="introduceComment" name="crew_introduce"style="height:100px;" placeholder="한줄 소개글을 작성해주세요."></textarea>
										</div>
										

									</div>
									
									<div class="col-12">
									<br>
									<a class="cart-btn" style="float:right;" onclick="crewWrite()">크루 생성 하기</a>
									</div>
								</div>
							</div>
						</form>
						
						</div>
					</div>
					<div class="col"></div>
			</div>
		</div>
	</div>
	<!-- end check out section -->
	
	

	로그인된 세션아이디 : ${sessionScope.loginId}


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

<script type="text/javascript">

//이미지 업로드 시 실행되는 함수
function loadFile(inputObj) {
	
  var file = event.target.files[0];
  
  var reader = new FileReader();
  
  reader.onload = function(inputObj){
	  $("#imgbox").css("background-image", "url("+inputObj.target.result+")");
  }
  reader.readAsDataURL(file);
  
  console.log(file);
  console.log(reader);
}

//강아지 무게제한 함수 


console.log('${memberInfo.dogsWeightCode}');
var memberDogsWeight = '${memberInfo.dogsWeightCode}';

var memberDogsWeightRow = memberDogsWeight.split("/");

var memberDogsWeightCheckRow = [false, false, false];

console.log(memberDogsWeightRow);

var formWCheck=[];

for(var i =0; i <memberDogsWeightRow.length; i++){
	
	if(memberDogsWeightRow[i] == "----"){
		console.log("값이 없습니다:"+memberDogsWeightRow[i]);
	}else{
		console.log("값이 있습니다:"+memberDogsWeightRow[i]);
		memberDogsWeightCheckRow[i] = true;	
		$("#dogW"+i).toggleClass('inputbtn');
	}
}

console.log(memberDogsWeightCheckRow);
function inputbtnSTtoggle(spanObj){
	
var tagId = $(spanObj).attr('id');

if(tagId=="dogW0"){
	if(memberDogsWeightCheckRow[0]){
		Swal.fire("회원님의 반려견 무게는 포함되어야 합니다.");
	}else{
		$(spanObj).toggleClass('inputbtn');
	}
	 
}else if(tagId=="dogW1"){
	if(memberDogsWeightCheckRow[1]){
		Swal.fire("회원님의 반려견 무게는 포함되어야 합니다.");
	}else{
		$(spanObj).toggleClass('inputbtn');
	}
	 
}else if(tagId=="dogW2"){
	if(memberDogsWeightCheckRow[2]){
		Swal.fire("회원님의 반려견 무게는 포함되어야 합니다.");
	}else{
		$(spanObj).toggleClass('inputbtn');
	}
}

}

function crewWrite(){
	var check= true;
	//확인할 사항: 이미지 파일 업로드를 하였는가, 크루이름을 썼는가, 소개한마디를 작성했는가, 강아지 무게제한을 입력했는가, 
	
	if($("#fileUpload").val().length>0){
		console.log("이미지있음");	
		
	}else{
		Swal.fire("크루 이미지가 없습니다.");
		check= false;
		return null;
	}
	
	if($("#inputCrewName").val().length>=2){
		console.log("크루이름이 2자이상입니다.");
		
	}else{
		Swal.fire("크루이름이 2자이하입니다.");
		check= false;
		return null;
		
	}
		
	if($("#introduceComment").val().length>=10){
		console.log("크루소개가 10자이상입니다.");
		
	}else{
		Swal.fire("크루소개가 10자이하입니다.");
		check= false;
		return null;
		
	}
	
	console.log("준비가 완료되었습니다.");
	var formDogWeightVal="";
	
	
	if($("#dogW0").hasClass("inputbtn")){
		formDogWeightVal+="0010/";
	}else{
		formDogWeightVal+="----/";
	}
	
	if($("#dogW1").hasClass("inputbtn")){
		formDogWeightVal+="1025/";
	}else{
		formDogWeightVal+="----/";
	}
	
	if($("#dogW2").hasClass("inputbtn")){
		formDogWeightVal+="2580";
	}else{
		formDogWeightVal+="----";
	}
	
	console.log("보낼 강아지 코드:"+formDogWeightVal);
	$("#crew_dogweight").val(formDogWeightVal);
	 $("#formTag").submit(); 
}


</script>
</html>