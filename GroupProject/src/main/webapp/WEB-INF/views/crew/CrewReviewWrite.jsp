<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>크루 활동 후기</title>

		<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
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
	




<style>

ck.ck-sticky-panel .ck-sticky-panel__content_sticky {​​​​​​​​​​​
    position: absolute !important;
}

.ck.ck-editor {
    max-width: 1100px;}
.ck-editor__editable {
	min-height: 600px;}



/* 눈누 무료폰트 붙여넣은곳, 스타일원하는 곳에 font-family: 'OTWelcomeBA'; 를 붙여넣으면 됩니다. 눈누의 다른 모양의 폰트들도 웹폰트 형식이 이런데 같은 방식으로 쓰시면 되용_신혜원 */
@font-face {
    font-family: 'OTWelcomeBA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeBA.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
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

.form-control[readonly]{
color:gray; 
background-color: #ced4da33;
outline:none ;
border:0px;
}

.form-control:focus[readonly]{
color:gray; 
background-color: #ced4da33;

outline:none ;
box-shadow:none;
border:0px;
color:gray; 
}


</style>
</head>
<body>

	<%@ include file="../include/Topbar.jsp" %>
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Crew</p>
						<h1>크 루 활 동 후 기</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->


	
	<!-- check out section -->
	<div class="checkout-section mt-150" style="margin-bottom:50px;">
		<div class="container">
			<form action="crewReviewWrite" method = "get" id="formbtn">
			<div class="row">
																		
				<div class="col-lg-12">
					<div class="card ">
						<div class="card-header text-center" >
						    <h5 class="mb-0">
						     
						         크루 산책 후기 작성
						       
						    </h5>
						 </div>

						 <div class="card-body mb-10">
						     <div class="billing-address-form">
						     <input type="hidden" class="form-control " id="walk_map" name = "walk_map" value = '${walkinfo.walk_map }' >
                                            
                              <input type="hidden" class="form-control " id="walk_people" name = "walk_people" value = "${walkinfo.walk_people }" >
                                                                                                      
                                      <input type="hidden" class="form-control " id="walk_file" name = "walk_file" value = "${walkinfo.walk_code }">   
                                                                                                                                                						     
						     <div class="form-group row">
						     
						     	<div class="col-sm-6 mb-3 mb-sm-0">
						     	
						     			<label class = "text-center">제 목</label>
                                        <input type="text" class="form-control " id="walk_title" name = "walk_title" placeholder="제 목"  value = "">
						     	
						        </div>
						        
						        <div class="col-sm-6 mb-3 mb-sm-0">
						     	
						     			<label class = "text-center">작 성 일</label>
                                        <input type="text" class="form-control " id="walk_date" name = "walk_date"  value = "${walkinfo.walk_date }" readonly="readonly" style="outline:none;">
						     	
						        </div>
						        
						     </div>
						     		
						      <div class="form-group row">
                                
                           		    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	
                                    	<label class = "text-center">출 발 지</label>
                                        <input type="text" class="form-control " id="walk_startaddr" name = "walk_startaddr"value = "${walkinfo.walk_startaddr }" readonly="readonly" style="outline:none;">
                                    </div>
                                    
                                  <div class="col-sm-6">
                                    	
                                    	<label class = "text-center">모 집 인 원</label>                                    	
                                        <input type="text" class="form-control " name ="walk_mid" id = "walk_mid" placeholder="모집인원"  value = "${walkinfo.walk_mid }" readonly="readonly" style="outline:none;">
                                    </div>
                                            
                                                                    
                                </div>
                                
                                <div class="form-group row">
                                
                           		    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	
                                    	<label class = "text-center">날 씨</label>
                                        <input type="text" class="form-control " id="walk_weatherinfo" name = "walk_weatherinfo" readonly="readonly" style="outline:none;">
                                    </div>
                                    
                                  <div class="col-sm-6">
                                    	
                                    	<label class = "text-center">작 성 자</label>                                    	
                                        <input type="text" class="form-control " name ="walk_writer" id="walk_writer" placeholder="작성자" value = "${sessionScope.loginId }" readonly="readonly" style="outline:none;">
                                    </div>
                                            
                                                                    
                                </div>
                                
                                     <div class="form-group row">
                                
                           		    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	
                                    	<label class = "text-center">출 발 일 시</label>
                                        <input type="text" class="form-control " id="walk_time" name = "walk_time" value = "${walkinfo.walk_time }" readonly="readonly" style="outline:none;">
                                    </div>
                                    
                                  <div class="col-sm-6">
                                    	
                              	<label class = "text-center">강 아 지 체 형</label>
                                        <input type="text" class="form-control " id="walk_bodytype" name = "walk_bodytype" 
                                        value = "${fn:replace(fn:replace(fn:replace(walkinfo.walk_bodytype, '0010', '소형견'), '1025', '중형견'),'2580','대형견')}" readonly="readonly" style="outline:none;">
                                    </div>
                                                                    
                                </div>
                                
						     	<div class="form-group row">	
						     				  <div class="col-sm-12 mb-3 mb-sm-0">      							        
						        	<p><textarea class="form-control" name="walk_content" id="editor" style="width: 100%; height:500px;"> </textarea></p>		
						        			</div>		            
						         </div>

									<div class="form-group row">
										<div class="col-sm-8 mb-3 mb-sm-0">
										
										</div>
										
										<div class="col-sm-4 mb-3 mb-sm-0 ">

											<div class="form-group row">
											
												<div class="col-sm-6 mb-3 mb-sm-0 ">
												
													<a onclick = "formbtn()" class="cart-btn text-center"
														style="width:100%">등록</a>
												</div>
												<div class="col-sm-6 mb-3 mb-sm-0 ">
													<a href="mywalkList?walk_mid=${sessionScope.loginId }" class="cart-btn text-center"
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
    	<!-- Swal.fire 창  -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    
    <script type="text/javascript">
    
   var weatherInfo = '${walkinfo.walk_weatherinfo}';
   var weatherInfoArray = weatherInfo.split('/');
   var skyInfo = "";
   
   if(weatherInfoArray[0] == 0){
	   skyInfo='맑음';
   }if(weatherInfoArray[0] == 1){
	   skyInfo='구름많음';
   }if(weatherInfoArray[0] == 2){
	   skyInfo='흐림';
   }if(weatherInfoArray[0] == 3){
	   skyInfo='비';
   }if(weatherInfoArray[0] == 4){
	   skyInfo='비/눈';
   }if(weatherInfoArray[0] == 5){
	   skyInfo='눈';
   }
   
    
    $("#walk_weatherinfo").val(skyInfo+'/'+weatherInfoArray[1]+'/'+weatherInfoArray[2]);
    
    function formbtn(){
    	if( $("#walk_title").val().length<2){
    		Swal.fire("제목을 2자이상 입력해주세요");
    		return null
    	}
    	
   
    	
     	$("#formbtn").submit(); 
    	
    	
    }
    
    
    
    
    </script>
    
       <script type="text/javascript">
		
	
		var checkMsg = "${msg}"; 
	
		if  (checkMsg.length > 0){ 
			Swal.fire(checkMsg);
			
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