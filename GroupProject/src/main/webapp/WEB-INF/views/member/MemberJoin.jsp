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
	<title>MEMBER JOIN</title>

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
		#member_pw, #member_pwcheck, #member_gender, #member_birth{
			width: 49%;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
		}
		#submitBtn {
			width: 250px;
			margin-left: 430px;
			margin-top: 50px;
			color: white;
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
		#member_emailselect{
			width: 49%;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		width: 30%;
		}
		#span_box {
			width: 99%;
    		padding: 15px;
   			border: 1px solid #ddd;
    		border-radius: 3px;
		}
		#pwConfirmCheck {
			float:right;
			margin-right: 39%;
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
						<h1>M E M B E R  J O I N</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- contact form -->
	<div class="contact-from-section mt-80 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 mb-5 mb-lg-0">
					<div class="form-title">
						<p style="font-size: 30px; font-weight:bold;">회 원 가 입 </p>
						<p style="font-size: 17px; font-weight:bold;">기 본 정 보 를 입 력 해 주 세 요. (필 수 항 목)</p>
						<hr>
					</div>
				 	<div id="form_status"></div>
					<div class="contact-form">
						<form action="memberJoin" method="post" id="fruitkha-contact" onSubmit="return memberJoinCheck();">
							<input type="hidden" id="member_profile" name="member_profile">
								<label>I D</label>
							<p>
								<input type="text" placeholder="6 ~ 10자 사이의 영문 + 숫자 조합" name="member_id" id="member_id"> <br>
								<span id="idCheck"></span>
							</p>
								<label>P A S S W O R D</label>
							<p>
								<input type="password" placeholder="8 ~ 15자 사이의 영문 + 숫자 조합" name="member_pw" id="member_pw">
								<input type="password" placeholder="비밀번호 확인" name="" id="member_pwcheck"><br>
								<span id="pwCheck"></span><span id="pwConfirmCheck"></span>
							</p>
								<label>G E N D E R</label>
							<p>
								<select id="member_gender" name="member_gender">
									<option value="">성 별 선 택</option>
    								<option value="남">남</option>
    								<option value="여">여</option>
								</select>
							</p>
								<label>N A M E</label>
							<p>
								<input type="text" placeholder="ex) 홍 길 동" name="member_name" id="member_name">
							</p>
								<label>B I R T H</label>
							<p>
								<input type="date" name="member_birth" id="member_birth">
							</p>
								<label>E M A I L</label>
							<p>
								<input type="text" placeholder="ex) gildong" name="member_emailid" id="member_email" style="width: 30%;"> 
								@
								<input type="text" name="member_emaildomain" id="member_emailDomain" placeholder="ex) example.com" style="width: 30%;"> 
								<select id="member_emailselect" name="">
									<option value="">직 접 입 력</option>
    								<option value="naver.com">네 이 버</option>
    								<option value="google.com">구 글</option>
    								<option value="daum.net">다 음</option>
    								<option value="nate.com">네 이 트</option>
								</select>
							</p>
							<label>T E L</label>
							<p>
								<input type="tel" placeholder="숫자만 입력해주세요." name="member_tel" id="member_tel">
							</p>
							<label>A D D R E S S</label>
							<p>
								<input type="text" name="member_postcode" id="sample6_postcode" placeholder="우편번호...">
								<input type="button" id="postcodeBtn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
							</p>
						
							<p>
								<input type="text" name="member_addr" id="sample6_address" placeholder="주소..." >
								<input type="text" name="member_detailaddr" id="sample6_detailAddress" placeholder="상세주소...">
							</p>
							<p>
								<input type="text" name="member_extraaddr" id="sample6_extraAddress"  placeholder="참고항목..." >
							</p>		
							
							<p><input type="submit" id="submitBtn" value="다 음 단 계"></p>
							
						</form>
					</div>
				</div>
			</div>
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
	<!-- alert 창  -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://kit.fontawesome.com/4fb5398ede.js" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
		// 아이디 체크 전역변수
		var inputIdCheck = false;
		
		$(document).ready(function(){
			console.log("연결");
		
			// 아이디 중복 확인
			$("#member_id").focusout(function(){
				var inputId = $("#member_id").val();
				console.log("입력된 아이디 : " + inputId);
				if(inputId.length == 0)
				{
					$("#idCheck").css("color","red").text("아이디가 입력되지 않았습니다.");
				}
				else if(inputId.length > 10 || inputId.length < 6)
				{
					$("#idCheck").css("color","red").text("아이디를 다시 확인해주세요. 6~10자리 사이의 영문 + 숫자 조합");
				}
				else
				{
					// 아이디 중복 확인 - DB 접속
					$.ajax({
						type : "get",
						url : "memberIdCheck",
						data : {"inputId" : $("#member_id").val()},
						success : function(idCheck){
							if(idCheck == "OK")
							{
								$("#idCheck").css("color","blue").text("사용 가능한 아이디입니다.");
								inputIdCheck = true;
							}
							else
							{
								$("#idCheck").css("color","red").text("중복된 아이디입니다.");
								inputIdCheck = false;
							}
						},
						error : function(){
							alert("서버와의 통신이 불안정합니다.");
						}
					});
				}
			});
			
			// 비밀번호 입력 확인
			$("#member_pw").focusout(function(){
				var inputPw = $("#member_pw").val();
				
				if(inputPw.length == 0)
				{
					$("#pwCheck").css("color","red").text("비밀번호가 입력되지 않았습니다.");
				}
				else if(inputPw.length > 15 || inputPw.length < 8)
				{
					$("#pwCheck").css("color","red").text("비밀번호를 다시 확인해주세요. 8~15자리 사이의 영문 + 숫자 조합");
				}
				else
				{
					$("#pwCheck").css("color","blue").text("비밀번호를 한번 더 확인해주세요.");
				}
				
			});
			
			// 비밀번호 체크
			$("#member_pwcheck").focusout(function(){
				var inputPw = $("#member_pw").val();
				var inputPwCheck = $("#member_pwcheck").val();
				
				if(inputPw.length == 0)
				{
					$("#pwConfirmCheck").css("color", "red").text("비밀번호가 입력되지 않았습니다.");
				}
				
				else if(inputPw == inputPwCheck)
				{
					$("#pwConfirmCheck").css("color", "blue").text("비밀번호가 일치합니다.");
				}
				else
				{
					$("#pwConfirmCheck").css("color", "red").text("비밀번호가 불일치합니다.");
				}
			});
			
			// 이메일 도메인 선택
			$("#member_emailselect").change(function(){
				var selDomain = $("#member_emailselect").val();
				$("#member_emailDomain").val(selDomain);
			});
		});
		
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
		
		// 아이디 : 한글 & 특수기호 입력 방지
		$("#member_id").keyup(function() {
		var inputVal = $("#member_id").val();
		$("#member_id").val((inputVal.replace(/[ㄱ-힣~!@#$%^&*()_+|<>?:{}= ]/g,'')));
	});
	
		$("#member_emailid").keyup(function(){
			var inputEmailId = $("#member_emailid").val();
			$("#member_emailid").val((inputEmailId.replace(/[ㄱ-힣~!@#$%^&*()_+|<>?:{}= ]/g,'')));
		});
		
	// 회원가입 입력 확인
	function memberJoinCheck(){
		
		var inputId = $("#member_id").val();
		var inputPw = $("#member_pw").val();
		var inputGender = $("#member_gender").val();
		var inputName = $("#member_name").val();
		var inputBirth = $("#member_birth").val();
		var inputEmail = $("#member_email").val();
		var inputEmailDomain = $("#member_emailDomain").val();
		var inputTel = $("#member_tel").val();
		var inputPostCode = $("#sample6_postcode").val();
		
		if(!inputIdCheck)
		{
			$("#member_id").focus();
			Swal.fire({
				  title: '아이디를 확인해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'	 
				});
				
			return false;
		}
		
		if(inputId.length == 0)
		{
			$("#member_id").focus();
			Swal.fire({
				  title: '아이디를 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'	
				});
				
			return false;
		}
		
		if(inputPw.length == 0)
		{
			$("#member_pw").focus();
			Swal.fire({
				  title: '비밀번호를 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			
			return false;
		}
		
		if(inputGender.length == 0)
		{
			$("#member_gender").focus();
			Swal.fire({
				  title: '성별을 선택해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			return false;
		}
		
		if(inputName.length == 0)
		{
			$("#member_name").focus();
			Swal.fire({
				  title: '이름을 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			return false;
		}
		
		if(inputBirth.length == 0)
		{
			$("#member_birth").focus();
			Swal.fire({
				  title: '생년월일을 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			return false;
		}
		
		if(inputEmail.length == 0)
		{
			$("#member_email").focus();
			Swal.fire({
				  title: '이메일을 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			return false;
		}
		
		if(inputEmailDomain.length == 0)
		{
			$("#member_emailDomain").focus();
			Swal.fire({
				  title: '이메일을 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			return false;
		}
		
		if(inputTel.length == 0)
		{
			$("#member_tel").focus();
			Swal.fire({
				  title: '연락처를 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			return false;
		}
		
		if(inputPostCode.length == 0)
		{
			$("#sample6_postcode").focus();
			Swal.fire({
				  title: '주소를 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'
				});
			return false;
		}
	}
	
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
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
   </script>
</body>
</html>