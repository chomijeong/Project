<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>MYPAGE</title>

		<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
	<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;200;300;400;500;600&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">

	<style>
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
		hr{
		background-color: black;
		}
		label {
			font-weight: bold;
			color: gray;
		}
		border {
			border-top : 0px;
		}
		#sample6_extraAddress, #sample6_detailAddress, #sample6_address, #sample6_postcode, #member_tel, #member_email, #member_emailDomain, #member_emailselect,
		#member_id, #member_name, #member_pw, #member_pwcheck, #member_gender, #member_birth, #member_crewname, #member_crewmaster, #dog_InfoSave, #dog_InfoDel{
			width: 47%;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: 2%;
    		text-align: center;
    		margin-bottom: 0px;
		}
		#postcodeBtn{
			background-color: rgb(150,150,150);
    		color: white;
    		font-weight: 700;
    		text-transform: uppercase;
    		font-size: 15px;
    		border: none !important;
    		cursor: pointer;
    		padding: 15px 25px;
    		border-radius: 3px;
    		transition: 0.3s;
    		border-radius: 50px !important;
    		margin-left : 30px;
		}
		#submitBtn {
			width: 250px;
			margin-top: 105px;
			color: white;
			transition: 0.3s;
    		border-radius: 50px !important;
    		font-weight: 700;
    		text-transform: uppercase;
    		font-size: 15px;
    		border: none !important;
    		user-select: none;
    		white-space: pre;
    		align-items: flex-start;
    		text-align: center;
    		height: 57px;
    		outline: none;
    		background-color: red;
    		margin-left: 50%;
		}
		#fireBtn {
			width: 250px;
			color: white;
			border-radius: 50px !important;
			transition: 0.3s;
			font-weight: 700;
    		text-transform: uppercase;
    		font-size: 15px;
    		border: none !important;
    		user-select: none;
    		white-space: pre;
    		align-items: flex-start;
    		text-align: center;
    		height: 57px;
    		outline: none;
    		background-color: darkgray;
    		margin-top: 30%;
		}
		
		#skipBtn {
			width: 250px;
			background-color: #00adff;
			margin-top: 30%;
			color: white;
			transition: 0.3s;
    		border-radius: 50px !important;
    		font-weight: 700;
    		text-transform: uppercase;
    		font-size: 15px;
    		border: none !important;
    		user-select: none;
    		white-space: pre;
    		align-items: flex-start;
    		text-align: center;
    		height: 57px;
    		outline: none;
    		margin-left: 20%;
		}
		
		#div_box {
			width: 49%;
    		padding: 15px;
   			border: 1px solid #ddd;
    		border-radius: 3px;
		}
		
		#div_Typebox {
			
    		padding: 15px;
   			border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-top: 25px; 
    		width:358px; 
    		position:absolute; 
    		left:15px; top:235px; 
    		background-color:beige; 
    		margin-left: 17%; 
    		display: none;
		}
		
		input::placeholder{
			text-align: center;
		}
		
		.common{
			margin-left: 1%;
			margin-top: 2%;
		}
		
		fileUpload {
			font-family: 'Poppins', sans-serif;
    		display: inline-block;
    		background-color: #F28123;
    		color: #fff;
    		padding: 10px 20px;
		}
		#dogType {
			font-size: 12px;
			width: 116px; 
			text-align: center; 
			margin-left: 107px;
		}
		#dog_select {
			font-size: 12px;
			width: 116px; 
			text-align: center; 
			margin-left: 107px;
			cursor: pointer;
		}
		.contact-form {
			margin-right: 5%;
		}
		#imgbox{
			width: 100%;
			height: 100%;
			aspect-ratio: 9 / 8;
			object-fit:cover;
		}
		#imgbackground{
			width: 100%;
			height: 100%;
			background-size: cover;
		}
		#fileUpload{
			padding-top: 3%;
			margin-left: 33%;
			display: none;
			
		}
		#input-file{
			width: 165px;
			background-color: #00ffbd;
			border-radius: 5px;
			height: 25px;
			color: white;
			cursor: pointer;
			margin-top: 15px;
		}
		
		#dog_name, #dog_weight, #dog_birth, #dog_type, #dog_age{
			width: 358px;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: -18%;
    		text-align: center;
    		margin-bottom: 0px;
		}
		#dog_birth{
			width: 66%;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: -18%;
    		text-align: center;
    		margin-bottom: 0px;
		}
		#dog_age{
			width: 35%;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: -50%;
    		text-align: center;
    		margin-bottom: 0px;
    		margin-left: 0px;	
		}
		#dog_gender{
			width: 66%;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: -18%;
    		text-align: center;
    		margin-bottom: 0px;
		}
		#dog_spaying {
			width: 35%;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: -50%;
    		text-align: center;
    		margin-bottom: 0px;
		}
		
		#dog_addPageBtn{
			width: 100%;
			background-color: skyblue;
			margin-top: 25px;
			color: white;
			transition: 0.3s;
    		border-radius: 50px !important;
    		font-weight: 700;
    		text-transform: uppercase;
    		font-size: 15px;
    		border: none !important;
    		user-select: none;
    		white-space: pre;
    		align-items: flex-start;
    		text-align: center;
    		height: 39px;
    		outline: none;
    		margin-bottom: 35px;
		}
		
		.dog_DelBtn {
			width: 82%;
			background-color: red;
			margin-top: 25px;
			color: white;
			transition: 0.3s;
    		border-radius: 50px !important;
    		font-weight: 700;
    		text-transform: uppercase;
    		font-size: 15px;
    		border: none !important;
    		user-select: none;
    		white-space: pre;
    		align-items: flex-start;
    		text-align: center;
    		height: 57px;
    		outline: none;
    		margin-left: -18%;
		}
		
		
		
		.dog_saveBtn{
			width: 82%;
			background-color: #00adff;
			margin-top: 25px;
			color: white;
			transition: 0.3s;
    		border-radius: 50px !important;
    		font-weight: 700;
    		text-transform: uppercase;
    		font-size: 15px;
    		border: none !important;
    		user-select: none;
    		white-space: pre;
    		align-items: flex-start;
    		text-align: center;
    		height: 57px;
    		outline: none;
    		margin-left: 10%;
		}
		
		#dog_div_box {
			width: 49%;
    		padding: 15px;
   			border: 1px solid #ddd;
    		border-radius: 3px;
		}
		
		#div_Typebox {
			
    		padding: 15px;
   			border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-top: 25px; 
    		width:358px; 
    		position:absolute; 
    		left:15px; top:235px; 
    		background-color:beige; 
    		margin-left: 17%; 
    		display: none;
		}
		
		
		#dog_genderSelect{
			margin-right: 30%;
		}
		
		#dog_birthText{
			margin-right: 15%;
		}
		.dog_common{
			margin-left: -15%;
		}
		
		dog_fileUpload {
			font-family: 'Poppins', sans-serif;
    		display: inline-block;
    		background-color: #F28123;
    		color: #fff;
    		padding: 10px 20px;
		}
		
		#dogType {
			font-size: 12px;
			width: 116px; 
			text-align: center; 
			margin-left: 107px;
		}
		
		#dog_select {
			font-size: 12px;
			width: 116px; 
			text-align: center; 
			margin-left: 107px;
			cursor: pointer;
		}
		
		.dog_imgbox{
			width: 100%;
			height: 100%;
			aspect-ratio: 9 / 8;
			object-fit:cover;
		}
		#dog_imgbackground{
			width: 90%;
			height: 86%;
			background-size: cover;
		}
		.dog_fileUpload{
			padding-top: 3%;
			margin-left: 33%;
			display: none;
			
		}
		#dog_input-file{
			width: 140px;
			background-color: #00ffbd;
			border-radius: 5px;
			height: 25px;
			color: white;
			cursor: pointer;
			margin-right: 5%;
			margin-top: 6%;
		}

	</style>
