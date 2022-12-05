
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
<title>크루 활동 후기 상세</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
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
	href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" 	rel="stylesheet">

<!-- Custom fonts for this template-->
<link	href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css"	rel="stylesheet" type="text/css">
<link	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css"	rel="stylesheet">

<!-- Custom styles for this page -->
<link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
<!-- fontawesome  -->
<script src="https://kit.fontawesome.com/9047b9ba4b.js" crossorigin="anonymous"></script>
	
	
<style type="text/css">

.d_none {

		display: none;
		
}
.hideBtn{
display:none;
}

a.cart-btn{
background-color:#374b56;
}

a.cart-btn:hover{
text-decoration:none;
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

.breadcrumb-section:after {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	content: "";
	background-image: url('${pageContext.request.contextPath}/resources/assets/img/forest.jpg');
	background-position: right center;
	z-index: -1;
	opacity: 1;
}


.a-btn{

    font-family: 'Poppins', sans-serif;
    display: inline-block;
    background-color: #F28123;
    color: #fff;
    padding: 10px 20px;
 	transition: 0.3s;
	border-radius: 50px;
}

.comment-template > p {
    opacity: 1 !important; /* important = css 최우선으로 선정 */
   

}
.replyContent{
	border: 0px;
	
	  -ms-overflow-style: none; 
       scrollbar-width: none  !important;;
}

.replyContent:focus {
	outline: 0px;
}

.btn_dNone {

	display: none;   /* 해당 클래스가 btn_dNone 안보이게 하는것 */
}

.comment-text-body h4 a {
  color: #051922;
  font-size: 80%;
  margin-left: 10px;
  border-bottom: none;
}


/*민우씨 曰 : css만 만져서 만들 수 있는게 아닙니다 - 신혜원 曰: 민우씨 실망입니다. (농담)*/
.ck.ck-editor__main>.ck-editor__editable:not(.ck-focused) {
outline:0px;
border:0px;
}

.ck.ck-toolbar {
background-size:0px;
border: 0px;
padding: 0px ;
opacity:0;
}

textarea {
    width: 96%;
    border-radius: 4px;
    border: 1px solid #ddd;;
    padding: 10px;
    resize: none;
}

textarea:focus {
    outline: none;
    border: 1px solid #ddd;

}

.btn-rigth {
    float: right;
    margin-left: 30px;
    margin-top: 5px;
}

.comment-template form p textarea {
    border: 1px solid #ddd;
    padding: 15px;
    font-size: 15px;
    color: #051922;
    border-radius: 5px;
    height: 150px;
    resize: none;
    width: 100%;
}



</style>




</head>
<script type="text/javascript">

var memberInfo_first='${reviewinfo.walk_mid}';
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


<body >

	<!-- header -->
	<%@ include file="../include/Topbar.jsp"%>
	<!-- end header -->

	<!-- search area -->

	<!-- end search arewa -->

	<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Crew</p>
						<h1>크 루 활 동 후 기 상 세</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->


	<!-- DataTables Example -->
	<div class="mt-150 mb-150">
		<div class="container">		
			
			<c:if test="${sessionScope.loginId != null && reviewinfo.walk_writer != sessionScope.loginId}">
				<span class="author" style = "margin-left: 94%;">
				
				<a onclick="reviewReport('${reviewinfo.walk_code }','${sessionScope.loginId }')">
				<img src="https://cdn.discordapp.com/attachments/992004476040904815/996374088283082762/siren.png" style = "width: 15px; margin-bottom: 9;">  신고</a>
				
				</span>		
			</c:if>				
			<div class="row">
			
				<div class="col-lg-12">
					<div class="single-article-section">
						<div class="single-article-text">
									<div class="card">											
											<div class="card-body" id="map"	style="background-color: gray; width: 100%; height: 350px; 
											 padding-top: 2px;"></div>
										</div>
										
										
					<div style="width:100%; padding:25px; border:1px solid #ddd; border-bottom:0px; border-top:0px; background-color:rgb(0,0,0,0.05);">

				   					 
					   <div class="row">
					 	   <div class="col-lg-12" >
					    	<p class="blog-meta">
								<span style="font-size:0.85em; font-wight:400; margin-right:15.7px;" class="date"><i class="fa-solid fa-people-group"></i>참가자 :  ${reviewinfo.walk_mid }</span>
								<span style="margin-right:15.7px;"class="date"><i class="fa-solid fa-flag"></i>${reviewinfo.walk_startaddr }</span>
								<span style="margin-right:15.7px;"class="date" ><i class="fa-solid fa-dog"></i>체형 :  ${reviewinfo.walk_bodytype }</span>
								<span style="margin-right:15.7px;"id="totalDistance" class="text-center">총거리 도보시간 나오는곳</span>
								<div id ="weatherDiv" style="margin-top:-50px; background-repeat:no-repeat; width:43px; height:43px; background-position: center; display: inline-block; background-size: 43px; float:right;"></div>
							</p>
					   	 </div>	
					  	<div class="col-lg-10" >	
					   			 <br>
					   			<p class="blog-meta"><span style="margin-right:15.7px;"class="author"><i class="fas fa-user"></i>작성자 : ${reviewinfo.walk_writer }</span>
					   			<span style="margin-right:15.7px;"class="date"><i class="fas fa-calendar"></i>작성일 : ${reviewinfo.walk_date }</span></p>
								
					 	</div>
					   	<div class="col-lg-2" >
					   		
					     		<div style="width:100%; height:15px; margin-top: 16%;" >	
									<span class="author" style = "margin-left:8px; float:right;"><i class="fa-regular fa-thumbs-down"></i> ${reviewinfo.walk_decommend }</span>															
									<span class="author" style = "float:right;"><i class="fa-regular fa-thumbs-up"></i> ${reviewinfo.walk_recommend }</span>
								</div>
						</div>					   
					  </div>									
							
					</div>	
					
				<div style="border: 1px solid #ddd;padding: 25px;margin-top: 0px;border-radius: 0px 0px 3px 3px;">
						
								
								
							<div style = "margin-top: 13px;">
							
							<h2>${reviewinfo.walk_title }</h2>
							<div class="col-lg-12" style="width:100%; height:10px;"><span class="blog-meta" style = "float:right;" >조회수(${reviewinfo.walk_hits })</span></div>
							
							<hr>
							<textarea class="editor" name="walk_content" id="editor" style="width: 100%; height:500px;" readonly="readonly" disabled="disabled" >${reviewinfo.walk_content }</textarea>
							
							<p id = "reviewCommend">
							<c:if test="${sessionScope.loginId != null }">
							
							<c:choose>
							
							<c:when test="${reviewcommend.commend == 1}">
							
							<a style="margin-left: 45%;" class="author"  onclick = "reviewCommend('${reviewinfo.walk_code }',this,'${sessionScope.loginId }')"><i id = "good"  class="fa-solid fa-thumbs-up"></i> 좋아요 </a>
							
							</c:when>	
							
							<c:otherwise>
							
							<a style="margin-left: 45%;" class="author"  onclick = "reviewCommend('${reviewinfo.walk_code }',this,'${sessionScope.loginId }')"><i id = "good"  class="fa-regular fa-thumbs-up"></i> 좋아요 </a>
							
							</c:otherwise>
							
							</c:choose>
																																						
							
							<c:choose>
						    <c:when test="${reviewcommend.commend == -1}">
							
								<a style="margin-left: 50px;" class="date" onclick = "reviewCommend('${reviewinfo.walk_code }',this,'${sessionScope.loginId }')"><i id = "bad" class="fa-solid fa-thumbs-down"></i> 싫어요 </a>
							</c:when>
							
							<c:otherwise>
							
								<a style="margin-left: 50px;" class="date" onclick = "reviewCommend('${reviewinfo.walk_code }',this,'${sessionScope.loginId }')"><i id = "bad" class="fa-regular fa-thumbs-down"></i> 싫어요 </a>
							
							</c:otherwise>	
							</c:choose>
																									
							
							</c:if>	
							
							
							
							
							
							<c:if test="${sessionScope.loginId == reviewinfo.walk_writer}">
							<a style = "margin-left: 188px;" class ="cart-btn" href = "reviewModifyPage?walk_code=${reviewinfo.walk_code }&walk_mid=${sessionScope.loginId }">글수정</a>
							<a  style = "margin-left: 16px;" class ="cart-btn" href = "reviewDelState?walk_code=${reviewinfo.walk_code }">삭제</a>
							</c:if>	
							</p>
							</div>
							
							<hr>
							
						<div class="card-body" style="padding:35px;">
								
								<div style="padding-bottom:10px;">
								<textarea style="height: 150px; "id="recontent"></textarea>
								</div>
								<div style="float:right;">
								<a class="cart-btn" style="width:110px; text-align:center;" onclick="recommentSubmit()">댓글작성</a>
								</div>
							
								<br style="clear:both;"><hr>
								<br>
								
									
									<div id="commentDiv">
									
										<!-- 댓글목록 들어올 자리 -->
										<%-- <div class="row">
										<div class="col-2" style="display: flex; align-items:center; justify-content: right;">
										<img src="회원프로필들어갈자리" style="width:80%; border-radius:35px;"></div>
										<div class="col-10" style="padding-left:0px;"><div class="row"><div class="col-12">
										<div style="float:left; padding:10px;"><h6>아이디들어가는곳</h6></div>
										<div style="float:left; padding:10px;">작성일 들어가는곳</div>
										<div style="float:left; padding:10px;">
										<img src="${pageContext.request.contextPath}/resources/fileUpload/siren.png" style="width:12px; height:20px; padding-bottom:6px;">신고</div>
										</div><div class="col-12"><div style="padding:10px; float:left;">댓글내용 들어가는 곳</div>
										<c:if test="">
										<div style="float:right; padding:10px;" onclick="deleteRecomment()">삭제</div>
										<div style="float:right; padding:10px;"onclick="modifyRecomment()">수정</div>
										</c:if>
										</div></div></div></div><hr>  --%>
										
										
									</div>	
									
									
							</div>
				       </div>
				     </div>
				  </div>
				</div>
			</div>			
		</div>
	</div>

	<hr>
	


	<!-- DataTables Example AND -->

	<!-- copyright -->
	<%@ include file="../include/Footer.jsp"%>
	<!-- end copyright -->

	<!-- jquery -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.11.3.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
		
	<!-- 카카오지도api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b97f6706a8c69d9e1a92e4f095ca9d1c"></script>
	
	<!-- alert 창  -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
     <!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/super-build/ckeditor.js"></script> -->
    <script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/ckeditor.js"></script>
   <!--  <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script> -->		


	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=914239675e0ba57ab6430981bfb912b5"></script>


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

<!-- 에디터출력 -->
<script type="text/javascript">


//글 출력 에디터

ClassicEditor
	.create(document.getElementById("editor"), {	
	
    toolbar: {
        items: [     

        ],
        shouldNotGroupWhenFull: true
    },

    list: {
        properties: {
            styles: true,
            startIndex: true,
            reversed: true
        }
    },
   
    fontFamily: {
        options: [
            'default',
            'Arial, Helvetica, sans-serif',
            'Courier New, Courier, monospace',
            'Georgia, serif',
            'Lucida Sans Unicode, Lucida Grande, sans-serif',
            'Tahoma, Geneva, sans-serif',
            'Times New Roman, Times, serif',
            'Trebuchet MS, Helvetica, sans-serif',
            'Verdana, Geneva, sans-serif'
        ],
        supportAllValues: true
    },

    htmlSupport: {
        allow: [
            {
                name: /.*/,
                attributes: true,
                classes: true,
                styles: true
            }
        ]
    }, 
    htmlEmbed: {
        showPreviews: true
    },
   
    link: {
        decorators: {
            addTargetToExternalLinks: true,
            defaultProtocol: 'https://',
            toggleDownloadable: {
                mode: 'manual',
                label: 'Downloadable',
                attributes: {
                    download: 'file'
                }
            }
        }
    },

    removePlugins: [

        'CKBox',
        'CKFinder',
        'EasyImage',   
        'RealTimeCollaborativeComments',
        'RealTimeCollaborativeTrackChanges',
        'RealTimeCollaborativeRevisionHistory',
        'PresenceList',
        'Comments',
        'TrackChanges',
        'TrackChangesData',
        'RevisionHistory',
        'Pagination',
        'WProofreader',
        'MathType'
    ]  
  
})
        .then(editor => {
          console.log(editor);
          editor.enableReadOnlyMode( 'my-feature-id' );
          editor.isReadOnly; // `true`.
            
          const toolbarElement = editor.ui.view.toolbar.element;

          editor.on( 'change:isReadOnly', ( evt, propertyName, isReadOnly ) => {
              if ( isReadOnly ) {
                  toolbarElement.style.display = 'none';
              } else {
                  toolbarElement.style.display = 'flex';
              }
          } );
          
        });    

console.log("editorTest1 : " + editor);



var checkMsg12 = "${msg123}";

if  (checkMsg12.length > 0){ 
	
	Swal.fire({
		
		   title: '게시물 수정 완료!',					   
		   icon: 'success',					  
		   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		   confirmButtonText: '확인' // confirm 버튼 텍스트 지정			   
		   
		});
}


</script>
<!-- 지도출력 -->
<script type="text/javascript">

var customBounds = new kakao.maps.LatLngBounds(); //좌표를 모두 담은 지도위치 소환하는 객체
//카드 출력 후 지도 출력될 빨간선 정의
var clickLine = new kakao.maps.Polyline({
		strokeWeight: 3, // 선의 두께입니다 
 	strokeColor: '#db4040', // 선의 색깔입니다
 	strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
 	strokeStyle: 'solid' // 선의 스타일입니다
	}); 


var locatedata= '${reviewinfo.walk_map}' ; //서버에서 가져온 지도 좌표들 문자열

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
inputdateText = ('${reviewinfo.walk_time}').split(" ")[0].split("-")[0]+"년 "+('${reviewinfo.walk_time}').split(" ")[0].split("-")[1]+"월 "+('${reviewinfo.walk_time}').split(" ")[0].split("-")[2]+"일 ";
inputdateText += ('${reviewinfo.walk_time}').split(" ")[1].split(":")[0]+"시 "+('${reviewinfo.walk_time}').split(" ")[1].split(":")[1]+"분 ";
$("#dateInformation").val("출발일시: "+inputdateText);


//날씨정보 출력
var weatherInfo= '${reviewinfo.walk_weatherinfo}';

var skyState = weatherInfo.split("/")[0];
var tmp = weatherInfo.split("/")[1];
var rainRate = weatherInfo.split("/")[2];

console.log("weatherInfo"+weatherInfo);
//날씨정보를 바탕으로 화면에 아이콘과 글자들을 뿌려줍니다.
if(skyState == 0){
	$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/myupload/weatherIcon/clear.png')")
	$("#tmpDiv").text(tmp);
	$("#rainRateDiv").text(" ");
}else if(skyState == 1){
	$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/myupload/weatherIcon/cloudy.png')")
	$("#tmpDiv").text(tmp);
	$("#rainRateDiv").text(" ");
}else if (skyState == 2){
	$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/myupload/weatherIcon/blackcloudy.png')")
	$("#tmpDiv").text(tmp);
	$("#rainRateDiv").text(rainRate);
}else if(skyState == 3){
	$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/myupload/weatherIcon/rain.png')")				
	$("#tmpDiv").text(tmp);
	$("#rainRateDiv").text(" ");
}else if(skyState == 4){
	$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/myupload/weatherIcon/sleet.png')")
	$("#tmpDiv").text(tmp);
	$("#rainRateDiv").text(" ");
}else if(skyState == 5){
	$("#weatherDiv").css("background-image","url('${pageContext.request.contextPath}/resources/myupload/weatherIcon/snow.png')")
	$("#tmpDiv").text(tmp);
	$("#rainRateDiv").text(" ");
} 

//참여중인 인원 출력

var joinM = '${reviewinfo.walk_mid}';
console.log("joinM"+joinM);
$("#joinMemberInfo").text(joinM);













</script>
<!-- 댓글관련 -->
<script type="text/javascript">


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
	var boardC = '${reviewinfo.walk_code}';
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
	var boardC = '${reviewinfo.walk_code}';
	$.ajax({
		type : "get",
		url : "walkRecommentView_ajax",
		data : { "boardCode" : boardC },
		async : false,
		dataType : "json",
		success : function (result) {
						
			for(var i =0; i< result.length ; i++){
			output += "<div class=\"row\">"
			+"<div class=\"col-2 align-items-start\" style=\"display: flex; margin-top:15px; align-items:center; justify-content: right;\">"
			+"<div style=\"background-image: url('${pageContext.request.contextPath}/resources/fileUpload/";
			if(result[i].member_profile != null){
				
				output+= ""+result[i].member_profile+"";
			}else{
				output+= "basic.jpeg";
			}
			
			output += "'); width:60px; height: 60px; background-size:cover; background-position:center; border-radius:50%;\"></div></div>"
			+"<div class=\"col-10\" style=\"padding-left:0px;\"><div class=\"row\"><div class=\"col-12\">"
			+"<div style=\"float:left; padding:10px;\"><h6>"+result[i].recomment_writer+"</h6></div>"
			+"<div style=\"float:left; padding:10px;\">"+result[i].recomment_date+"</div>";
			if(loginId != result[i].recomment_writer){
				output+="<div style=\"float:left; padding:10px;\" onclick=\"insertReport('"+result[i].recomment_code+"')\">"
				+"<img src=\"${pageContext.request.contextPath}/resources/fileUpload/siren.png\" style=\"width:12px; height:20px; padding-bottom:6px;\" >신고</div>";
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




/* 추천/비추천  */
function reviewCommend(rbcode,obj,mid){
	
	console.log(obj);
	
	var commend = 0;
	
	
	if($(obj).hasClass("author")){ 
		
		 commend = 1;
		
	} else if($(obj).hasClass("date")){
		
		 commend = -1;
		
	}
	
	console.log("추천/비추천 : "  +commend);
		
	$.ajax({
		type : "get",
		url : "reviewCommend",
		data : { "walk_code" : rbcode , "commend" : commend , "member_id" : mid },
		async : false,
		success : function (result) {
			
			console.log(result);
			
			if(result == "OK" || result == "UPDATE"){
				
				if(commend == 1){

					$("#bad").removeClass("fa-solid");
					$("#bad").addClass("fa-regular");
					
					$("#good").removeClass("fa-regular");																	
					$("#good").addClass("fa-solid");
					
					} else {
												
						$("#bad").removeClass("fa-regular");
						$("#bad").addClass("fa-solid");
						
						$("#good").removeClass("fa-solid");																	
						$("#good").addClass("fa-regular");
						
					}
				
			} else {
				
	             if (commend == 1) {
                     Swal.fire({
                          title: '이미 좋아요를 선택하셨습니다.',
                          icon: 'error',
                          confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
                          confirmButtonText: '확인' // confirm 버튼 텍스트 지정
                          });

               } else {
                   Swal.fire({
                            title: '이미 싫어요를 선택하셨습니다.',
                            icon: 'error',
                            confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
                            confirmButtonText: '확인' // confirm 버튼 텍스트 지정
                        });

               }
				
			}
			
		}
		
	})
	
}


</script>
<!-- 기타관련 -->
<script type="text/javascript">

// 게시물 신고
function reviewReport(walk_code,mid){
	
	Swal.fire({
	    title: '신고 하시겠습니까?',
	    text: '신고가 쌓이게 되면 해당 게시물은 삭제 됩니다.',
	    icon: 'warning',
	    showCancelButton: true,
	    confirmButtonText: '확인',
	    cancelButtonText: '취소'
	  }).then((confirm) => {
	      if(confirm.isConfirmed){
	    	  
	    		$.ajax({
	    			type : "get",
	    			url : "reviewReport",
	    			data : { "code" : walk_code ,"member_id" : mid},
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


</body>
</html>