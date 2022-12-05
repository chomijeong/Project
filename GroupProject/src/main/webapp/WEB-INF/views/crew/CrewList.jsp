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
	<title>산책 크루 찾기</title>

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
/* 강아지 무게제한 사이즈 아이콘스타일 */
.custom_bgimg{

display:inline-block;
width:40px; 
height:40px; 
background-size:40px;


}
.custom_dogicon{
text-align:center;  
width:60px; 
height: 45px; 
background-color:#ddd;
border-radius:15px 15px 0px 0px; 
margin-right:2px; 
display:inline-block;
background-size:40px;
background-position:center 0px;
background-repeat:no-repeat;

}


</style>
</head>
<script type="text/javascript">


</script>

<body>

	<%@ include file="../include/Topbar.jsp" %>
	

	
	

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section"  >
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Crew</p>
						<h1>크 루 찾 기</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
	
	
	
	
	
	
	
	
	
	
	
	
	

<!-- check out section -->
	<div class="checkout-section mt-100 mb-150" >
		<div class="container">
				<div class="row" >
				
				
					<div class="col-lg-12" >
						<div class="row">

							<div class="col-lg-2" style="margin-bottom:15.7px;  ">
						
								<select id="selTag" onchange="selectLocalAddr(this)" >
									<option value="전체지역">전체지역</option>
									<option value="서울">서울</option>
									<option value="부산">부산</option>
									<option value="대구">대구</option>
									<option value="인천">인천</option>
									<option value="광주">광주</option>
									<option value="대전">대전</option>
									<option value="울산">울산</option>
									<option value="세종">세종</option>
									<option value="경기">경기</option>
									<option value="강원">강원</option>
									<option value="충북">충북</option>
									<option value="충남">충남</option>
									<option value="경북">경북</option>
									<option value="경남">경남</option>
									<option value="전북">전북</option>
									<option value="전남">전남</option>
									<option value="제주">제주</option>
								</select>
					
							</div>
						
							<div class="col-lg-2" style="margin-bottom:15.7px;">
						
							<select name="searchType" id="searchTypeSel">
								<option value="crew_name">크루이름</option>
								<option value="crew_master">크루장</option>
								<option value="crew_introduce">크루소개글</option>
							</select>
						
							</div>
						
							<div class= "col-lg-6"style="width:100%; margin-bottom:15.7px;">
								
								<input type="text" value="" name="searchWord" id="searchWord">
								</div>
						
							<div class="col-lg-2" >
							<a class = "cart-btn text-center" style="width:100%; margin-top:4px;" onclick="searchBtn()">검색</a>
							</div>
				
						</div>
						<br><br><br><br><br>
					</div>
				
				
				
					<div class="col-lg-1"></div>
				
					<div class="col-lg-10" style="padding:0px;" id="resultSearchCrewDiv">
						<!-- ajax 검색결과 output자리-->
					</div>
					
				<div class="col-lg-1"></div>
				<div id="pagingAdd"class="col-lg-12" style="text-align:center;">
					<!-- 더보기자리 -->
				</div>
				<c:if test="${sessionScope.crewCode == null}">
						<div class="col-lg-12 row">
							<div class="col-lg-10"></div>
							<div class="col-lg-2" style="width:100%;"><a class="cart-btn" href="crewWritePage"  style="width:100%; text-align:center;">크루 생성하기</a></div>
						</div>
				</c:if>
						
			</div>
		</div>
	</div>
	<!-- end check out section -->
	<div id="arrow" onclick="document.body.scrollIntoView({ behavior: 'smooth' })" style="display:none; float:right; position:sticky; bottom:15.7px; margin-right: 15.7px; margin-bottom:15.7px;">
			<a class="cart-btn" style="padding-left:25px; text-align:center; background-color:#ddd; color:#133b4d"><i class="fa-solid fa-arrow-up-long"></i></a>
	</div>



<div style="clear:both;"></div>

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
var msg='${msg}';
if(msg.length>0){
	Swal.fire(msg);
}