</head>
<body>
	
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
	
	<!-- Topbar -->
	<%@ include file="/WEB-INF/views/include/Topbar.jsp" %>
	
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Walk</p>
						<h1>M Y P A G E</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
	<!-- https://us.123rf.com/450wm/sudowoodo/sudowoodo1903/sudowoodo190300032/118870259-%EA%B0%80%EC%A3%BD-%EB%81%88%EC%9C%BC%EB%A1%9C-%EB%8F%84%EB%A7%9D%EA%B0%80%EB%8A%94-%EA%B7%80%EC%97%AC%EC%9A%B4-%EB%A7%8C%ED%99%94-%EA%B0%95%EC%95%84%EC%A7%80-%EA%B0%84%EB%8B%A8%ED%95%9C-%EA%B0%9C-%EA%B7%B8%EB%A6%AC%EA%B8%B0-%EC%9E%AC%EB%AF%B8%EC%9E%88%EB%8A%94-%EB%B2%A1%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EB%A0%88%EC%9D%B4-%EC%85%98-.jpg?ver=6 -->
	<!-- https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQcKTNljQs8LL-b1EiMIke4ALNiwsBCkI1a8KGx181ZAxJDtbtFUH8-8Co7ASz1EnoOY4&usqp=CAU -->
	<!-- contact form -->
	<div class="contact-from-section mt-80 mb-150">
		<div class="container">
			<p style="font-size: 30px; font-weight:bold; margin-left: 0%;">M Y P A G E</p>
			
			<div class="row" style="text-align: center;">
				<div class="col-5" id="click-MemberDiv" style="background-color:gray; color: white; margin-left: 4%; padding-left: 10%; border-radius: 12px;">
					<a id="MemberInfoPage" style="font-size: 17px; font-weight:bold; margin-right: 30%;">개 인 정 보 수 정</a>
				</div>
				<div class="col-5" id="click-DogDiv" style="margin-left: 10%; padding-left: 3%; border-radius: 12px;">
					<a id="DogInfoPage" style="font-size: 17px; font-weight:bold;">반 려 견 정 보 수 정</a>
				</div>
			</div>
			
				<hr>
			<!-- enctype="multipart/form-data" onSubmit="return memberInfoCheck(this)" -->
			<form method="post" id="member_form" >
			<div class="row" id="memberDiv" onchange="content()">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<div class="form-title" style="text-align: center;">
						
					</div>
					<div class="single-product-item" style="text-align: center; width:100%; height: 49%; margin-top: 0%;">
						<div class="product-image" id="imgbackground">
						<c:choose>
							<c:when test= "${memberdto.member_profile == null }">
								<img id="imgbox" src="https://eqqui.s3.us-west-1.amazonaws.com/eqqui/pr/KM1yur5fsQVQKRzUTLDxix3jsqwesZut/picture" alt="">
							</c:when>
							<c:otherwise>
								<img id="imgbox" src="${pageContext.request.contextPath }/resources/fileUpload/${memberdto.member_profile }" alt="">
							</c:otherwise>
						</c:choose>
							
						</div>
						
						<label id="input-file" for="fileUpload">
							<i class="fa-solid fa-camera">
							사 진 등 록
							</i>
						</label>
						<label id="input-file" onclick="baseImg()">
							기 본 이 미 지 로 변 경
						</label>
						<input type="file" id="fileUpload" name="member_file" onchange="loadFile(this)">
						<!-- false : input (file) 태그에 사진 정보 내포 / true : input (file) 태그에 사진 정보 없음 -->
						<input type="hidden" id="member_fileState" name="member_fileState" value="false">
						<input type="hidden" name="baseImgCheck" id="baseImgCheck" value="0">
					</div>
							<label class="common" style="margin-top: 9%;">C R E W</label>
							<label class="common" style="margin-left: 32%;">C R E W R A N K</label>
							<p>
								<c:choose>
									<c:when test="${memberdto.member_crewname == null }">
										<input id="member_crewname" name="member_crewname" style="text-align-last: center; pointer-events: none; background-color: lightgoldenrodyellow;" value="소속 크루 없음">
									</c:when>
									<c:otherwise>
										<input id="member_crewname" name="member_crewname" style="text-align-last: center; pointer-events: none; background-color: lightgoldenrodyellow;" value="${memberdto.member_crewname }">
									</c:otherwise>
								</c:choose>
								
								<c:choose>
									<c:when test="${memberdto.member_crewname == null }">
										<input id="member_crewmaster" name="member_crewmaster" value="소속 크루 없음" style="pointer-events: none; background-color: lightgoldenrodyellow;">
									</c:when>
									<c:when test="${memberdto.member_crewname != null && memberdto.member_crewmaster == sessionScope.loginId }">
										<input id="member_crewmaster" name="member_crewmaster" value="크 루 장" style="pointer-events: none; background-color: lightgoldenrodyellow;">
									</c:when>
									<c:otherwise>
										<input id="member_crewmaster" name="member_crewmaster" value="크 루 원" style="pointer-events: none; background-color: lightgoldenrodyellow;">
									</c:otherwise>
								</c:choose>
							</p>
				</div>
				<div class="col-lg-8 mb-5 mb-lg-0">
					<div class="contact-form">
								<label class="common">I D</label>
								<label class="common" style="margin-left: 47%;">N A M E</label>
							<p>
								<input type="text" name="member_id" id="member_id" value="${memberdto.member_id }" style="pointer-events: none; background-color: lightgoldenrodyellow;">
								<input type="text" name="member_name" id="member_name" value="${memberdto.member_name }" style="pointer-events: none; background-color: lightgoldenrodyellow;">
							</p>
								<label class="common">P A S S W O R D</label>	
							<p>
  								<input type="password" name="member_pw" id="member_pw" value="${memberdto.member_pw }">
								<input type="password" name="member_pwcheck" id="member_pwcheck" placeholder="비밀번호 확인란 ( 비 밀 번 호 변 경 시 )" onfocus="this.placeholder = ''" onblur="this.placeholder='비밀번호 확인란 ( 비 밀 번 호 변 경 시 )'" style="pointer-events: none;" >
								<span id="pwCheck"></span><span id="pwConfirmCheck"></span>
							</p>
								<label class="common">G E N D E R</label>
								<label class="common" style="margin-left: 38%;">B I R T H</label>
							<p>
								<input type="text" id="member_gender" name="member_gender" value="${memberdto.member_gender }" style="pointer-events: none; background-color: lightgoldenrodyellow;" >
								<input id="member_birth" name="member_birth" type="date" value="${memberdto.member_birth }">
							</p>
								<label class="common">E M A I L</label>
							<p>
								<input type="text" name="member_emailid" id="member_email" style="width: 35%; margin-right: 2%;" value="${memberdto.member_emailid }"> 
								@
								<input type="text" name="member_emaildomain" id="member_emailDomain" style="width: 35%; margin-left: 2%;" value="${memberdto.member_emaildomain }"> 
								<select id="member_emailselect" name="" style="width: 18%;">
									<option value="">직 접 입 력</option>
    								<option value="naver.com">네 이 버</option>
    								<option value="google.com">구 글</option>
    								<option value="daum.net">다 음</option>
    								<option value="nate.com">네 이 트</option>
								</select>
							</p>
								<label class="common">T E L</label>
							<p>
								<input type="tel" name="member_tel" id="member_tel" value="${memberdto.member_tel }">
							</p>
								<label>A D D R E S S</label>
							<p>
								<input type="text" name="member_postcode" id="sample6_postcode" value="${memberdto.member_postcode }">
								<input type="button" id="postcodeBtn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
							</p>
						
							<p>
								<input type="text" name="member_addr" id="sample6_address" value="${memberdto.member_addr }">
								<input type="text" name="member_detailaddr" id="sample6_detailAddress" value="${memberdto.member_detailaddr }" placeholder="상 세 주 소" onfocus="this.placeholder = ''" onblur="this.placeholder='상 세 주 소'">
							</p>
							<p>
								<input type="text" name="member_extraaddr" id="sample6_extraAddress" value="${memberdto.member_extraaddr }" placeholder="참 고 주 소" onfocus="this.placeholder = ''" onblur="this.placeholder='참 고 주 소'">
							</p>
					</div>
				</div>
			</div>
				<div class="row">
					<div class="col-4">
					<!-- #dogDiv > div > div > div > div:nth-child(3) > div > div:nth-child(1) -->
						<input type="button" id="fireBtn" value="회 원 탈 퇴" onclick="memberDel(this,'${memberdto.member_id}', '${memberdto.member_pw }','${memberdto.member_state }')">
					</div>
					<div class="col-4">
						<input type="button" id="submitBtn" value="저 장 하 기" onclick="memberInfoSave()" style="display: none;">
					</div>
					<div class="col-4">
						<input type="button" id="skipBtn" value="돌 아 가 기">
					</div>
				</div>	
			</form>
			
			<!-- 개인 정보 수정 목록 끝 -->
			
			<!-- 반려견 정보 수정 목록 시작 -->
			
			<c:forEach items="${doginfodto }" var="doginfo" varStatus="status">
			
			<form method="post" id="dog_form${status.index }" onSubmit="return dogInfoCheck(this)">
			
			<div class="row dogDiv" style="display: none;" onchange="dogContents(this, '${doginfo.dog_name }','dog_saveBtn${status.index }')">
				<div class="col-lg-12 mb-5 mb-lg-0">			
					<div class="single-product-item" style="text-align: center; width:100%; height: 97%; padding-bottom: 5px;">
						<div class="row">
							<div class="col-lg-4">
								<div class="product-image" id="dog_imgbackground">
									<c:choose>
										<c:when test="${doginfo.dog_image == null }">
											<img class="dog_imgbox" id="dog_imgbox${status.index }" src="https://us.123rf.com/450wm/sudowoodo/sudowoodo1903/sudowoodo190300032/118870259-%EA%B0%80%EC%A3%BD-%EB%81%88%EC%9C%BC%EB%A1%9C-%EB%8F%84%EB%A7%9D%EA%B0%80%EB%8A%94-%EA%B7%80%EC%97%AC%EC%9A%B4-%EB%A7%8C%ED%99%94-%EA%B0%95%EC%95%84%EC%A7%80-%EA%B0%84%EB%8B%A8%ED%95%9C-%EA%B0%9C-%EA%B7%B8%EB%A6%AC%EA%B8%B0-%EC%9E%AC%EB%AF%B8%EC%9E%88%EB%8A%94-%EB%B2%A1%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EB%A0%88%EC%9D%B4-%EC%85%98-.jpg?ver=6" alt="">
										</c:when>
										<c:otherwise>
											<img class="dog_imgbox" id="dog_imgbox${status.index }" src="${pageContext.request.contextPath }/resources/fileUpload/${doginfo.dog_image }" alt="">
										</c:otherwise>
									</c:choose>
								</div>
								<label id="dog_input-file" for="dog_fileUpload${status.index }">
									<i class="fa-solid fa-camera">
									사 진 변 경
									</i>
								</label>
								<label class="dog_input-file" id="dog_input-file" onclick="dog_baseImg(this, ${status.index})">
									기 본 이 미 지 로 변 경
								</label>
								<input type="file" class="dog_fileUpload" id="dog_fileUpload${status.index }" name="dog_file" onchange="dog_loadFile(this, '${status.index }')">
								<input type="hidden" id="dog_fileState${status.index }" name="dog_fileState" value="false">
								<input type="hidden" name="dog_baseImgCheck" id="dog_baseImgCheck${status.index }" value="0">
							</div>
							<div class="col-lg-4 mb-lg-0" style="margin-top: 3%;">
								<input type="hidden" id="dog_owner" name="dog_owner" value="${doginfo.dog_owner }">
								<label class="dog_common">반 려 견 이 름</label>
								<p>
									<input type="text" name="dog_name" id="dog_name" value="${doginfo.dog_name }" style="pointer-events: none; background-color: lightgoldenrodyellow;"> <br>
								</p>
								<label class="dog_common">반 려 견 품 종</label>
								<p>
									<input type="text" class="dog_type${status.index }" list="list" id="dog_type" onkeyup="dogTypeSearch(this,'${status.index }')" name="dog_type" value="${doginfo.dog_type }">
  									<datalist id ="list">
    									<!-- 검색 Option이 추가되어야 할 공간 -->
  									</datalist>
								</p>
								<label id="dog_genderSelect">반 려 견 성 별</label>
								<label id="dog_spayingSelect">중 성 화 유 무</label>
								<p>
								<input type="text" name="dog_gender" id="dog_gender" value="${doginfo.dog_gender }" style="pointer-events: none; background-color: lightgoldenrodyellow;">
								
								<select id="dog_spaying" name="dog_spaying" style="text-align-last: center; margin-left:0%;">
									<c:choose>
										<c:when test="${doginfo.dog_spaying == true }">
											<option value="true">유</option>
											<option value="false">무</option>
										</c:when>
										<c:otherwise>
											<option value="false">무</option>
											<option value="true">유</option>
										</c:otherwise>
									</c:choose>
								</select>
								</p>
							</div>
							<div class="col-lg-4" style="margin-top: 3%;">
								<label class="dog_common">반 려 견 무 게 ( k g )</label>
							<p>
								<input id="dog_weight" name="dog_weight" type="number" step="0.1" value="${doginfo.dog_weight }">
							</p>
								<label id="dog_birthText">반 려 견 탄 생 년 월 & 나 이 (세)</label>
							<p>
								<input class="dog_birth" id="dog_birth" name="dog_birth" type="month" value="${doginfo.dog_birth }">
								<input class="dog_age" type="text" id="dog_age" readonly="readonly">
							</p>
							
							<div class="row">
								<div class="col-6">
								<!-- #dogDiv > div > div > div > div:nth-child(3) > div > div:nth-child(1) -->
									<input type="button" class="dog_saveBtn" id="dog_saveBtn${status.index }" onclick="dogInfoSave(this, '${doginfo.dog_name}', '${status.index }')" value="저 장" style="display: none;">
								</div>
								<div class="col-6">
									<input type="button" class="dog_DelBtn" id="dog_DelBtn${status.index }" onclick="dogInfoDel(this, '${doginfo.dog_name}', '${doginfo.dog_owner }','${status.index }')" value="삭 제">
								</div>
							</div>					
							</div>
						</div>
					</div>
				</div>		
			</div>
			</form>
			</c:forEach>
			<input type="button" onclick="dogaddPage(this, '${memberdto.member_id}')" id="dog_addPageBtn" value="반 려 견 추 가 등 록" style="display: none;">
		</div>
	</div>
	<!-- end contact form -->
	
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>Copyrights &copy; 2019 - <a href="https://imransdesign.com/">Imran Hossain</a>,  All Rights Reserved.<br>
						Distributed By - <a href="https://themewagon.com/">Themewagon</a>
					</p>
				</div>
				<div class="col-lg-6 text-right col-md-12">
					<div class="social-icons">
						<ul>
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end copyright -->
	
	<!-- jquery -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="${pageContext.request.contextPath }/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
	<script src="https://kit.fontawesome.com/4fb5398ede.js" crossorigin="anonymous"></script>
	<!-- alert 창  -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
	
	</script>
	<script type="text/javascript">
	
		// 기존 이미지 - > 새로운 이미지로 업로드 _ 회원
		function loadFile(input) {
			
		  var file = event.target.files[0];
		  
		  var reader = new FileReader();
		  
		  reader.onload = function(input){
			  $("#imgbox").attr("src", input.target.result);
		  }
		  reader.readAsDataURL(file);
		  
		  $("#member_fileState").val("false");
		  
		  console.log(file);
		  console.log(reader);
		}
		
		// 기존 이미지 - > 새로운 이미지로 업로드 _ 반려견
		function dog_loadFile(input, index) {
			  console.log("사진 변경 호출");
			  console.log(index);
			  
			  var file = event.target.files[0];
			  var reader = new FileReader();
			  
			  reader.onload = function(input){
				  $("#dog_imgbox"+index).attr("src", input.target.result);
			  }
			  reader.readAsDataURL(file);
			  
			  $("#dog_fileState"+index).val("false");
			}
		
		// 기본 이미지로 변경 버튼 클릭 시 변경할 이미지 _ 회원
		function baseImg(){
			console.log("호출");
			$("#imgbox").attr("src", "https://eqqui.s3.us-west-1.amazonaws.com/eqqui/pr/KM1yur5fsQVQKRzUTLDxix3jsqwesZut/picture");
			$("#fileUpload").val("");
			console.log($("#fileUpload").val())	
			$("#submitBtn").css("display", "block");
			$("#member_fileState").val("true");
			$("#baseImgCheck").val("1");	
		}
		
		// 기본 이미지로 변경 버튼 클릭 시 변경할 이미지 _ 반려견
		function dog_baseImg(selObj, index){
			console.log("호출");
			$("#dog_imgbox"+index).attr("src", "https://us.123rf.com/450wm/sudowoodo/sudowoodo1903/sudowoodo190300032/118870259-%EA%B0%80%EC%A3%BD-%EB%81%88%EC%9C%BC%EB%A1%9C-%EB%8F%84%EB%A7%9D%EA%B0%80%EB%8A%94-%EA%B7%80%EC%97%AC%EC%9A%B4-%EB%A7%8C%ED%99%94-%EA%B0%95%EC%95%84%EC%A7%80-%EA%B0%84%EB%8B%A8%ED%95%9C-%EA%B0%9C-%EA%B7%B8%EB%A6%AC%EA%B8%B0-%EC%9E%AC%EB%AF%B8%EC%9E%88%EB%8A%94-%EB%B2%A1%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EB%A0%88%EC%9D%B4-%EC%85%98-.jpg?ver=6");
			$("#dog_fileUpload"+index).val("");
			$("#dog_fileState"+index).val("true");
			$("#dog_baseImgCheck"+index).val("1");
			$("#dog_saveBtn"+index).css("display", "block");
		}
		
		// 이메일 도메인 선택
		$("#member_emailselect").change(function(){
			var selDomain = $("#member_emailselect").val();
			$("#member_emailDomain").val(selDomain);
		});
		
		// 비밀번호 입력확인
		$("#member_pw").change(function(){
			var inputPw = $("#member_pw").val();
			
			if(inputPw.length == 0)
			{
				$("#pwCheck").css("color","red").text("비밀번호가 입력되지 않았습니다.");
				$("#pwCheck").css("margin-left", "15px");
			}
			else if(inputPw.length > 15 || inputPw.length < 8)
			{
				$("#pwCheck").css("color","red").text("8~15자리 사이의 영문 + 숫자 조합");
				$("#pwCheck").css("margin-left", "15px");
			}
			else
			{
				$("#pwCheck").css("color","blue").text("비밀번호를 한번 더 확인해주세요.");
				$("#pwCheck").css("margin-left", "15px");
			}
			
			$("#member_pwcheck").css("pointer-events", "");
		});
		
		
		// 비밀번호 체크
		$("#member_pwcheck").focusout(function(){
			var inputPw = $("#member_pw").val();
			var inputPwCheck = $("#member_pwcheck").val();
			
			if(inputPw.length == 0)
			{
				$("#pwConfirmCheck").css("color", "red").text("비밀번호가 입력되지 않았습니다.");
				$("#pwConfirmCheck").css("margin-left", "22%");
			}
			
			else if(inputPw == inputPwCheck)
			{
				$("#pwConfirmCheck").css("color", "blue").text("비밀번호가 일치합니다.");
				$("#pwConfirmCheck").css("margin-left", "22%");
			}
			else
			{
				$("#pwConfirmCheck").css("color", "red").text("비밀번호가 불일치합니다.");
				$("#pwConfirmCheck").css("margin-left", "22%");
			}
		});
		
		// 내용 값을 수정하면 저 장 버튼 표시
		function content(){
			$("#submitBtn").css("display", "block");
		}
		
		// 내용 값을 수정하면 저 장 버튼 표시
		function dogContents(selObj, dog_name, index){
			console.log(selObj);
			console.log(dog_name);
			console.log(index);
			
			$("#"+index).css("display", "block");
		}
		
		
		// 개인 정보 조회 & 반려견 정보 조회 표시 이벤트
		$("#MemberInfoPage").click(function(){
			$(".dogDiv").css("display", "none");
			$("#member_form").css("display", "");
			$("#dog_addPageBtn").css("display", "none");
			$("#click-MemberDiv").css("background-color","gray");
			$("#click-MemberDiv").css("color","white");
			$("#click-DogDiv").css("background-color","");
			$("#click-DogDiv").css("color","black");
		});
		
		$("#DogInfoPage").click(function(){
			$("#member_form").css("display", "none");
			$(".dogDiv").css("display", "");
			$("#dog_addPageBtn").css("display", "block");
			$("#click-MemberDiv").css("background-color","");
			$("#click-MemberDiv").css("color","black");
			$("#click-DogDiv").css("background-color","gray");
			$("#click-DogDiv").css("color","white");
			
			// 날짜 입력 - 나이 구하기
			var today = new Date(); // 현재 날짜 (년월일시분초)
			var todayYear = Number(today.getFullYear()); // 현재 년도
			
			console.log($(".dog_birth").length)
			
			for(var i = 0; i < $(".dog_birth").length ; i++)
			{
				console.log($(".dog_birth").eq(i).val());
				
				var birth = $(".dog_birth").eq(i).val();
				var [year,month] = birth.split('-');
				var birthYear = Number(year);
				
				var age = (todayYear - birthYear) + 1; 
				
				$(".dog_age").eq(i).val(age);
			} 
		});
		
		
		// 반려견 추가 등록 페이지 이동
		function dogaddPage(selObj, member_id){
			console.log("연결");
			console.log(selObj);
			console.log(member_id);
			
			location.href = "${pageContext.request.contextPath }/dogAddJoinPage";
		}
		
		// 강아지 품종 검색
		function dogTypeSearch(selObj, index){
			console.log(selObj);
			console.log(index);
			
			var inputType = $(".dog_type" + index).val();
			console.log(inputType);
			
			if(inputType.length == 0)
			{
				$("#dog_type").css("color", "black").text("검색된 내용이 없습니다.");
			}
			else
			{
				var output = "";
				
				$.ajax({
					type : "get",
					url : "searchDogType",
					data : {"inputType" : $("#dog_type" + index).val()},
					dataType : "json",
					async : false,
					success : function(searchType){
						console.log(searchType);
						if(searchType.length == 0)
						{
							output = "<option>검색어를 입력해주세요.</option>";
						}
						else
						{
							for(var i = 0; i < searchType.length; i++)
							{
								console.log(searchType[i].dog_type);
								output +="<option value=\'"+ searchType[i].dog_type + "'\"></option>";
							}	
						}
					},
					error : function(){
						alert("서버와의 통신이 불안정합니다.");
					}
				});
				$("#list").html(output);
			}
		}
	</script>
	
	<script type="text/javascript">
		// 개인 정보 수정 처리
		function memberInfoSave(){
			console.log("연결");
			console.log("${sessionScope.loginId }");
			
			Swal.fire({
				  title: '수정한 내용을 저장하시겠습니까?',
				  text: '마지막으로 입력한 내용이 저장됩니다.',
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonText: '저 장',
				  cancelButtonText: '취 소'
				}).then((result) => {
					if(result.isConfirmed){
						var form = $("#member_form")[0];
						console.log(form);
						
						var formData = new FormData(form);
						console.log(formData.get("member_pw"));
						
						$.ajax({
							type: "post",
							url : "memberInfoModify",
							data : formData,
							dataType : "json",
							async : false,
							contentType : false,
							processData : false,
							enctype : "multipart/form-data",
							success : function(saveResult){
								console.log(saveResult);
								Swal.fire({
									  title: '저장되었습니다!',
									  icon: 'success',
									  confirmButtonText: '확인'
									});
							}
							
						});
					}
				});
		}
	</script>
	<script type="text/javascript">
	function dogInfoSave(selObj, dog_name, index){
		// 반려견 수정 처리
		console.log("연결");
		console.log(dog_name);
		console.log(index);
		
		Swal.fire({
			  title: '수정한 내용을 저장하시겠습니까?',
			  text: '마지막으로 입력한 내용이 저장됩니다.',
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonText: '저 장',
			  cancelButtonText: '취 소'
			}).then((result) => {
				if(result.isConfirmed){
					var form = $("#dog_form"+index)[0];
					console.log(form);
					
					var formData = new FormData(form);
					console.log(formData)
					
					$.ajax({
						type: "post",
						url : "dogInfoModify",
						data : formData,
						dataType : "json",
						async : false,
						contentType : false,
						processData : false,
						enctype : "multipart/form-data",
						success : function(saveResult){
							console.log(saveResult);
							Swal.fire({
								  title: '저장되었습니다!',
								  icon: 'success',
								  confirmButtonText: '확인'
								});
							$("#dog_saveBtn" + index).css("display", "none");
						}
						
					});
				}
			});
	}
	
	</script>
	
	<script type="text/javascript">
	function dogInfoDel(selObj, dog_name, dog_owner, index){
		// 반려견 삭제 처리
		console.log("연결");
		console.log(dog_name);
		console.log(index);
		console.log(dog_owner);
		
		Swal.fire({
			title: '반려견 정보를 삭제하시겠습니까?',
			text: '다시 되돌릴 수 없습니다.',
			icon: 'warning',
			showCancelButton: true,
			confirmButtonText: '저 장',
			cancelButtonText: '취 소'
		}).then((result) => {
			if(result.isConfirmed)
			{
				$.ajax({
					type: "post",
					url: "dogInfoDelState",
					data:{"dog_owner" : dog_owner, "dog_name" : dog_name},
					success: function(DelResult){
						Swal.fire({
							  title: '삭제되었습니다!',
							  icon: 'success',
							  confirmButtonText: '확인'
							}).then((result) => {
								if(result.isConfirmed)
								{
									location.href = "${pageContext.request.contextPath }/memberInfoPage";
								}
							});
					}
				});
			}
		})
	}
	
	</script>
	<script type="text/javascript">
		// 회원탈퇴 버튼 이벤트
		
		$("#fireBtn").mouseover(function(){
			$("#fireBtn").css("background-color", "black");
		});
		$("#fireBtn").mouseout(function(){
			$("#fireBtn").css("background-color", "darkgray");
		});
	
		function memberDel(selObj,member_id, member_pw, member_state){
			console.log("연결");
			console.log(member_pw);
			console.log(member_state);
			console.log(member_id);
			
			Swal.fire({
				  title: '정말 회원 탈퇴를 진행하시겠습니까?',
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonText: '저 장',
				  cancelButtonText: '취 소'
				}).then((result) => {
					if(result.isConfirmed){
						(async () =>{
							const { value: inputPw } = await 
							Swal.fire({
									title: '비밀번호를 입력해주세요.',
									input: 'password',
								})
								if(inputPw == member_pw){
									
									$.ajax({
										type: "get",
										url: "memberDelState",
										data: {"member_id" : member_id},
										async : false,
										success: function(result){
											Swal.fire({
												  title: '회원탈퇴 처리되었습니다.',
												  text: '메인페이지로 이동합니다.',
												  icon: 'success',
												  confirmButtonText: '확인'
											}).then((memberDelStateResult) => {
												if(memberDelStateResult.isConfirmed){
													location.href = "${pageContext.request.contextPath }/";
												}
											});
										} 
									});
								}
								else
								{
									
								}
							})()
						}
					});
				}
	</script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		console.log("연결");
		
		// 전화번호 자동 하이픈
		function autoHypenPhone(str){
            str = str.replace(/[^0-9]/g, '');
            var tmp = '';
            if( str.length < 4){
                return str;
            }else if(str.length < 7){
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3);
                return tmp;
            }else if(str.length < 11){
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 3);
                tmp += '-';
                tmp += str.substr(6);
                return tmp;
            }else{              
                tmp += str.substr(0, 3);
                tmp += '-';
                tmp += str.substr(3, 4);
                tmp += '-';
                tmp += str.substr(7);
                return tmp;
            }
            return str;
        }
		var cellPhone = document.getElementById('member_tel');
		cellPhone.onkeyup = function(event){
        event = event || window.event;
        var _val = this.value.trim();
        this.value = autoHypenPhone(_val) ;
	}
	});
	</script>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").value = "";
                
            }
        }).open();
    }
   </script>
</body>
</html>