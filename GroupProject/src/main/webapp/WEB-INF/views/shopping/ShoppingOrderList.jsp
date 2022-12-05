<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>주문내역</title>

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

	 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

	
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

.dataTables_info { /* 하단 페이징 옆에 텍스트 지움 */

	display: none;
}


.pagination{  /* 페이징 위치 */

	float: left;
    width: percentage((@columns / @grid-columns)); 

}
.breadcrumb-section:after {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  content: "";

background-image:url("${pageContext.request.contextPath}/resources/assets/img/forest.png");

background-position:right center;
  z-index: -1;
  opacity:1;

}

.form-control,.bootstrap-table-filter-control-goods_code,.search-input{
background-color: #5a5c69;
border: 1px solid #5a5c69;

color: black;
text-align: center;


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

#collapseOnebtn{
width: 1098px;

text-align: center; 
background-color: #464652; 
padding-top: 20px; 
padding-bottom: 20px; 
color: white;
}


.btn-white{

background-color: orange;
color: white;
border: 2px solid orange;
padding: 10px;



}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.xans-myshop-orderhistorylistitem .empty {
    text-align: center;
    padding: 30px 0 30px;
}
#titleArea {
    position: relative;
    border-bottom: 1px solid #c2c2c2;
    background-color: #fff;
    text-align: center;
    padding-bottom: 50px;
    margin-bottom:50px;
    margin-top:50px;
    
}

</style>








</head>
<body>
	
<!-- Topbar 인클루드 자리, 관리자용과 회원용 공통으로 사용하니 바꾸지 마세요. -->
	<%@ include file="../include/Topbar.jsp" %>

	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Order</p>
						<h1>나 의 주 문 내 역</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
	
	
<div class="cart-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="cart-table-wrap">
				
				
				
					<!-- table-layout: fixed = 테이블 행 width 고정  -->
					<div id="titleArea">
    				<h1 style="font-weight:600;">주 문 내 역</h1>
    

					</div>

					
					
						
						<table  style="margin-top: 10px; border: 0px;">
						<c:set  value=""  var="aa">  </c:set>
						<!-- set value : 값을 초기화 시킨다.  -->
						
						<c:forEach items="${OrderList }" var="order" varStatus="num">
								<tr>
								
								
								 <c:if test="${aa != order.order_date }">
								<c:set value="${order.order_date}" var="aa"></c:set>
								<!-- set value : 값을 구매한 날짜로 나눈다. -->
								
								
								<th colspan="7"  data-toggle="collapse" data-target="#collapseOne${fn:replace(fn:replace(order.order_date,' ',''),':','')}"  aria-expanded="true" aria-controls="collapseOne" id="collapseOnebtn" style="font-size: 17px;">주문일 : ${order.order_date } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 결제금액 : ${order.order_totalprice_string }원</th> 	
								<!-- fn: replace ) 해당 특수문자열을 지정한 특수문자열로 변경 예) 공백/ , / : / 등.... -->
								<c:if test="${order.order_state == '1' || order.order_state == '4' }"><th style="padding-left: 20px;" ><input class="btn-white" style="border-radius: 10px;" id="btn-white${num.index}" type="button" onclick="shoppingCancellation('${order.order_mid }','${order.order_class }','${order.order_date}','${order.order_state }','${num.count }')" value="주문취소"></th></c:if>
								
								
								
								<tr class="table-head-row" id="collapseOne${fn:replace(fn:replace(order.order_date,' ',''),':','')}" style="background-color: #EFEFEF;">
									
									<th class="product-image">상품이미지</th>
									<th class="product-name">상품명</th>
									<th class="product-name">상품종류</th>
									<th class="product-price">상품가격</th>
									<th class="product-quantity">상품수량</th>
									<th class="product-price">주문일</th>
									<th class="product-total">주문상태</th>
								
								</tr>
						 	
							</c:if>	
									</tr>
								<tr class="table-body-row" id="collapseOne${fn:replace(fn:replace(order.order_date,' ',''),':','')}">
								
									<td class="product-image">
									<c:choose>
										<c:when test="${fn:substring(order.order_image,0,4) == 'http'}">
										<img src="${order.order_image}" alt="">
										</c:when>
										
										<c:otherwise>
										<img src="${pageContext.request.contextPath }/resources/fileUpload/${order.order_image }" alt="">
										</c:otherwise>
									</c:choose>
									
									
									</td>
									<td class="product-name">${order.order_name }</td>
									<td class="product-name">${order.order_typename }</td>
									<td class="product-price">${order.order_price_string }원</td>
									<td class="product-quantity">${order.order_gamount }</td>
									<td class="product-name">${order.order_date }</td>
									<td id="order_statename${num.count }" class="${fn:replace(fn:replace(order.order_class,' ',''),':','')}">${order.order_statename }</td>
										
								</tr>
								
						</c:forEach> 		
								
						</table>
					
					</div>
					</div>

					</div>
					</div>
					</div>

	<%@ include file="../include/Footer.jsp" %>	
	
	
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
	<script src="https://unpkg.com/bootstrap-table@1.20.2/dist/bootstrap-table.min.js"></script>
	<script src="https://unpkg.com/bootstrap-table@1.20.2/dist/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>

	
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
 
<script type="text/javascript">	
var msg='${msg}';
if(msg.length>0){
	Swal.fire(msg);
}


function shoppingCancellation(order_mid,order_class,order_date,order_state,num){

	if(order_state == '1' || order_state == '4'){
		
		var order_state = '2';
		
	}
	
	
	
	$.ajax({
			type : "get",
			url : "shoppingCancellation",
			data : { "order_mid" : order_mid,"order_date" : order_date ,"order_state" : order_state},
			success : function(result){
				console.log("result : " + result);
				console.log("num "+num);
				

				if(result > 0){
					
					if(order_state == 2){
						
						$("#btn-white").css("background-color","white");
						$("#btn-white").css("border","0px");
						
						
					}
					
					
					if(order_state == 0){
						
						$("#order_statename"+num).text("결제취소승인");
					
					}else if(order_state == 1){
				
						$("#order_statename"+num).text("결제완료");
					
					}else if(order_state == 2){
						console.log("num?"+num);
						$("#order_statename"+num).text("결제취소요청");
						$("#btn-white"+(num-1)).css("display","none");
						
					}else if(order_state == 3){
						
						$("#order_statename"+num).text("결제취소반려");
						
					}else if(order_state == 4){
					
						$("#order_statename"+num).text("배송준비");
						
					}else if(order_state == 5){
						
						$("#order_statename"+num).text("배송중");
						
					}else if(order_state == 6){
						
						$("#order_statename"+num).text("배송완료");
					}
					
				
					var statename = $("#order_statename"+num).text();
					
					var replaceDate = order_class.replace(' ','').replaceAll(':','');
					console.log("replaceDate : "+ replaceDate)
				
					$("."+replaceDate).text(statename);
					console.log("test : "+ $("."+replaceDate).length);

					
					
				}
				
				
			}
		});

	}









</script>

  
  	  

 

	  	
 


</html>