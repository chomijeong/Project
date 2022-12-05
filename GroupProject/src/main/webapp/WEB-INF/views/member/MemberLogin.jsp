<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>LOGIN</title>

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
		#member_id, #member_pw{
			width: 358px;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: 31%;
    		text-align: center;
    		margin-bottom: 0px;
		}
		#submitBtn {
			width: 310px;
			margin-top: 1%;
			margin-left: 36%;
			color: white;
		}
		#skipBtn {
			width: 250px;
			background-color: darkslategray;
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
    		margin-left: 46%;
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
			margin-left: 30%;
		}
		
		.contact-form {
			margin-right: 5%;
		}
		
		#singUpTitle {
			color: white;
			font-size: 45px;
			font-weight: bold;
			margin-top: 18%;
		}
		#singUpText{
			font-size: 16px;
    		color: white;
    		margin-top: 15%;
		}
		
		#singInTitle {
			font-size: 45px;
    		margin-left: 40%;
    		font-weight: bold;
    		margin-top: 2%;
		}
		#findPw{
			color: indianred;
    		font-weight: 500;
    		font-size: 12px;
    		margin-left: 48%;
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
						<h1>L O G I N</h1>
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
			<form action="memberLogin" method="post" onSubmit="return LoginCheck()">
			<div class="row">
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="single-product-item" style="text-align: center; width:100%; height: 520px; background-color: cadetblue;">
						<div class="product-image" id="imgbackground">
							<p id="singUpTitle">S I G N U P</p>
							<p id="singUpText"> 계정이 없으시다면 아래 버튼을 눌러 회원 등록을 해주세요!</p>
							<div class="col-lg-6 mb-5 mb-lg-0">
								<input type="button" id="skipBtn" onclick="location.href='memberJoinPage'" value="J O I N  N O W !">
							</div>
						</div>
						
					</div>
				</div>
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div id="form_status"></div>
					<div class="contact-form">
						<p id="singInTitle">S I G N I N</p>
						<div style="margin-top: 7%;">
								<label class="common">I D</label>
							<p>
								<input type="text" name="member_id" id="member_id" placeholder="아이디를 입력해주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='아이디를 입력해주세요.'"> <br>
							</p>
								<label class="common" style="margin-top: 7%;">P A S S W O R D</label>
							<p>
								<input type="password" name="member_pw" id="member_pw" placeholder="비밀번호를 입력해주세요." onfocus="this.placeholder = ''" onblur="this.placeholder='비밀번호를 입력해주세요.'"> <br>
							</p>
							<p style="margin-top: 13%;">
							<a id="findPw">Forgot Account ID / PASSWORD ?</a>
							<input type="submit" id="submitBtn" value="L O G I N">
							</p>
			
						</div>
					</div>
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
	<!-- sweatalert2 -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
		var checkMsg = "${msg}";
		console.log("로그인 페이지 연결");
		console.log(checkMsg.length);
		if( checkMsg.length > 0 ){
			Swal.fire({
				  title: checkMsg,
				  text: '회원가입 초기 입력 필수입니다.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
		}
		
		
		function LoginCheck(){
			
			var inputId = $("#member_id").val();
			var inputPw = $("#member_pw").val();
			
			if(inputId.length == 0)
			{
				$("#member_id").focus();
				Swal.fire({
					  title: '아이디를 입력해주세요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
			
			if(inputPw.length == 0)
			{
				$("#member_pw").focus();
				Swal.fire({
					  title: '비밀번호를 입력해주세요.',
					  icon: 'error',
					  confirmButtonText: '확인'
					});
				return false;
			}
		}
	</script>
	
	<script type="text/javascript">
		$("#findPw").click(function(){
			console.log("연결");
			$(".swal2-input").css("display","none");
			
			    Swal.fire({
			        title: '비 밀 번 호 찾 기',
			        html: '<form method="post" id="searchId_form">' +
			        '<input type="text" class="swal2-input" id="member_name" name="member_name" placeholder="가입자 이름을 입력해주세요." style="width: 80%;"><br>' +
			        '<input type="text" class="swal2-input" id="member_email" name="member_email" placeholder="가입자 이메일을 입력해주세요." style="width: 80%;">' +
			        '<form/>',
			        showCancelButton: true,
					confirmButtonText: '다 음',
					cancelButtonText: '취 소'
			    }).then((result) => {
			    	if(result.isConfirmed){
			    		var form = $("#searchId_form")[0];
			    		console.log(form);
			    		
			    		var formData = new FormData(form);
			    		
			    		$.ajax({
			    			type: "post",
			    			url: "findMemberId",
			    			data: formData,
			    			dataType: "json",
			    			async : false,
			    			contentType : false,
							processData : false,
			    			success: function(searchResult){
			    				if(searchResult == null)
			    				{
			    					Swal.fire({
			    						  title: '일치하는 정보가 없습니다.',
			    						  icon: 'error',
			    						  confirmButtonText: '확인'
			    					});
			    				}
			    				else
			    				{
			    					Swal.fire({
				    					title: '아이디 : ' + searchResult.member_id,
				    					text: '비밀번호도 찾으시겠습니까?',
				    					icon: 'question',
				    					showCancelButton: true,
				  					  	confirmButtonText: '비밀번호 찾기',
				  					  	cancelButtonText: '취소'
				    				}).then((result)=>{
				    					if(result.isConfirmed){
				    						console.log(searchResult.member_email);
				    						$.ajax({
				    							type: "get",
				    							url: "findMemberPw",
				    							data: {"member_email" : searchResult.member_email},
				    							async : false,
				    							success: function(result){
				    								Swal.fire({
							    						  title: '이메일로 임시비밀번호를 보냈습니다.',
							    						  text: '마이페이지에서 비밀번호 수정을 해주세요.',
							    						  icon: 'success',
							    						  confirmButtonText: '확인'
							    					});
				    							}
				    						}); 
				    					}
				    				});
			    				}
			    			}
			    		});
			    	}
			    });
		});
	</script>
</body>
</html>