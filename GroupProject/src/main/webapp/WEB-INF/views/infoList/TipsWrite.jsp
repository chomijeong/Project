<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>유용정보작성</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
	
	<link rel="preconnect" href="https://fonts.googleapis.com/%22%3E">
	<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
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
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
</head>


<style>

	.ck.ck-editor {
    	max-width: 1100px;
	}
	.ck-editor__editable {
	    min-height: 500px;
	}



/* 눈누 무료폰트 붙여넣은곳, 스타일원하는 곳에 font-family: 'OTWelcomeBA'; 를 붙여넣으면 됩니다. 눈누의 다른 모양의 폰트들도 웹폰트 형식이 이런데 같은 방식으로 쓰시면 되용_신혜원 */
@font-face {
    font-family: 'OTWelcomeBA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeBA.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
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

button {
  webkit-transition: 0.3s;
  o-transition: 0.3s;
  transition: 0.3s;
  border : 0px;
  border-radius: 50px;
  font-family: 'Poppins', sans-serif;
  display: inline-block;
  background-color: #F28123;
  color: #fff;
  padding: 10px 20px;
}

button:hover{

  background-color: #051922;
  color: #F28123;
}
 
</style>
<body>

	<%@ include file="/WEB-INF/views/include/Topbar.jsp" %>
	
		<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Tips</p>
						<h1>유 용 정 보 작 성</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- check out section -->
	<div class="checkout-section mt-150" style="margin-bottom: 50px;">
		<div class="container">
			<form action="tipsWrite" method="post" id="formbtn">
				<div class="row">
					<div class="text-center"></div>

					<div class="col-lg-12">
						<div class="card">
							<div class="card-header text-center">
								<h5 class="mb-0">유용 정보 작성</h5>
							</div>

							<div class="card-body mb-10">
								<div class="billing-address-form">
									<div class="form-group row">
										<div class="col-12">
											<!-- <label class="text-center">제목</label>  -->
											<input type="hidden" value="${sessionScope.loginId }" name="board_writer">
											<input type="text" required="required" class="form-control form-control-user" id="" name="board_title" placeholder="제목을 입력해주세요.">
										</div>
									</div>

									<div class="form-group row">
									</div>
									<div class="form-group row">
										<div class="col-sm-12 mb-3 mb-sm-0">
											<p>
												<textarea class="form-control" name="board_content" id="editor" style="width: 100%; height: 500px;"></textarea>
											</p>
										</div>
									</div>

									<div class="form-group row">
										<div class="col-sm-8 mb-3 mb-sm-0"></div>
										<div class="col-sm-4 mb-3 mb-sm-0">
											<div class="form-group row">
												<div class="col-sm-6 mb-3 mb-sm-0">
													<button style="width: 100%">등록</button>
												</div>
												<div class="col-sm-6 mb-3 mb-sm-0">
													<button type="button" onclick="tipsWriteCancel()" style="width: 100%">취소</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- end check out section -->
	
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
	
	 <script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/super-build/ckeditor.js"></script>
    
    <script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
	
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	 
	<script type="text/javascript">
		function formbtn() {

			$("#formbtn").submit();

		}
		
		function tipsWriteCancel() {
			console.log("글작성 취소 버튼")
			
			Swal.fire({
	  			   title: '글 작성을 취소하시겠습니까?',
	  			   text: '작성된 글은 저장되지 않습니다.',
	  			   icon: 'warning',
	  			   
	  			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
	  			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
	  			   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
	  			   confirmButtonText: '나가기', // confirm 버튼 텍스트 지정
	  			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
	  			   
	  			   reverseButtons: false, // 버튼 순서 거꾸로
	  			   
	  			}).then(result => {
	  			   // 만약 Promise리턴을 받으면,
	  			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
	  			   		location.href = "${pageContext.request.contextPath}/tipsListPage";
	  			      
	  			   }
	  			});
			
		}
	</script>

	<script type="text/javascript">
		var checkMsg = "${msg}";
		console.log("checkMsg : " + checkMsg);
		if (checkMsg.length > 0) {
			alert(checkMsg);

		}
	</script>

	<script>
		CKEDITOR.ClassicEditor
				.create(
						document.getElementById("editor"),
						{

							toolbar : {
								items : [
									'alignment:left',
					                 'alignment:right',
					                 'alignment:center',
					                 'alignment:justify',
					                 'alignment',
					                 'fontSize',
					                 'highlight',
					                 'bold',
					                 'underline',
					                 'imageUpload',
					                 'heading',
					                 'imageStyle:full'
									],
								shouldNotGroupWhenFull : true
							},

							list : {
								properties : {
									styles : true,
									startIndex : true,
									reversed : true
								}
							},

							fontFamily : {
								options : [
										'default',
										'Arial, Helvetica, sans-serif',
										'Courier New, Courier, monospace',
										'Georgia, serif',
										'Lucida Sans Unicode, Lucida Grande, sans-serif',
										'Tahoma, Geneva, sans-serif',
										'Times New Roman, Times, serif',
										'Trebuchet MS, Helvetica, sans-serif',
										'Verdana, Geneva, sans-serif' ],
								supportAllValues : true
							},

							htmlSupport : {
								allow : [ {
									name : /.*/,
									attributes : true,
									classes : true,
									styles : true
								} ]
							},
							htmlEmbed : {
								showPreviews : true
							},

							link : {
								decorators : {
									addTargetToExternalLinks : true,
									defaultProtocol : 'https://',
									toggleDownloadable : {
										mode : 'manual',
										label : 'Downloadable',
										attributes : {
											download : 'file'
										}
									}
								}
							},

							removePlugins : [

							'CKBox', 'CKFinder', 'EasyImage',
									'RealTimeCollaborativeComments',
									'RealTimeCollaborativeTrackChanges',
									'RealTimeCollaborativeRevisionHistory',
									'PresenceList', 'Comments', 'TrackChanges',
									'TrackChangesData', 'RevisionHistory',
									'Pagination', 'WProofreader', 'MathType' ],

							ckfinder : {

								uploadUrl : 'fileupload.do'
							},

						});
	</script>



</body>
</html>