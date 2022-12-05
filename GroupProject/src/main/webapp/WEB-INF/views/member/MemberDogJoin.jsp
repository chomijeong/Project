<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>DOG JOIN</title>

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
		#dog_name, #dog_gender, #dog_weight, #dog_birth, #dog_type, #dog_age, #dog_spaying{
			width: 358px;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: 19%;
    		text-align: center;
    		margin-bottom: 0px;
		}
		#submitBtn {
			width: 250px;
			margin-top: 90px;
			color: white;
		}
		#skipBtn {
			width: 250px;
			background-color: #00adff;
			margin-top: 90px;
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
			margin-left: 45%;
		}
		#genderSelect{
			margin-left: 33%;
		}
		#spayingSelect{
			margin-left: 20%;
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
			border-radius: inherit;
			height: 25px;
			color: white;
			cursor: pointer;
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
						<h1>D O G  J O I N</h1>
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
			<p style="font-size: 30px; font-weight:bold; margin-left: 31%;">반 려 견 정 보 를 입 력 해 주 세 요. </p>
			 <!-- dogInfoAdd : 반려견 등록 후 추가 등록 페이지 출현 / dogInfoAddEnd : 반려견 등록 후 메인페이지 이동 -->
			<form action="dogInfoAdd" method="post" enctype="multipart/form-data" onSubmit="return dogJoinCheck(this)">
			<div class="row">
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="form-title" style="text-align: center;">
						<p style="font-size: 17px; font-weight:bold;">사 진 등 록</p>
						<hr>
					</div>
					<div class="single-product-item" style="text-align: center; width:100%; height: 82%;">
						<div class="product-image" id="imgbackground">
							<img id="imgbox" src="https://us.123rf.com/450wm/sudowoodo/sudowoodo1903/sudowoodo190300032/118870259-%EA%B0%80%EC%A3%BD-%EB%81%88%EC%9C%BC%EB%A1%9C-%EB%8F%84%EB%A7%9D%EA%B0%80%EB%8A%94-%EA%B7%80%EC%97%AC%EC%9A%B4-%EB%A7%8C%ED%99%94-%EA%B0%95%EC%95%84%EC%A7%80-%EA%B0%84%EB%8B%A8%ED%95%9C-%EA%B0%9C-%EA%B7%B8%EB%A6%AC%EA%B8%B0-%EC%9E%AC%EB%AF%B8%EC%9E%88%EB%8A%94-%EB%B2%A1%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EB%A0%88%EC%9D%B4-%EC%85%98-.jpg?ver=6" alt="">
						</div>
						<p style="color: red;">* 반려견 사진 미등록 시 기본 이미지로 대체됩니다.</p>
						<label id="input-file" for="fileUpload">
							<i class="fa-solid fa-camera">
							사 진 등 록
							</i>
						</label>
						<label id="input-file" onclick="baseImg()">
							기 본 이 미 지 로 변 경
						</label>
						<input type="file" id="fileUpload" name="dog_file" onchange="loadFile(this)">
					</div>
				</div>
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="second" style="text-align: center;">
						<p style="font-size: 17px; font-weight:bold;">반 려 견 정 보 입 력 ( 필 수 항 목 )</p>
						<hr>
					</div>
					<div id="form_status"></div>
					<div class="contact-form">
								<input type="hidden" id="dog_owner" value="${joininId }" name="dog_owner">
								<label class="common">반 려 견 이 름</label>
							<p>
								<input type="text" name="dog_name" id="dog_name" placeholder="20자 이내로 입력해주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='20자 이내로 입력해주세요.'"> <br>
							</p>
								<label class="common">반 려 견 품 종</label>
							<p>
  								<input type="text" list="list" id="dog_type" name="dog_type" placeholder="검 색 할 단 어 를 입 력 해 주 세 요." onfocus="this.placeholder = ''" onblur="this.placeholder='검 색 할 단 어 를 입 력 해 주 세 요.'"/>
  									<datalist id ="list">
    									<!-- 검색 Option이 추가되어야 할 공간 -->
  									</datalist>
							</p>
								<label id="genderSelect">반 려 견 성 별</label>
								<label id="spayingSelect">중 성 화 유 무</label>
							<p>
								<select id="dog_gender" name="dog_gender" style="text-align-last: center; width: 41%;">
									<option value="">성 별 선 택</option>
    								<option value="수컷">수 컷</option>
    								<option value="암컷">암 컷</option>
								</select>
								<select id="dog_spaying" name="dog_spaying" style="text-align-last: center; width:28%; margin-left:0%;">
									<option value="">유 무 선 택</option>
    								<option value="true">유</option>
    								<option value="false">무</option>
								</select>
							</p>
								<label class="common">반 려 견 무 게 ( k g )</label>
							<p>
								<input id="dog_weight" name="dog_weight" type="number" step="0.1" placeholder="ex) 2.4 or 3.0" onfocus="this.placeholder = ''" onblur="this.placeholder='ex) 2.4 or 3.0'">
							</p>
								<label class="common">반 려 견 탄 생 년 월</label>
							<p>
								<input id="dog_birth" name="dog_birth" type="month">
							</p>
								<label class="common">반 려 견 나 이</label>
							<p>
								<input type="text" id="dog_age" placeholder="탄 생 년 월 을 선 택 하 면 나 이 자 동 계 산" readonly="readonly"> <br>
							</p>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-6 mb-5 mb-lg-0">
					<input type="button" id="skipBtn" value="건 너 뛰 기">
				</div>
				<div class="col-lg-6 mb-5 mb-lg-0">
					<input type="submit" id="submitBtn" value="등 록 하 기">
				</div>
			</div>
			</form>
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
	
		// 기존 이미지 - > 새로운 이미지로 업로드 하는 방법
		function loadFile(input) {
			
		  var file = event.target.files[0];
		  
		  var reader = new FileReader();
		  
		  reader.onload = function(input){
			  $("#imgbox").attr("src", input.target.result);
		  }
		  reader.readAsDataURL(file);
		}
		
		function baseImg(){
			console.log("호출");
			$("#imgbox").attr("src", "https://us.123rf.com/450wm/sudowoodo/sudowoodo1903/sudowoodo190300032/118870259-%EA%B0%80%EC%A3%BD-%EB%81%88%EC%9C%BC%EB%A1%9C-%EB%8F%84%EB%A7%9D%EA%B0%80%EB%8A%94-%EA%B7%80%EC%97%AC%EC%9A%B4-%EB%A7%8C%ED%99%94-%EA%B0%95%EC%95%84%EC%A7%80-%EA%B0%84%EB%8B%A8%ED%95%9C-%EA%B0%9C-%EA%B7%B8%EB%A6%AC%EA%B8%B0-%EC%9E%AC%EB%AF%B8%EC%9E%88%EB%8A%94-%EB%B2%A1%ED%84%B0-%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8-%EB%A0%88%EC%9D%B4-%EC%85%98-.jpg?ver=6");
			$("#fileUpload").val("");
		}
		
	</script>
	<script type="text/javascript">
	
		$(document).ready(function(){
			console.log("연결");
			
			$("#dog_type").keyup(function(){
				var inputType = $("#dog_type").val();
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
						data : {"inputType" : $("#dog_type").val()},
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
			});
			
			// 날짜 입력 - 나이 구하기
			$("#dog_birth").focusout(function(){
				var today = new Date(); // 현재 날짜 (년월일시분초)
				var todayYear = Number(today.getFullYear()); // 현재 년도
				
				var birth = $("#dog_birth").val(); // 입력 날짜
				var [year,month] = birth.split('-');
				var birthYear = Number(year);
				
				var age = (todayYear - birthYear) + 1; // 만 나이 + 1: 실제 나이
				
				$("#dog_age").val(age);
			});
			
			$("#skipBtn").mouseover(function(){
				$("#skipBtn").css("background-color", "black");
			});
			
			$("#skipBtn").mouseout(function(){
				$("#skipBtn").css("background-color", "#00adff");
			});

			$("#skipBtn").click(function(){
				Swal.fire({
					  title: '반려견 등록을 건너뛰시겠습니까?',
					  text: '최초 반려견 미등록 시 활동 제약을 받습니다.',
					  icon: 'warning',
					  showCancelButton: true,
					  confirmButtonText: '건 너 뛰 기',
					  cancelButtonText: '취 소'
					}).then((result) => {
						if(result.isConfirmed){
							location.href = "${pageContext.request.contextPath }/";
						}
					});
			});
			
		});
		
		$("#dog_name").focusout(function(){
			var inputDogName = $("#dog_name").val();
			
			if(inputDogName.length == 0)
			{
				
			}
			else
			{
				$.ajax({
					type: "get",
					url: "dogNameCheck",
					data: {"dog_owner" : $("#dog_owner").val(), "dog_name" : $("#dog_name").val()},
					success: function(result){
						if(result == "OK")
						{
						
						}
						else
						{
							Swal.fire({
								title: "중복된 반려견 명입니다.",
								text: '중복된 반려견 명을 사용하실 수 없습니다.',
								icon: 'warning',
								confirmButtonText: '확 인',
							}).then((result) => {
								$("#dog_name").val("");
								$("#dog_name").focus();
							});
						}
					}
				});
			}
		});
		
		function dogJoinCheck(form){
			
			var InputDogOwner = $("#dog_owner").val();
			var inputDogName = $("#dog_name").val();
			var inputDogType = $("#dog_type").val();
			var inputDogGender = $("#dog_gender").val();
			var inputDogSpaying = $("#dog_spaying").val();
			var inputDogweight = $("#dog_weight").val();
			var inputDogBirth = $("#dog_birth").val();
			var viewDogOwner = $("#dog_owner").val();
			
			if(inputDogName.length == 0)
			{
				$("#dog_name").focus();
				Swal.fire({
					  title: '반려견 이름을 입력해주세요.',
					  text: '필 수 항 목 은 채 워 주 세 요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			if(inputDogType.length == 0)
			{
				$("#dog_type").focus();
				Swal.fire({
					  title: '반려견 품종을 입력해주세요.',
					  text: '필 수 항 목 은 채 워 주 세 요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			if(inputDogGender.length == 0)
			{
				$("#dog_gender").focus();
				Swal.fire({
					  title: '반려견 성별을 선택해주세요.',
					  text: '필 수 항 목 은 채 워 주 세 요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			if(inputDogSpaying.length == 0)
			{
				$("#dog_spaying").focus();
				Swal.fire({
					  title: '중성화 유무를 선택해주세요.',
					  text: '필 수 항 목 은 채 워 주 세 요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			if(inputDogweight.length == 0)
			{
				$("#dog_weight").focus();
				Swal.fire({
					  title: '반려견 무게를 입력해주세요.',
					  text: '필 수 항 목 은 채 워 주 세 요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			if(inputDogBirth.length == 0)
			{
				$("#dog_birth").focus();
				Swal.fire({
					  title: '반려견 탄생일을 입력해주세요.',
					  text: '필 수 항 목 은 채 워 주 세 요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			if(viewDogOwner.length == 0)
			{
				Swal.fire({
					  title: '잘못된 요청입니다.',
					  text: '회원가입 초기 입력 필수입니다.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			Swal.fire({
				  title: '반려견 추가 등록 하시겠습니까?',
				  text: '추후 나의 페이지에서 추가 등록하실 수 있습니다.',
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonText: '추 가 로 등 록',
				  cancelButtonText: '메 인 페 이 지 로'
				}).then((confirm) => {
					if(confirm.isConfirmed){
						form.submit();
					}
					else
					{
						form.action = "dogInfoAddEnd";
						form.submit();
						return true;
					}
				});
			return false;
			
		}
		
		
	</script>
</body>
</html>