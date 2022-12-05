```<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<title>관리자상품관리게시판</title>

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

	<!-- Custom styles for this page -->
	<link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

	<!-- Custom fonts for this template-->
	<link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

	<!-- Custom styles for this template-->
	<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">

	
	<!-- Custom styles for this page -->
   	<link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

	<link href="https://unpkg.com/bootstrap-table@1.20.2/dist/bootstrap-table.min.css" rel="stylesheet">

	


<style type="text/css">

.page-item.active .page-link {    /* 페이징 버튼 색깔 변경 */
    z-index: 3;
    color: #fff;
    background-color: rgb(150,150,150);
    border-color:rgb(100,100,100);
}

.dataTables_length { /* 페이지 몇줄 까지 출력하는거 숨김 */
	display: none;


}

label {
font-weight: bold;
color: gray;
}

.dataTables_info { /* 하단 페이징 옆에 텍스트 지움 */

	display: none;
}


.pagination{  /* 페이징 위치 */

	float: left;
    width: percentage((@columns / @grid-columns)); 

}
.goods_css{
width: 299px;
height: 33.9px;

border: 1px solid #ddd;
border-radius: 3px;

margin-bottom: 0px;
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


fileUpload {
font-family: 'Poppins', sans-serif;
display: inline-block;
background-color: #F28123;
color: #fff;
padding: 10px 20px;
}

.contact-form form p textarea {
border: 1px solid #ddd;
padding: 15px;
height: 200px;
border-radius: 3px;
width: 70%;
resize: none;
}

.form-control,.bootstrap-table-filter-control-goods_code,.search-input{
background-color: #5a5c69;
border: 1px solid #5a5c69;
color: black;
text-align: center;
}

#input-file{
width: 150px;
background-color: #00ffbd;
border-radius: inherit;
height: 25px;
color: white;
cursor: pointer;
}

.form-control1{
display: block;
    width: 100%;
    height: calc(1.5em + .75rem + 2px);
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

/* AdminTopbar.jsp를 만들어 해당 메뉴 태그에 바로 적용하면 동적 투명도 변환기능이 상실하여 직접 클래스 스타일을 줘야 하므로 각 페이지마다 
관리자 페이지 일 경우 이 아래 있는 스타일의 주석을 지우고, 활성화 하여 사용하세요(메뉴색 살짝 붉은기돌게 바꾸는 스탈입니다.).*/
 .sticky-wrapper.is-sticky .top-header-area {
	background-color: rgb(36, 0, 22);
} 

.table{
border: 1px solid white;

}
.tableborder{
	border-right: 1px solid white;
	text-align: center;
}

.btn-primary{
background-color: #5a5c69; 
border: 1px solid #5a5c69;
width: 100px;
height: 32px;
}

.pagination{
padding-right: 450px;
}

th{
width: 10%
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
						<p>Today Goods</p>
						<h1>오늘의 상품관리</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
<div class="latest-news mt-150 mb-150">	
<div class="container">
	<div class="card shadow mb-4 ">
		<div class="card-header py-3">
			<h3 class="m-0 font-weight-bold d-flex justify-content-center">상품관리</h3>
		</div>
		
		<div class="card-body">
		<a href="adminGoodsWritePage"class="btn btn-primary" onclick="GoodsWrite(this,'${Goods.goods_code}','${Goods.goods_optioncode }')">상품등록</a>
			<div class="table-responsive text-center">
			
				<table class="table table-layout: fixed" id="table" width="100%" data-pagination="true" data-page-number="1" data-toggle="table"
							cellspacing="0" data-filter-control="true" data-show-search-clear-button="true"  data-sort-class="table-active" data-sortable="true"> <!-- table-layout: fixed = 테이블 행 width 고정  -->
					<thead class="table-dark">


						<tr class="text-center">
							<th data-field="goods_code"  data-filter-control="input" data-sortable="true">상품코드</th>     <!-- width 설정은 본인이 알아서 설정 -->           
							<th data-field="goods_name" data-filter-control="input" data-sortable="true">상품명</th>
							<th data-field="goods_type" data-filter-control="select" data-sortable="true">상품종류</th>
							<th data-field="goods_amount" data-filter-control="input" data-sortable="true">수량</th>
							<th data-field="goods_price" data-filter-control="input" data-sortable="true">가격</th>
							<th data-field="goods_statename" data-filter-control="select" data-sortable="true">상품상태</th>
							<th data-field="goods_state" data-filter-control="input">상품관리</th>
							
						</tr>
					</thead>

		
					<tbody class="table-hover" style="border: 1px solid white;">
					<c:forEach items="${GoodsList }" var="Goods" varStatus="num">
							<tr class="text-left" >
	
								<td style="border-right: 1px solid white; text-align: center;">${Goods.goods_code }</td>
								<td style="border-right: 1px solid white; text-align: center;">${Goods.goods_name }</td>
								<td style="border-right: 1px solid white; text-align: center;">${Goods.goods_typename }</td>
								<td style="border-right: 1px solid white; text-align: center;">${Goods.goods_amount }</td>
								<td style="border-right: 1px solid white; text-align: center;">${Goods.goods_price_string }원</td>
								<td id="goods_statename${num.count }"style="border-right: 1px solid white; text-align: center;">${Goods.goods_statename }</td>
								
								
								
								<td style="text-align: center;"> 
								
								<select name="goods_state" id="goods_state" onchange="gState(this.value,'${Goods.goods_code}','${num.count }')">
    								<option value=""></option>
   									<option value="0" <c:if test="${Goods.goods_state == '0'}">selected</c:if>>매진상태</option>
   									<option value="1" <c:if test="${Goods.goods_state == '1'}">selected</c:if>>판매중</option>
   									<option value="5" <c:if test="${Goods.goods_state == '5'}">selected</c:if>>삭제완료</option>
								</select>
								
								<br>
								<br>
								<button class="btn btn-primary" onclick="adminGoodsViewShow('${Goods}','${Goods.goods_code}')">상세보기</button>
								                       	
								</td>
							</tr>

					</c:forEach>
					</tbody>
			
				</table>
		
			</div>
		</div>
	</div>
    
	  <!-- adminMvViewModal Modal-->
	  
    <div class="modal fade" id="adminGoodsViewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document" style="max-width: 1000px;" >
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-gray-900 text-primary font-weight-bold" id="exampleModalLabel">상품 상세 정보</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <form action="adminGoodsModify" method="post" enctype="multipart/form-data">
                <div class="modal-body">
                	<div class="row">
						<div class="col-lg-4 mb-5 mb-lg-0">
					<div class="single-product-item" style="text-align: center; width:100%; heigth: 82%; width: 300px; height: 300px;">
						<div class="product-image" id="imgbackground">
							<img id="goods_image" style="width: 250px; height: 250px;" src="" >
						</div>
						<p style="color: red;">상품이미지</p>
						<div class="filebox bs3-primary">
						<label class="input-file" for="fileUpload" id="imagewrite" style="background-color: navy; border: 1px solid navy;">
							<i class="fa-solid fa-camera">
							상 품 이 미 지 수 정
							</i>
						</label>
						<input type="file" id="fileUpload" name="goods_imagefile" onchange="loadFile(this)" readonly="readonly">
						<br>
						
              				<input class="goods_imagefile" id="goods_image" value="파일선택" disabled="disabled">

            		  <label for="ex_filename" style="background-color: navy; border: 1px solid navy;" id="uploadfile">업로드</label> 
             				 <input type="file" id="ex_filename" class="upload-hidden" name="goods_imagefile" onchange="loadFile(this)"> 
            		</div>
						
						
						</div>
							</div>
						<div class="col-8">
							<div class="row">
								<div class="col-12">
									<div class="text-gray-900">
                                            <!-- Form Row-->
                                          
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (상품코드)-->
                                                <div class="col-md-12 font-weight-bold">
                                                    <label class="small mb-1" for="goods_code">상품코드</label>
                                                    <input class="form-control" id="goods_code" name="goods_code" type="text"  readonly="readonly" value="">
                                                </div>
                                            </div>
                                            <!-- Form Group (상품명)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="goods_name">상품명</label>
                                                <input class="form-control" id="goods_name" name="goods_name" type="text" readonly="readonly"  value="">
                                            </div>
                                            <!-- Form Row        -->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (상품가격)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="goods_price">상품가격</label>
                                                    <input class="form-control" id="goods_price" name="goods_price" type="text" readonly="readonly" >
                                                </div>
                                                <!-- Form Group (상품재고)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="goods_amount">상품재고</label>
                                                    <input class="form-control" id="goods_amount" name="goods_amount" type="text" readonly="readonly"  >
                                                </div>
                                            </div>

                                                <!-- Form Group (상품종류)-->
                                                 <div class="row gx-3 mb-3">
                                                <div class="col-md-12">
                                                    <label class="small mb-1" for="goods_type">상품종류</label>
                                                    <p>
                                                   	<select class="form-control" id="goods_type" name="goods_type" disabled="disabled" style="text-align-last: center;">
														<option value="">상품종류선택</option>
    													<option value="GW001">목줄</option>
    													<option value="GW002">하네스</option>
    													<option value="GW003">장난감</option>
    													<option value="GW004">기타</option>
													</select>
													</p>
													</div>
													</div>
                                            <!-- Form Group (상품설명)-->
                                             <div class="row gx-3 mb-3">
                                            <div class="mb-3">
                                            
                                             <div class="col-md-12">
                                                <label class="small mb-1" for="goods_introduce">상품설명</label>
                                                
                                                <textarea style="height: 70px; width: 639px;" class="form-control" name="goods_introduce" id="goods_introduce" class="textarea" readonly="readonly"></textarea>
                                            </div>    
                                            </div>                                                                                                                                    
                                            </div>
                                            <button class="btn btn-primary btn_dNone" type="button"  id="openBtn" onclick="GoodsmodifyOpen()">상품수정</button>
                                            <button class="btn btn-danger btn_dNone" id="submitBtn" type="submit" onclick="GoodsModify()">수정하기</button>
                                            <button class="btn btn-secondary btn_dNone" id="closeBtn" type="button" onclick="GoodsmodifyClose()" >취소</button>
											
									</div>
								</div>

							</div>
						</div>
					</div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary btn_dNone" type="button" id="modalClose" data-dismiss="modal">닫기</button>
                </div>
                  </form>
            </div>
            
        </div>
      
    </div>    
	</div>
	</div>
	
	
					

	<%@ include file="../../include/AdminFooter.jsp" %>	
	
	
</body>
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

	<!-- Page level plugins -->
	<script src="${pageContext.request.contextPath }/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<script src="https://kit.fontawesome.com/2f771efc6f.js" crossorigin="anonymous"></script>

	<script src="https://unpkg.com/bootstrap-table@1.20.2/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.20.2/dist/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>
	

<script type="text/javascript">	
var checkMsg = '${msg}';
console.log(checkMsg);


if(checkMsg.length > 0){

	alert(checkMsg);
	
}
</script>
  
  <script type="text/javascript">
  
  	$(document).ready(function() {  // 해당 옵션별 정렬

  		
	   $('#table').bootstrapTable({

		   
	   });
  	
	});
	
		function gState(value, goods_code,num){
			console.log("상품코드 : " + goods_code);
	
			
			var goods_state = value;


		 console.log(value)
			
			$.ajax({
				type : "get",
				url : "adminGoodsState",
				data : { "goods_code" : goods_code, "goods_state" : goods_state},
				success : function(result){
					console.log("result : " + result);
				
					if(result > 0){
						
						
						if(goods_state == 0){
							$("#goods_statename"+num).text("매진상태");
						
						}else if(goods_state == 1){
							$("#goods_statename"+num).text("판매중");
							
						}else if(goods_state == 5){
							$("#goods_statename"+num).text("삭제완료");
							
						}
					}
			
					
					
				}
			});

		}
		
		
		
		
		function loadFile(input) {
			
			  var file = event.target.files[0];
			  
			  var reader = new FileReader();
			  
			  reader.onload = function(input){
				  $("#goods_image").attr("src", input.target.result);
			  }
			  
			  reader.readAsDataURL(file);
			}
			
		
		
		function adminGoodsViewShow(Goods,goods_code){
			console.log("adminGoodsViewShow() 호출" );
			console.log(Goods);
			var row_gd = Goods.split('[')[1].split(']')[0].split(", GD");
			var gdData = {};
			for(var i = 0; i < row_gd.length; i++ ){
				var key = row_gd[i].split('=')[0];  // mvcode
				var val = row_gd[i].split('=')[1]; // MV001
				gdData[key] = val;
			}

			console.log("goods_code : " + goods_code);
			$.ajax({
				type : "get",
				url : "adminGoodsViewModal",
				data : { "goods_code" : goods_code },
				dataType: "json",
				async:false,
				success : function(result){
					
					$("#goods_code").val(result.goods_code);
					$("#goods_name").val(result.goods_name);
					$("#goods_price").val(result.goods_price);
					$("#goods_amount").val(result.goods_amount);
					$("#goods_type").val(result.goods_type);
					
					$("#goods_introduce").val(result.goods_introduce);
					
					console.log("상품이미지:"+result.goods_image.substring(0,4));
					if(result.goods_image.substring(0,4) == 'http'){
						
					$("#goods_image").attr("src",result.goods_image);
					
					}else{
						$("#goods_image").attr("src","${pageContext.request.contextPath}/resources/fileUpload/"+result.goods_image);
					}
				}
			});
			
			$("#adminGoodsViewModal").modal('show');
			
		}
		
		
		$(document).ready(function(){
			
			 $("#submitBtn").hide();
			 $("#imagewrite").hide();
			 $("#ex_filename").hide();
			 $("#uploadfile").hide();
			 $('.goods_imagefile').hide();
			 $("#modalClose").show();
			 $("#openBtn").show();
			 $("#closeBtn").hide();
			 
		        $('#openBtn').click(function(){
			           $("#openBtn").hide();
			           $("#submitBtn").show();
			           $("#closeBtn").show();
			           $("#imagewrite").show();
			           $("#ex_filename").show();
			           $("#uploadfile").show();
			           $('.goods_imagefile').show();
			       	$("#modalClose").show();    
		                   });
		        $('#submitBtn').click(function(){
			           $("#submitBtn").hide();
			           $("#openBtn").show();
			           $("#modalClose").show();
			       });
		        $('#closeBtn').click(function(){
		        	$("#openBtn").show();
		        	 $("#submitBtn").hide();
		        	 $("#closeBtn").hide();
		 			$("#goods_name").css("background-color","#eaecf4");
					$("#goods_price").css("background-color","#eaecf4");
					$("#goods_amount").css("background-color","#eaecf4");
					$("#goods_type").css("background-color","#eaecf4");
					$("#goods_optioncode").css("background-color","#eaecf4");
					$("#goods_introduce").css("background-color","#eaecf4");
					$("#modalClose").show();    
					  $("#imagewrite").hide();
			           $("#ex_filename").hide();
			           $("#uploadfile").hide();
			           $('.goods_imagefile').hide();
					
		        
		        });
		        
		        $('#modalClose').click(function(){
		        	$("#openBtn").show();
		        	 $("#submitBtn").hide();
		        	 $("#closeBtn").hide();
		        	$("#goods_name").attr("readonly","readonly");
		 			$("#goods_price").attr("readonly","readonly");
		 			$("#goods_amount").attr("readonly","readonly");
		 			$("#goods_type").attr("disabled","disabled");
		 			
		 			$("#goods_introduce").attr("readonly","readonly");
		 			$("#ex_filename").attr("readonly","readonly");
		 			$("#fileUpload").attr("readonly","readonly");
		        	 
		        	 
		 			$("#goods_name").css("background-color","#eaecf4");
					$("#goods_price").css("background-color","#eaecf4");
					$("#goods_amount").css("background-color","#eaecf4");
					$("#goods_type").css("background-color","#eaecf4");
					
					$("#goods_introduce").css("background-color","#eaecf4");
					  $("#imagewrite").hide();
			           $("#ex_filename").hide();
			           $("#uploadfile").hide();
			           $('.goods_imagefile').hide();
					
					
		                   });
		        
		        
		        
		 });  
			
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

		function GoodsmodifyOpen(){
			console.log("modifyOpen() 호출")
			$("#goods_name").removeAttr("readonly");
			$("#goods_price").removeAttr("readonly");
			$("#goods_amount").removeAttr("readonly");
			$("#goods_type").removeAttr("disabled");
			$("#goods_optioncode").removeAttr("readonly");
			$("#goods_introduce").removeAttr("readonly");
			$("#ex_filename").removeAttr("readonly");
			$("#fileUpload").removeAttr("readonly");
			
			
			
			$("#goods_name").css("background-color","white");
			$("#goods_price").css("background-color","white");
			$("#goods_amount").css("background-color","white");
			$("#goods_type").css("background-color","white");
			$("#goods_optioncode").css("background-color","white");
			$("#goods_introduce").css("background-color","white");  
			
			
			$("#openBtn").toggleClass("btn_dNone");
			$("#closeBtn").toggleClass("btn_dNone");
			$("#submitBtn").toggleClass("btn_dNone");
			
		}
		function GoodsmodifyClose(){
			console.log("modifyClose() 호출")
			$("#goods_name").attr("readonly","readonly");
			$("#goods_price").attr("readonly","readonly");
			$("#goods_amount").attr("readonly","readonly");
			$("#goods_type").attr("disabled","disabled");
			$("#goods_optioncode").attr("readonly","readonly");
			$("#goods_introduce").attr("readonly","readonly");
			$("#ex_filename").attr("readonly","readonly");
			$("#fileUpload").attr("readonly","readonly");

			
			$("#openBtn").toggleClass("btn_dNone");
			$("#closeBtn").toggleClass("btn_dNone");
			$("#submitBtn").toggleClass("btn_dNone");
			
		}
		

		
		function GoodsModify(){
			
			alert("상품이 수정되었습니다.");
			
			
		}
		
		function GoodsWrite(goods_code,goods_optioncode){
			 
			loction.href = "AdminGoodsWrite";
			
		}
		
		
 </script>


</html>