//크루목록 페이징 ajax에 요청할때 요청하는 곳마다 각기다른 정보를 넣기위한 전역변수설정
var localSearchType = "";
var localSearchWord = "";
var localSearchAddr = '${memberAddr}';
var localPageNum = "";

//계속 쌓이게 할 용도의 전역 아웃풋
var output = "";
var currentPage = 1;


//검색 초기지역 설정
//회원의 지역정보를 검색 select태그에 입력
$(document).ready(function () {

$('#selTag option[value='+localSearchAddr+']').attr('selected','selected');


//실행 되자마자 기본 목록 불러오기
crewListPaging(1,localSearchType,localSearchWord,localSearchAddr); 

});




//지역 옵션 선택시 실행됨
function selectLocalAddr(selOBJ){
	var selVal= $(selOBJ).val();
	localSearchAddr = selVal;
	console.log("지역선택:"+localSearchAddr);
}

//검색버튼누르면 실행
function searchBtn(){
	//아웃풋 초기화
	output="";
	currentPage = 1;
	localSearchType = $("#searchTypeSel").val();
	localSearchWord = $("#searchWord").val();
	console.log("검색지역:"+localSearchAddr+"검색종류선택:"+localSearchType+"입력된 검색어:"+localSearchWord);
	crewListPaging(1,localSearchType,localSearchWord,localSearchAddr); 
}


//더보기 누르면 실행됨
function addPage(){
	console.log("더보기 누름");
	//이전 페이지 아웃풋이 있었다면 이후 페이지 이어서 검색
	currentPage += 1;
	console.log("페이징 처리시 넘어가는 파라메터:"+currentPage+"/"+localSearchType+"/"+localSearchWord+"/"+localSearchAddr);
	crewListPaging(currentPage,localSearchType,localSearchWord,localSearchAddr); 
}




