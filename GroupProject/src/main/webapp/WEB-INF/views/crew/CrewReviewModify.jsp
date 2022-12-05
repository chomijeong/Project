<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>크루후기정보수정</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
		<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
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
	    min-height: 1000px;
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

 
</style>
<body>

	<%@ include file="/WEB-INF/views/include/Topbar.jsp" %>
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Crew</p>
						<h1>크 루 활 동 후 기 수 정</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->


	
	<!-- check out section -->
	<div class="checkout-section mt-150" style="margin-bottom:50px;">
		<div class="container">
			<form action="reviewModify" method = "get" id="formbtn" onSubmit="return checkContent()">
			<div class="row">
																			
				<div class="col-lg-12">
					<div class="card ">
						<div class="card-header text-center" >
						    <h5 class="mb-0">
						     
						         산책 후기 정보
						       
						    </h5>
						 </div>

						 <div class="card-body mb-10">
						     <div class="billing-address-form">
						     
						     
						     <div class="form-group row">
						     
						     	<div class="col-sm-6 mb-3 mb-sm-0">
						     	
						     			<label class = "text-center">제 목</label>
						     			<input type="hidden" class="form-control form-control-user" id="walk_hits" name = "walk_hits"
                                            placeholder="제 목" value = "${selectreview.walk_hits }">
						     			
						     			 <input type="hidden" class="form-control form-control-user" id="walk_code" name = "walk_code"
                                            placeholder="제 목" value = "${selectreview.walk_code }">
                                            
                                         <input type="hidden" class="form-control form-control-user" id="walk_map" name = "walk_map"
                                            placeholder="제 목" value = "${selectreview.walk_map }">   
                                            
                                              <input type="hidden" class="form-control form-control-user" id="member_id" name = "member_id"
                                            placeholder="제 목" value = "${sessionScope.loginId }">  
                                            
                                        <input type="text" class="form-control form-control-user" id="walk_title" name = "walk_title"
                                            placeholder="제 목" value = "${selectreview.walk_title }">
						     	
						        </div>
						        
						        <div class="col-sm-6 mb-3 mb-sm-0">
						     	
						     			<label class = "text-center">작 성 일</label>
                                        <input type="text" class="form-control form-control-user" id="walk_date" name = "walk_date"
                                            value = "${selectreview.walk_date }" readonly="readonly">
						     	
						        </div>
						        
						     </div>
						     		
						      <div class="form-group row">
                                
                           		    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	
                                    	<label class = "text-center">출 발 지</label>
                                        <input type="text" class="form-control form-control-user" id="walk_startaddr" name = "walk_startaddr"
                                            placeholder="출발지" value = '${selectreview.walk_startaddr }' readonly="readonly">
                                    </div>
                                    
                                  <div class="col-sm-6">
                                    	
                                    	<label class = "text-center">모 집 인 원</label>                                    	
                                        <input type="text" class="form-control form-control-user" name ="walk_mid" id = "walk_mid"
                                            placeholder="모집인원"  value = "${selectreview.walk_mid }" readonly="readonly">
                                    </div>
                                            
                                                                    
                                </div>
                                
                                <div class="form-group row">
                                
                           		    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	
                                    	<label class = "text-center">날 씨</label>
                                        <input type="text" class="form-control form-control-user" id="walk_weatherinfo" name = "walk_weatherinfo"
                                            placeholder="날씨" value = "${selectreview.walk_weatherinfo }" readonly="readonly">
                                    </div>
                                    
                                  <div class="col-sm-6">
                                    	
                                    	<label class = "text-center">작 성 자</label>                                    	
                                        <input type="text" class="form-control form-control-user" name ="walk_writer" id="walk_writer"
                                            placeholder="작성자" value = "${sessionScope.loginId }" readonly="readonly">
                                    </div>
                                            
                                                                    
                                </div>
                                
                                 <div class="form-group row">
                                
                           		    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	
                                    	<label class = "text-center">출 발 일 시</label>
                                        <input type="text" class="form-control form-control-user" id="walk_time" name = "walk_time"
                                            value = "${selectreview.walk_time }" readonly="readonly">
                                    </div>
                                    
                                  <div class="col-sm-6">
                                    	
                              	<label class = "text-center">강 아 지 체 형</label>
                                        <input type="text" class="form-control form-control-user" id="walk_bodytype" name = "walk_bodytype"
                                              value = "${selectreview.walk_bodytype }" readonly="readonly">
                                    </div>
                                            
                                                                    
                                </div>
                                
						     	<div class="form-group row">	
						     				  <div class="col-sm-12 mb-3 mb-sm-0">      							        
						        	<p><textarea class="form-control" name="walk_content" id="editor" style="width: 100%; height:500px;">${selectreview.walk_content } </textarea></p>		
						        			</div>		            
						         </div>

									<div class="form-group row">
										<div class="col-sm-8 mb-3 mb-sm-0">
										
										</div>
										
										<div class="col-sm-4 mb-3 mb-sm-0 ">

											<div class="form-group row">
											
												<div class="col-sm-6 mb-3 mb-sm-0 ">
												
													<a onclick = "formbtn()" class="cart-btn text-center"
														style="width:100%">수정하기</a>
												</div>
												<div class="col-sm-6 mb-3 mb-sm-0 ">
													<a href="reviewPage?walk_code=${selectreview.walk_code }&walk_hits=${selectreview.walk_hits}&member_id=${sessionScope.loginId }" class="cart-btn text-center"
														style="width:100%">취 소</a>
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
	

 






	<%@ include file="/WEB-INF/views/include/Footer.jsp" %>	
	

	
	
	
	
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
    
    	<!-- alert 창  -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>	
    
    
    <script type="text/javascript">
    function formbtn(){
    	
    	$("#formbtn").submit();
    	
    	
    }
    
	var inputWriteCheck = false;
    
   	function checkContent(){
   		
   		var inputTitle = $("#walk_title").val();
   		var inputContent = $("#editor").text();
   		
   		if(inputTitle.length == 0)
		{
			Swal.fire({
				  title: '제목을 입력해주세요!',
				  text: '필 수 항 목 을 채 워 주 세 요.',
				  icon: 'error',
				  confirmButtonText: '확인'	
				});
			return false;
		}
   	}
    
    
    </script>
    

    
    
    
    

	 <script>
	 
	
	 

     CKEDITOR.ClassicEditor.create(document.getElementById("editor"), {
    	 
         toolbar: {
             items: [     
            	 
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
         ],
         
         
         
         ckfinder: {
            
             uploadUrl: 'fileupload.do'
         },
         
    
       
     });
     
  
       
        
    </script>



</body>
</html>