<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Single Product</title>

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
		.goods_css{
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
			text-align: center;
		}
		#skipBtn {
			width: 250px;
			background-color: #00adff;
			margin-top: 90px;
			color: white;
		}
		#addBtn {
			width: 250px;
			background-color: #80808091;
			margin-top: 90px;
			color: white;
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
			aspect-ratio: 16 / 9;
		}
		#imgbackground{
			width: 100%;
			height: 100%;
			background-size: cover;
			
		}
		#fileUpload{
		
			
			
		}
		#input-file{
			width: 150px;
			background-color: #00ffbd;
			border-radius: inherit;
			height: 25px;
			color: white;
			cursor: pointer;
		}
		.textarea{
			width: 358px;
    		padding: 15px;
    		border: 1px solid #ddd;
    		border-radius: 3px;
    		margin-left: 19%;
    		width: 70%;
    		text-align: center;
    		margin-bottom: 0px;
		
		}
		.contact-form form p textarea {
   			 border: 1px solid #ddd;
   			 padding: 15px;
   			 height: 200px;
   			 border-radius: 3px;
   			 width: 70%;
   			 resize: none;
		}
		/* AdminTopbar.jsp를 만들어 해당 메뉴 태그에 바로 적용하면 동적 투명도 변환기능이 상실하여 직접 클래스 스타일을 줘야 하므로 각 페이지마다 
관리자 페이지 일 경우 이 아래 있는 스타일의 주석을 지우고, 활성화 하여 사용하세요(메뉴색 살짝 붉은기돌게 바꾸는 스탈입니다.).*/
 .sticky-wrapper.is-sticky .top-header-area {
	background-color: rgb(36, 0, 22);
} 
.breadcrumb-section:after {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  content: "";

background-image:url("${pageContext.request.contextPath}/resources/assets/img/adminforest.jpg");
background-color: rgb(0,0,0,0.6);
background-blend-mode: multiply;
background-position:right center;
  z-index: -1;
  opacity:1;

}

.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

/* named upload */
.filebox .goods_imagefile {
  display: inline-block;
  padding: .5em .75em;
  font-size: inherit;
  font-family: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}
.input_file {

width: 150px;
			background-color: #00ffbd;
			border-radius: inherit;
			height: 25px;
			color: white;
			cursor: pointer;

}
.filebox.bs3-primary label {
  margin-top: 0.5em;
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}


	</style>
</head>
<body>
	
	<!-- Topbar 인클루드 자리, 관리자용과 회원용 공통으로 사용하니 바꾸지 마세요. -->
	<%@ include file="../../include/AdminTopbar.jsp" %>


	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Goods Write</p>
						<h1>상품등록</h1>
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
		<div class="card-body container">
		
		<form action="adminInsertGoods" method="post" enctype="multipart/form-data">
			<p style="font-size: 30px; font-weight:bold;">상 품 등 록<p>
			<div class="row">
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="form-title" style="text-align: center;">
						<p style="font-size: 17px; font-weight:bold;">상 품 이 미 지 등 록</p>
						<hr>
					</div>
					<div class="single-product-item" style="text-align: center; width:100%; =""heigth: 82%; width: 500px; height: 500px;">
						
						<div class="product-image" id="imgbackground">
							<img id="goods_image" style="width: 400px; height: 400px;" src="https://cdn-icons-png.flaticon.com/512/31/31821.png">
						</div>
						<p style="color: red;">상품이미지</p>
						
						<div class="filebox bs3-primary">
						<label class="input-file" for="fileUpload" style="background-color: navy; border: 1px solid navy;">
							<i class="fa-solid fa-camera">
							상 품 이 미 지 등 록
							</i>
						</label>
						<input type="file" id="fileUpload" name="goods_imagefile" onchange="loadFile(this)">
						<br>
						
              				<input class="goods_imagefile"  value="파일선택" disabled="disabled">

            		  <label for="ex_filename" style="background-color: navy; border: 1px solid navy;">업로드</label> 
             				 <input type="file" id="ex_filename" class="upload-hidden" name="goods_imagefile" onchange="loadFile(this)"> 
            		</div>
							
					</div>
				</div>
				<div class="col-lg-6 mb-5 mb-lg-0">
					<div class="second" style="text-align: center;">
						<p style="font-size: 17px; font-weight:bold;">상 품 정 보 입 력</p>
						<hr>
					</div>
					<div id="form_status"></div>
					
					<div class="contact-form">
						
								<label class="common">상품명</label>
							<p>
								<input type="text" class="goods_css" name="goods_name" id="goods_name" placeholder="상품 명을 입력해주세요."> <br>
								
							</p>
							

							<label class="common">상품가격</label>
							<p>
								<input type="text" class="goods_css" name="goods_price" id="goods_price" placeholder="상품 가격을 입력해주세요."> <br>
								
							</p>
							

							<label class="common">상품수량</label>
							<p>
								<input type="text" class="goods_css" name="goods_amount" id="goods_amount" placeholder="상품 수량을 입력해주세요."> <br>
								
							</p>

						
							<label class="common">상품종류</label>
							<p>
								<select class="goods_css" id="goods_type" name="goods_type" style="text-align-last: center;">
														<option value="">상품종류선택</option>
    													<option value="GW001">목줄</option>
    													<option value="GW002">하네스</option>
    													<option value="GW003">장난감</option>
    													<option value="GW004">기타</option>
								</select>
							</p>
							
							
							<label class="common">설명</label>
							<p>
								<textarea class="goods_css" name="goods_introduce" id="goods_introduce" class="textarea" ></textarea> <br>
								
							</p>
							
							
							

							
							
						
					</div>
				
				
					
				</div>
				
				

				
				
			</div>
		<div class="row">
			<div class="col-12 mb-11 mb-lg-0" style="text-align: center;">
					<input  type="submit" id="submitBtn" value="상품등록">
				</div>
				
			
		</div>
		</form>
		</div>
		<!-- <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQcKTNljQs8LL-b1EiMIke4ALNiwsBCkI1a8KGx181ZAxJDtbtFUH8-8Co7ASz1EnoOY4&usqp=CAU" id="img_section" style="width: 400px; height: 400px;">
		<br>
    	<input type="file" id="upload_file" accept="image/*" value="업로드" onchange="loadFile(this)"> -->
		
	</div>
	<!-- end contact form -->
	
	<%@ include file="../../include/AdminFooter.jsp" %>
	
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
	<script>
	
		// 기존 이미지 - > 새로운 이미지로 업로드 하는 방법
		function loadFile(input) {
			
		  var file = event.target.files[0];
		  
		  var reader = new FileReader();
		  
		  reader.onload = function(input){
			  $("#goods_image").attr("src", input.target.result);
		  }

		  reader.readAsDataURL(file);
		  
		  
		 
		  
		}
		  

		$(document).ready(function(){
			 var fileTarget1 = $("#fileUpload");
			  fileTarget1.on('change', function(){  // 값이 변경되면
				    if(window.FileReader){  // modern browser
				      var filename = $(this)[0].files[0].name;
				    };
				    
			  $(this).siblings('.goods_imagefile').val(filename);
			  });
			}); 
		
		

		$(document).ready(function(){
			  var fileTarget = $('.filebox .upload-hidden');

			  fileTarget.on('change', function(){  // 값이 변경되면
			    if(window.FileReader){  // modern browser
			      var filename = $(this)[0].files[0].name;
			    };
			    
			    // 추출한 파일명 삽입
			    $(this).siblings('.goods_imagefile').val(filename);
			  });
			}); 
			
	</script>
	
	
	
	
</body>
</html>