//페이징처리하는 ajax
function crewListPaging(searchPage,searchType,searchWord,searchAddr){
	//더보기 초기화
	var addCheck=false;
	$("#pagingAdd").html("");
	
	$.ajax({
		type : "get",
		url : "crewPaging_ajax",
		data : { "page" : searchPage ,"searchType" : searchType, "searchWord" : searchWord,"searchAddr":searchAddr},
		async : false,
		dataType : "json",
		success : function (result) {
			console.log(result);
			if(result.length>0 && result[0].page < result[0].endPage){
				addCheck=true;
			}
			if(result.length>0 && result.length>0){
				for(var i =0; i < result.length; i++){
			
					output += " <div style=\"position:relative; width:95%; margin-left:15px; margin-bottom: 80px;\">"
			    	+" <div class=\"row\" style=\" background-color:#ddd;  padding:20px; width:100%; box-shadow: -4px 12px 13px 5px gray; margin:0px; border-radius:15px 15px 15px 15px;\">"
			    	+" <div class=\"col-lg-6\" style=\"height:150px;\"></div>"
			    	+" <div class=\"col-lg-6\" style=\"height:150px;\"></div></div>"
			    	+" <div class=\"d-flex justify-content-between\" style=\"position:absolute; top:-35px; left:-5px; width:100%\">"
			    	+" <div style=\"cursor:default; text-align:center; padding: 10px; width:180px; height: 45px; background-color:#374b56;"
			    	+" border-radius:15px 15px 0px 0px; margin-left:20px; \">"
			    	+" <h5 style=\"color:white; \">"+result[i].crew_region+"</h5></div>"
			    	+" <div style=\" position:relative; width: 200px; height:45px; margin-right:15px;\">";
			    
			    	var crewdogWT = result[i].crew_dogweight.split('/');
			    
			    	if(crewdogWT[0] =='0010'){ 
			    		output+=" <div class=\"custom_dogicon\" style=\" background-image: url('${pageContext.request.contextPath}/resources/fileUpload/dogbody/dogbody_s.png'); "
			    		+" position:absolute; left:0px; bottom:0px; \">"
			    		+" <h5 style=\"color:white;\"></h5></div>";
			    	}
			    	if(crewdogWT[1] =='1025'){
			    		output += " <div  class=\"custom_dogicon\" style=\"background-image:url('${pageContext.request.contextPath}/resources/fileUpload/dogbody/dogbody_m.png'); "
			    		+" position:absolute; left:70px; bottom:0px; \">"
			    		+" <h5 style=\"color:white;\"></h5></div>";
			    	}
			    
			    	if(crewdogWT[2] =='2580'){			    
					    output += " <div  class=\"custom_dogicon\" style=\"background-image:url('${pageContext.request.contextPath}/resources/fileUpload/dogbody/dogbody_l.png');"
					    +" position:absolute; right:0px; bottom:0px; \">"
			    		+" <h5 style=\"color:white;\"></h5></div>";
			    	}
			    
			    	output+="</div></div>"
			    	+" <div class=\"billing-address-form row\" style=\"padding:20px; position:absolute; width:100%; left:-10px; top:10px; margin:0px; cursor:default; "
			    	+" padding-left:0px; border:0px; background-color:#374b56; border-radius:15px;\">"
			    	+" <div class=\"col-lg-3\" style=\"text-align:center;\">"
			    	+" <div id=\"imgbox\" style=\" margin-left:auto; margin-right:auto; background-size:cover; background-position:center; "
			    	+" border-radius:3px; width:150px; height:150px; overflow:hidden; background-image:url('${pageContext.request.contextPath}/"
			   	 	+"resources/fileUpload/"+result[i].crew_profile+"');\"></div></div>"
			   	 	+" <div class=\"col-lg-9\" style=\"height:150px;  cursor:default; color:white;\">"
			    	+" <h4 style=\"display:inline-block; cursor:default; color:white; padding: 5px; margin-right:1px;\">"+result[i].crew_name+" |</h4>크루장: "+result[i].crew_master
			    	if(${sessionScope.crewCode == null} && '${memberAddr}' == result[i].crew_region){
			    		output+= " <a class=\"cart-btn\" style=\"float:right;\" onclick=\"crewJoin('"+result[i].crew_name+"','"+result[i].crew_code+"')\">크루 가입</a>";
			    	}
			    	if('${sessionScope.crewCode}' == result[i].crew_code){
			    		output+= " <a class=\"cart-btn\" style=\"float:right; background-color: black;\" onclick=\"location.href='crewMainPage'\">크루 이동</a>";
			    	}
			    
			    	output +=	"<div style=\"display:inline-block; font-weight:400; font-size:15px; padding:5px; margin-right:15.7px; float:right;\">"+result[i].currentcount+"명/ "+result[i].crew_maxcount+"명</div>"
			    	+ "<hr style=\"background-color:white;\">"
			    	+" <textarea readonly style=\"padding-top:0px; margin-bottom:0px; cursor:default; border:0px; background-color:rgb(0,0,0,0);"
			    	+" height:60%; width:100%; color:white;\">"+result[i].crew_introduce+"</textarea></div></div></div>";
				}
			}
				
			if(output.length==0){
				output += "<p style=\"text-align:center; color:#ddd;\">해당 조건의 크루가 없습니다.</p>";}
				
			$("#resultSearchCrewDiv").html(output);
				
			if(addCheck){
				$("#pagingAdd").html("<a onclick=\"addPage()\" style=\"width:200px;\" class=\"cart-btn\">+더보기</a>");}			
		}
	});
}


function crewJoin(crewName,crewCode){
	Swal.fire({
		   title: '정말로'+crewName+'에 가입하시겠습니까?',
		   icon: 'warning',

		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#F28123', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#ddd', // cancel 버튼 색깔 지정
		   confirmButtonText: '가입', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정

		   reverseButtons: true, // 버튼 순서 거꾸로

		}).then(result => {
		   // 만약 Promise리턴을 받으면,
		   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
			  //가입요청처리시작
			  
			  
			 location.href="crewJoin?crewCode="+crewCode;
					
			
		   
		   }
		});
}

//Check to see if the window is top if not then display button
$(window).scroll(function(){
if ($(this).scrollTop() > 100) {
$('#arrow').fadeIn();
} else {
$('#arrow').fadeOut();
}
});

</script>
</html>