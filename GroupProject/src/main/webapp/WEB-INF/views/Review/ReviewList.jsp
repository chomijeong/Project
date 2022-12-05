
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

<!-- title -->
<title>산책후기목록</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
<!-- google font -->
<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;200;300;400;500;600&display=swap" rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/main.css">
<!-- responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css"
	rel="stylesheet">


<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<!-- fontawesome  -->
<script src="https://kit.fontawesome.com/9047b9ba4b.js"
	crossorigin="anonymous"></script>


<style type="text/css">


.latest-news-bg news-bg-1 {
	
}

.page-item.active .page-link { /* 페이징 버튼 색깔 변경 */
	z-index: 3;
	color: #fff;
	background-color: rgb(150, 150, 150);
	border-color: rgb(100, 100, 100);
}

.dataTables_length { /* 페이지 몇줄 까지 출력하는거 숨김 */
	display: none;
}

.dataTables_info { /* 하단 페이징 옆에 텍스트 지움 */
	display: none;
}

.pagination { /* 페이징 위치 */
	float: left;
	width: percentage((@ columns/ @ grid-columns));
}

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

a {
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

.btn-gray {
	background-color: #6c6e7e;
	color: white;
	padding-top: 9px;
	"
}

.btn-gray:hover {
	background-color: #858796;
	color: white;
}

.input-control {
	display: block;
	width: 30%;
	height: calc(1.5em + 0.75rem + 2px);
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #6e707e;
	background-color: #fff;
	border: 1px solid #d1d3e2;
	border-radius: 0.35rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

input {
	border: 1px solid #ddd;
	padding: 15px;
	width: 100%;
	border-radius: 3px;
}

/* input 자동완성입력시 input 란 배경색 변하게 되는데 배경색 유치해주는 css */
input:-webkit-autofill, input:-webkit-autofill:hover, input:-webkit-autofill:focus,
	input:-webkit-autofill:active {
	-webkit-text-fill-color: #000;
	-webkit-box-shadow: 0 0 0px 1000px #fff inset;
	box-shadow: 0 0 0px 1000px #fff inset;
	transition: background-color 5000s ease-in-out 0s;
}

select {
	border: 1px solid #ddd;
	padding: 15px;
	padding-right:10px;
	width: 100%;
	border-radius: 3px;
}

button {
	webkit-transition: 0.3s;
	o-transition: 0.3s;
	transition: 0.3s;
	border: 0px;
	border-radius: 50px;
	font-family: 'Poppins', sans-serif;
	display: inline-block;
	background-color: #F28123;
	color: #fff;
	padding: 10px 20px;
	width: 100%;
}

button:hover {
	background-color: #051922;
	color: #F28123;
}

.pagination-wrap ul li a.active{

  background-color: #F28123;
  
}

</style>

<script type="text/javascript">

console.log('입력받은 주소값:'+'${firstAddr}');
var fistAddr ='${firstAddr}';


</script>


</head>
<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/include/Topbar.jsp" %>
	<!-- end header -->

	<!-- search area -->

	<!-- end search arewa -->

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section ">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Review</p>
						<h1>산 책 후 기 목 록</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->





	<!-- DataTables Example -->
	<div class="latest-news mt-150 mb-150">

		<div class="container">

			<div class="row mb-100">
			
				<div class="col-lg-2 col-md-6">
				</div>
				<div class="col-lg-8 col-md-6 textalign-center">
					
					<div class="row">
							<div class="col-2">
						
							<select id = "selectLocalAddr" onchange="selectLocalAddr(this)">
								<option>전체지역</option>
								<option>서울</option>
								<option>부산</option>
								<option>대구</option>
								<option>인천</option>
								<option>광주</option>
								<option>대전</option>
								<option>울산</option>
								<option>세종</option>
								<option>경기</option>
								<option>강원</option>
								<option>충북</option>
								<option>충남</option>
								<option>경북</option>
								<option>경남</option>
								<option>전북</option>
								<option>전남</option>
								<option>제주</option>
							</select>
					
						</div>
					
					
						<div class="col-2">
						<select name="searchType" id="searchTypeSel">
							<option value="board_writer">작성자</option>
							<option value="board_title">글제목</option>
							<option value="board_title_content">글제목 + 글내용</option>
						</select>
						</div>
						
						<div class= "col-6"style="width:50%;">
						<input type="text" value="" name="searchWord" id="searchWord">
						</div>
						
						<div class="col-2">
						<button onclick="searchBtn()">검색</button>
						</div>
				
					</div>
				</div>

				<div class="col-lg-2 col-md-6">
				
			
					
				</div>


			</div>




			<div class="row" id ="printCard">



				
				
				

			</div>

		
		</div>


		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="pagination-wrap" >
						
							<ul id = "pagingnum">
						
			
							</ul>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- DataTables Example AND -->

	<!-- copyright -->
	<%@ include file="/WEB-INF/views/include/Footer.jsp" %>
	<!-- end copyright -->
	
	
	<!-- jquery -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">	</script>

	<!-- jquery -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.11.3.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	
	<!-- alert 창  -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<!-- 카카오지도api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b97f6706a8c69d9e1a92e4f095ca9d1c"></script>

	<!-- Page level custom scripts -->
	<%--   <script src="${pageContext.request.contextPath }/resources/js/demo/datatables-demo.js"></script> --%>
	
	
	
	<!-- 페이징 -->
	<script type="text/javascript">
	
$("#selectLocalAddr").val(fistAddr);
	
	$(document).ready(function(){
	
		ReviewListPaging(1,"board_writer","",fistAddr);
		
	});
	
	
	</script>



<script type="text/javascript">
	
//산책목록 페이징 ajax에 요청할때 요청하는 곳마다 각기다른 정보를 넣기위한 전역변수설정
var localSearchType = "";
var localSearchWord = "";
var localSearchAddr = "";
var localPageNum = "";
	
	
	
//지역 옵션 선택시 실행됨
function selectLocalAddr(selOBJ){
	var selVal= $(selOBJ).val();
	localSearchAddr = selVal;
	
}	


//검색버튼누르면 실행
function searchBtn(){
	localSearchType = $("#searchTypeSel").val();
	localSearchWord = $("#searchWord").val();
		
	ReviewListPaging(1,localSearchType,localSearchWord,localSearchAddr);
}

//페이지 번호 누르면 실행됨
function pageNumber(Pagenum){
		
	ReviewListPaging(Pagenum,localSearchType,localSearchWord,localSearchAddr);
}
	
	

	
	
	function ReviewListPaging(page,searchType,searchWord,searchAddr){
			
		
 		var output = "";
 		var output1 = "";
 	
 		var mid = "${sessionScope.loginId }";
		
		$.ajax({
			type : "get",
			url : "ReviewListPaging",
			data : { "page" : page , "searchType" : searchType, "searchWord" : searchWord,"searchAddr":searchAddr},
			async : false,
			dataType : "json",
			success : function (result) {
				console.log(result);
				if ( result.length > 0 ){
				
					
				console.log(result[0].walk_hits);
				console.log(result[0].walk_code);
				
				for (var i = 0; i < result.length; i++){
					
					//현재 산책모집게시글에 참여중인 사람 수 구하기
					var walk_midRow = result[i].walk_mid.split("/");
					console.log("walk_midRow"+walk_midRow);
					var midCount= walk_midRow.length;
					//출발일시 사용자에게 보여질문장으로 변환작업
					var time = result[i].walk_time;
					console.log("time: "+time);
					var timerow = time.split(" ");
					var yyMMdd = timerow[0].split("-")[0]+"년 "+timerow[0].split("-")[1]+"월 "+timerow[0].split("-")[2]+"일 ";
					time = yyMMdd+" "+timerow[1].split(":")[0]+"시 "+timerow[1].split(":")[1]+"분";
					
					/*  */
					output += "<div class=\"col-lg-4 col-md-6\">"+
					"<a href=\"reviewPage?walk_code="+result[i].walk_code+"&walk_hits="+result[i].walk_hits+"&member_id="+mid+"\")\">"+
		    		"<div style=\"border-radius:15px 15px 15px 15px;\" class=\"single-latest-news\">"+
					"<div class=\"latest-news-bg\" id=\"map"+i+"\" style=\"position:relative\">"+
					"<div  id = \"dogInfo"+i+"\" style=\"position:absolute; right:17.5px; bottom:2px; z-index:4; background-color:#F28123; background-size: 10px; padding-right:5px; padding-left:5px; border-radius:5px 5px 0px 0px\">"+
					"</div><div style=\"position:absolute; bottom:0px; z-index:5; width:100%; height:2px; background-color:#F28123;\"></div></div>"+
					"<div style=\"padding-top:17.5px;\" class=\"news-text-box\">"+
					"<div  id=\"mapinfo"+i+"\"></div><div style=\"clear:both\">출발일시: "+time+"</div>"+
					"<div>"+result[i].walk_startaddr+"</div><hr>"+
					"<div style=\"width:100%; height:25px; overflow:hidden;\"><h3>"+ result[i].walk_title +" <i class=\"fa-regular fa-thumbs-up\" style =\"font-size: 12px;\"> "+result[i].walk_recommend+"</i><i class=\"fa-regular fa-thumbs-down\" style=\"margin-left: 7px; font-size: 12px;\"> "+result[i].walk_decommend+"</i></h3></div>"+
					"<p class=\"blog-meta\" style = \"margin-top: 8px;\"><input type=\"hidden\"class=\"author\" value=\" "+ result[i].walk_code +"\">"+
					"<span class=\"author\"><i class=\"fas fa-user\"></i>"+result[i].walk_writer+"</span><span class=\"date\">"+
					"<i class=\"fas fa-calendar\"></i>"+ result[i].walk_date + "</span><span class=\"author\"><i class=\"fa-solid fa-ellipsis\"></i>조회수 ("+ result[i].walk_hits + ")</span></p>"+
					"<div style=\"overflow: hidden; height: 100px; width: 100%;\">"+
					"<p class=\"excerpt\">"+result[i].walk_content+"</p></div><hr>"+
					"<div class=\"row\"><div class=\"col-lg-12 col-md-6\">"+ 
					"<div style=\"float:left\"><i class=\"excerpt fa-regular fa-comment-dots\"></i> "+result[i].walk_replycount+"</div>"+
					"<div style=\"float:right\">"+midCount+"/"+result[i].walk_people+"</div>"+
					"</div></div></div></div></a></div>";
			
				
				}
				
			$("#printCard").html(output);
			
			//지도출력하기
				for(var i = 0; i < result.length; i++){
					
					var customBounds = new kakao.maps.LatLngBounds(); //좌표를 모두 담은 지도위치 소환하는 객체
				//카드 출력 후 지도 출력될 빨간선 정의
				var clickLine = new kakao.maps.Polyline({
		 	   		strokeWeight: 3, // 선의 두께입니다 
		 	    	strokeColor: '#db4040', // 선의 색깔입니다
		 	    	strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
		 	    	strokeStyle: 'solid' // 선의 스타일입니다
		 		}); 
				
				
				var locatedata= result[i].walk_map ; //서버에서 가져온 지도 좌표들 문자열
				
				var customPath = [];
				
				console.log(locatedata); 
				//서버에서 가져온 좌표를 변환하기 전 배열변수에 입력
				customPath = locatedata.replaceAll("\\","").replace("[\"","").replace("\"]","").split("\",\"");
				
				console.log("0번째"+customPath[0]); 
				console.log(customPath); 
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
		 	
			 	var mapContainer  = document.getElementById('map'+i), // 지도를 표시할 div.
			 		mapOption  = { 
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
				
				//mapinfo div에 출력 준비
				var doginfoOutput ="";
				
				//카드 출력 후 강아지 아이콘 출력 처리
				var dogW_s = result[i].walk_bodytype.split("/")[0];
				var dogW_m = result[i].walk_bodytype.split("/")[1];
				var dogW_l = result[i].walk_bodytype.split("/")[2];
				
				if (dogW_s !="----"){
					doginfoOutput+="<img style=\"width:30px;\" src=\"${pageContext.request.contextPath}/resources/myupload/dogbody/dogbody_s.png\" alt=\"소형견아이콘\">";
				}if (dogW_m !="----"){
					doginfoOutput+="<img style=\"width:30px;\" src=\"${pageContext.request.contextPath}/resources/myupload/dogbody/dogbody_m.png\" alt=\"중형견아이콘\">";
				}if (dogW_l !="----"){
					doginfoOutput+="<img style=\"width:30px;\" src=\"${pageContext.request.contextPath}/resources/myupload/dogbody/dogbody_l.png\" alt=\"대형견아이콘\">";
				}
				
				$("#dogInfo"+i).html(doginfoOutput);
				
				
				//날씨정보 출력
				var weatherCheck = result[i].walk_weatherinfo.split("/")[0];
				console.log("weatherCheck"+weatherCheck);
				
				var divurl = "";
				if (weatherCheck=="0"){
					divurl='${pageContext.request.contextPath}/resources/myupload/weatherIcon/clear.png';
				}else if (weatherCheck=="1"){
					divurl='${pageContext.request.contextPath}/resources/myupload/weatherIcon/cloudy.png';
				}else if (weatherCheck=="2"){
					divurl='${pageContext.request.contextPath}/resources/myupload/weatherIcon/blackcloudy.png';
				}else if (weatherCheck=="3"){
					divurl='${pageContext.request.contextPath}/resources/myupload/weatherIcon/rain.png';
				}else if (weatherCheck=="4"){
					divurl='${pageContext.request.contextPath}/resources/myupload/weatherIcon/sleet.png';
				}else if (weatherCheck=="5"){
					divurl='${pageContext.request.contextPath}/resources/myupload/weatherIcon/snow.png';
				}
				
				var mapinfoOutput = "<div style = \"float:left;\">총 거리: "+distance+"m, 도보: "+walkkTime+"분</div>";
				mapinfoOutput+="<div style = \"background-image: url('"+divurl+"'); background-size:30px; background-repeat:no-repeat; background-position:center; float:right; width:30px; height:25px;\"id=\"#weatherDiv"+i+"\"></div>";
				$("#mapinfo"+i).html(mapinfoOutput);

			}
			
			
			
			
			// 이전 버튼
 			if(result[0].page == 1){
 				output1 += "<li><a id = \"pagebtn\">이전</a></li>";
 			}else{
 				output1 += "<li><a id = \"pagebtn\" onclick=\"pageNumber("+(result[0].page-1)+",'"+localSearchType+"','"+localSearchWord+"','"+localSearchAddr+"')\">이전</a></li>";
 			}	 
			
 			for(var j = result[0].startPage; j <= result[0].endPage; j++){
				if(result[0].page == j ){
					output1 += "<li><a style = \"font-size:20px; width:44px; \" >"+j+"</a></li>";
				} else {
					output1 += "<li><a style = \"width:38px; \" onclick=\"pageNumber("+j+",'"+localSearchType+"','"+localSearchWord+"','"+localSearchAddr+"')\">"+j+"</a></li>"; 
				}
			} 
 			
 			// 다음 버튼
			
			if(result[0].page == result[0].endPage){
				output1 += "<li><a id = \"pagebtn\">다음</a></li>";
 			}else{
 				output1 += "<li><a id = \"pagebtn\" onclick=\"pageNumber("+(result[0].page + 1)+",'"+localSearchType+"','"+localSearchWord+"','"+localSearchAddr+"')\">다음</a></li>";
 			}
	 				
						
			
			$("#pagingnum").html(output1);
				
				}else{
					console.log("등록된 게시물이 없습니다.");
					output = "<div style=\"width:100%; text-align:center; color:#ddd;\">등록된 게시물이 없습니다.</div>"
							+"<br><br><br><br><br>";
					$("#printCard").html(output);
				}
				 									
			
			}
			
			});
	}
	
	
	
</script> 


	<script type="text/javascript">
	
	// 오류 메세지 출력
		var checkMsg1 = "${msg1}";
	
	if  (checkMsg1.length > 0){ 
		
		Swal.fire({
			
			   title: '게시물 삭제 완료!',					   
			   icon: 'success',					  
			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			   confirmButtonText: '확인' // confirm 버튼 텍스트 지정			   
			   
			});
	}
	
	
		var checkMsg2 = "${msg2}";
	
	if  (checkMsg2.length > 0){ 
		
		Swal.fire({
			
			   title: '게시물 작성 완료!',					   
			   icon: 'success',					  
			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			   confirmButtonText: '확인' // confirm 버튼 텍스트 지정			   
			   
			});
	}	
	
	
	   
  
  </script>

	
	<script type="text/javascript">
				
	 /* 정렬 기능 x */
	$('#dataTable').DataTable({
		ordering : false, //정렬 기능
		searching : false //검색 기능
	});


</script>








	<!-- bootstrap -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/sticker.js"></script>
	<!-- main js -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

</body>
</html>