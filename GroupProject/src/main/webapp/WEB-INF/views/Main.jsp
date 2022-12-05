<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en-US" dir="ltr" class="chrome windows fontawesome-i2svg-active fontawesome-i2svg-complete">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
	<!-- title -->
	<title>오늘의 산책 메인</title>
	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
	<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;200;300;400;500;600&display=swap" rel="stylesheet">
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
	   
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css">
	
	<script src="https://kit.fontawesome.com/3b0042e53f.js" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/3b0042e53f.js" crossorigin="anonymous"></script>
	

<style>


.icon{
text-align: center;   
    border-radius: 100%;
    display: inline-block;
    content: "";
    width: 5em;
    height: 5em;
    box-shadow: 0 0 0 7px white, 0 0 0 8px #e0e0e0;
    background-repeat:no-repeat;
    background-position:center;
    background-color:white;
}

.site-logo {
display:none;
}

.logo{
height:250px;
width:100%;
background-image:url('${pageContext.request.contextPath}/resources/assets/img/logo_dog2_orange.png');
background-size:250px;
background-position:50% 65%;
background-repeat:no-repeat;
}

body{
background-image:url('${pageContext.request.contextPath}/resources/assets/img/forest.png');


}
</style>
</head>
<body>

<%@ include file="include/Topbar.jsp" %>
						
<div class="logo"></div>
<div
	style="background-color: rgb(0, 0, 0, 0.6); padding-top: 50px; padding-bottom: 30px;">
	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-4 text-center mb-5 mt-5" onclick="location.href='walkListPage'" style="cursor:pointer;">
						<i class="icon" 
						style="background-image: -webkit-linear-gradient(top, rgba(0,0,0,0), rgba(0,0,0,0.15)),
						url('${pageContext.request.contextPath}/resources/assets/img/walkdog.png');"></i>
						<h3 class="mt-3"  style=" color: white;">오 늘 의 산 책</h3>
						<p style="color: white;">사실 강아지는 산책을 시켜주는 사람을 제일 좋아하고 따른답니다!</p>
					</div>
					<div class="col-lg-4 text-center  mb-5 mt-5" onclick="location.href='crewListPage'" style="cursor:pointer;">
						<i class="icon"style="background-image: -webkit-linear-gradient(top, rgba(0,0,0,0), rgba(0,0,0,0.15)),
						url('${pageContext.request.contextPath}/resources/assets/img/crew.png');"></i>
						<h3 class="mt-3" style="color: white;">크 루 모 집</h3>
						<p style="color: white;">동네 주변 반려견들이 모여 같이 산책을 즐겨요!</p>
					</div>
					<div class="col-lg-4 text-center  mb-5 mt-5"  onclick="location.href='reviewListPage'" style="cursor:pointer;">

						<i class="icon"style="background-image: -webkit-linear-gradient(top, rgba(0,0,0,0), rgba(0,0,0,0.15)),
						url('${pageContext.request.contextPath}/resources/assets/img/review.png');"></i>
						<h3 class="mt-3" style="color: white;">산 책 후 기</h3>
						<p style="color: white;">즐거운 산책 시간을 작성해주세요!</p>

					</div>
					<div class="col-lg-4 text-center  mb-5" onclick="location.href='tipsListPage'" style="cursor:pointer;">

						<i class="icon"style="background-image: -webkit-linear-gradient(top, rgba(0,0,0,0), rgba(0,0,0,0.15)),
						url('${pageContext.request.contextPath}/resources/assets/img/info.png');"></i>
						<h3 class="mt-3" style="color: white;">유 용 정 보</h3>
						<p style="color: white;">강아지에 대한 유용한 정보 Tip!</p>
					</div>
					<div class="col-lg-4 text-center mb-5" onclick="location.href='shoppingListPage'" style="cursor:pointer;">
						<i class="icon"style="background-image: -webkit-linear-gradient(top, rgba(0,0,0,0), rgba(0,0,0,0.15)),
						url('${pageContext.request.contextPath}/resources/assets/img/dogshop.png');"></i>
						<h3 class="mt-3" style="color: white;">산 책 용 품</h3>
						<p style="color: white;">산책에서 꼭 필요한 강아지 용품!</p>
					</div>
					<div class="col-lg-4 text-center mb-5" onclick="location.href='hospitalListPage'" style="cursor:pointer;">
						<i class="icon"style="background-image: -webkit-linear-gradient(top, rgba(0,0,0,0), rgba(0,0,0,0.15)),
						url('${pageContext.request.contextPath}/resources/assets/img/hospital.png');"></i>
						<h3 class="mt-3" style="color: white;">동 물 병 원 찾 기</h3>
						<p style="color: white;">우리 동네 동물 병원 찾기</p>
					</div>
				</div>

			</div>
			<div class="col"></div>
		</div>
	</div>
</div>



<!-- copyright -->


<div
	style="margin-top:2.6%; width: 100%; padding: 40px; text-align: center; color: white;">

	Site Developer - Shin Hye-won , Jo Mi-Jeong , Hwang su-jeong , Kim
	Yoo-hwan , Ju Min-woo , Go Kun-hee <br> Company - ICIA

</div>


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
	<!-- 알람api -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
      

</body>
<script type="text/javascript">


//페이지 로딩시 알람내용이 있으면 출력됨.
var msg = '${msg}';
if(msg.length > 0){
Swal.fire(msg);
}

</script>


</html>