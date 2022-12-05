<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>장바구니</title>

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
		.address-data {
			padding: 15px;
		}
		strong {
			margin: auto;
		}
		.address-text{
			width: 179%;
			border: 0px;
			text-align: center;
		}
		#address-Btn{
			width: 182%;
			height: 35px;
			border-radius: 0px;
			font-size: 13px;
			padding: 6px;
			background-color: darkturquoise;
			margin-top: 1%;
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
						<p>Today's Basket</p>
						<h1>장 바 구 니</h1>
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
				<div class="col-lg-8 col-md-12">
					<div class="cart-table-wrap">
						<table class="cart-table">
							<thead class="cart-table-head">
								<tr class="table-head-row">
									<th class="product-remove"></th>
									<th class="product-image-Text">상 품 사 진</th>
									<th class="product-name-Text">상 품 명</th>
									<th class="product-price-Text">상 품 가 격</th>
									<th class="product-quantity-Text">주 문 수 량</th>
									<th class="product-total-Text">총 합 금 액</th>
								</tr>
							</thead>
							<c:forEach items="${basketinfo }" var="basketinfo" varStatus="status">
							<tbody>
								<tr class="table-body-row" id="basket_list">
							
									<td class="product-remove"><a href="#" id="basketDelBtn${status.index }" onclick="basketDel(this, '${basketinfo.basket_gcode}', '${sessionScope.loginId }')"><i class="far fa-window-close"></i></a></td>
									<td class="product-image"><img src="${basketinfo.basket_gimage }" alt="" style="width: 100%; height: auto;"></td>
									<td class="product-name">${basketinfo.basket_gname }</td>
									<td class="product-price" id="product-price"><fmt:formatNumber value="${basketinfo.basket_gprice }" pattern="#,###"/></td>
									<td class="">
									<input type="hidden" class="product-price_int" id="product-price_int" value="${basketinfo.basket_gprice }">
									<form class="orderForm">
									<input type="number" min="1" class="product-quantity" name="quantity"  id="product-quantity${status.index }" value="${basketinfo.basket_gamount }" onchange="quantity_totalPrice(this, '${basketinfo.basket_gcode }', '${basketinfo.basket_gamount }', '${sessionScope.loginId }','${status.index }')" placeholder="0" style="text-align:center;">
							        <input type="hidden" class="basket_gcode" name="gcode" id="basket_gcode" value="${basketinfo.basket_gcode }">
									</form>
									</td>
									<td class="product-total" id="product-total" onchange="totalPrice_orderPrice()"></td>
						
								</tr>
							</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
				<div class="col-lg-4 d-flex justify-content-center">
					<div class="total-section">
						<table class="total-table" style="text-align: center;">
							<thead class="total-table-head">
								<tr class="table-total-row">
									<th colspan="2" style="font-weight: bold;">합 계</th>
								</tr>
							</thead>
							<tbody>
								<tr class="total-data">
									<td><strong>주 문 금 액</strong></td>
									<td id="orderPrice"></td>
								</tr>
								<tr class="total-data">
									<td><strong>배 송 비 (+)</strong></td>
									<td id="deliverPrice"></td>
								</tr>
								<tr class="total-data" style="background-color: beige;">
									<td><strong>최 종 결 제 금 액</strong></td>
									<td id="totalPrice" style="font-weight: bold;"></td>
								</tr>
							</tbody>
						</table>
						
						<table class="total-table" style="text-align: center; margin-top:10%;">
							<thead class="total-table-head">
								<tr class="table-total-row">
									<th colspan="2" style="font-weight: bold;">주 문 자 정 보</th>
								</tr>
							</thead>
							<tbody id="memberInfo">
								
							</tbody>
						</table>
						<input type="hidden" value="${sessionScope.loginId }" id="member_id" name="member_id">
						<div class="cart-buttons d-flex justify-content-center">
							<a href="#" class="boxed-btn" onclick="order()" style="padding: 10px 40px;">결 제 하 기</a>
							<a href="shoppingListPage" class="boxed-btn black" onclick="test()" style="margin-left: 0%;">상 품 목 록 으 로</a>
						</div>
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
	<!-- iamport.payment.js -->
  	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
	
		// 페이지가 열리자마자 실행될 부분
		$(document).ready(function(){
			
		
			
			var productCode = [];
			var productQuantity = [];
			
			for(var i = 0; i < $(".basket_gcode").length; i++)
			{
				var basket_gcode = $(".basket_gcode").eq(i).val();
				//console.log(basket_gcode);
				productCode.push(basket_gcode);
			}
			
			for(var i = 0; i < $(".product-quantity").length; i++)
			{
				var basket_gamount = $(".product-quantity").eq(i).val();
				//console.log(basket_gcode);
				productQuantity.push(basket_gamount);
			}
			
			console.log(productCode);
			console.log(productQuantity);
			
		
			// 페이지 접속 시, 상품 가격 x 주문 수량 자동 계산
			var sumPrice = 0;
			for(var i = 0; i < $(".product-total").length; i++)
			{
				var inputProductPrice = $(".product-price_int").eq(i).val();	// 상품 가격
				var inputProductQuantity = $(".product-quantity").eq(i).val();	// 상품 갯수
				
				console.log(inputProductPrice);
				
				var totalPrice = Number(inputProductPrice * inputProductQuantity); // 총합금액(숫자) = 상품 가격 * 상품 갯수
				console.log(totalPrice);	// 상품 총합 금액 숫자 타입
				console.log(totalPrice.toLocaleString());	// 문자열 타입
				$(".product-total").eq(i).text(totalPrice.toLocaleString());
				
				sumPrice = sumPrice + totalPrice;
				
			}
			$("#orderPrice").text(sumPrice.toLocaleString());
			
			// 처음 페이지 진입 시 주문 금액이 30000원 이상이면 배송료 무료
			var deliverPrice = 0; // 배송비
			if(sumPrice >= 30000)
			{
				$("#deliverPrice").text(0);
			}
			else
			{
				deliverPrice = 3000;
				$("#deliverPrice").text(deliverPrice.toLocaleString());
			}
			
			// 처음 페이지 진입 시 최종 주문 금액 : 주문 금액 + 배송비 계산
			var finalOrderPrice = sumPrice + deliverPrice;
			
			$("#totalPrice").text(finalOrderPrice.toLocaleString());
			
			
			
			// 장바구니 담은 회원 정보 조회( 회원 이름, 회원 연락처, 회원 주소 )
			var output = "";
			
			$.ajax({
				type: "get",
				url: "orderMemberSearch",
				data:{"loginId" : $("#member_id").val()},
				dataType: "json",
				async: false,
				success: function(result){
					var memberAddress = result.member_address;
					
					console.log(memberAddress);
					
					var memberAddress_arr = memberAddress.split("_");
					console.log(memberAddress_arr[0]); // 우편번호
					console.log(memberAddress_arr[1]); // 시 . 도
					console.log(memberAddress_arr[2]); // 상세 주소
					console.log(memberAddress_arr[3]); // 참고 주소 (동)
					
					output += "<tr class=\"total-data\">" +
					"<td><strong>주 문 자 명</strong></td>" +
					"<td id=\"member_name\">" + result.member_name + "</td>"+
					"</tr>" +
					"<tr class=\"total-data\">" +
					"<td><strong>연 락 처</strong></td>" +
					"<td id=\"member_tel\">" + result.member_tel + "</td>"+
					"</tr>" +
					"<tr class=\"total-data\">" +
					"<th class=\"address-data\" colspan=\"2\" style=\"background-color: lightcyan;\">" +
					"<strong>배 송 주 소</strong>" + 
					"</th>" + 
					"</tr>" +
					"<tr>" +
					"<td id=\"member_address\"><input class=\"address-text\" type=\"text\" name=\"member_postcode\" id=\"sample6_postcode\" value=\""+ result.member_postcode + "\" style=\"pointer-events: none;\"></td>" +
					"</tr>" +
					"<tr>" +
					"<td id=\"member_address\"><input class=\"address-text\" type=\"text\" name=\"member_addr\" id=\"sample6_address\" value=\""+ result.member_addr + "\" style=\"pointer-events: none;\"></td>" +
					"</tr>" +
					"<tr>" +
					"<td id=\"member_address\"><input class=\"address-text\" type=\"text\" name=\"member_detailaddr\" id=\"sample6_detailAddress\" value=\""+ result.member_detailaddr + "\" placeholder=\"상세주소를 입력해주세요.\"></td>" +
					"</tr>" +
					"<tr>" +
					"<td id=\"member_address\"><input class=\"address-text\" type=\"hidden\" name=\"member_extraaddr\" id=\"sample6_extraAddress\" value=\""+ result.member_extraaddr + "\"></td>" +
					"</tr>" +
					"<tr>" +
					"<td id=\"member_address\"><a href=\"#\" class=\"boxed-btn\" id=\"address-Btn\" onclick=\"sample6_execDaumPostcode()\">배 송 지 변 경</a></td>" +
					"</tr>"
				}
			});
			
			/* "<tr>" +
			"<td colspan=\"2\" id=\"member_address\"><input type=\"text\" value=\""+result.member_postcode+result.member_addr+result.member_detailaddr+result.member_extraaddr + "\"></td>" + 
			"</tr>" */
			
			/* "<tr>" + 
			"<td colspan=\"2\" id=\"member_address\">" + memberAddress_arr[1] + memberAddress_arr[2] + memberAddress_arr[3] +
			"</td>" +
			"</tr>" + */
			$("#memberInfo").html(output);
		
			
		});
   </script>
   
   <script type="text/javascript">
   // 상품 갯수가 변할 때마다 총합 금액 변경
   function quantity_totalPrice(selObj, basket_gcode, basket_gamount, loginId, index){
	   console.log("연결");
	   console.log(basket_gcode);
	   console.log(basket_gamount);
	   console.log(loginId);
	   var modify_gamount = $("#product-quantity" + index).val();
	   console.log(modify_gamount);
	// 페이지 접속 시, 상품 가격 x 주문 수량 자동 계산
		var sumPrice = 0;
		for(var i = 0; i < $(".product-total").length; i++)
		{
			var inputProductPrice = $(".product-price_int").eq(i).val();	// 상품 가격
			var inputProductQuantity = $(".product-quantity").eq(i).val();	// 상품 갯수
			
			console.log(inputProductPrice);
			
			var totalPrice = Number(inputProductPrice * inputProductQuantity); // 총합금액(숫자) = 상품 가격 * 상품 갯수
			console.log(totalPrice);	// 상품 총합 금액 숫자 타입
			console.log(totalPrice.toLocaleString());	// 문자열 타입
			$(".product-total").eq(i).text(totalPrice.toLocaleString());
			
			sumPrice = sumPrice + totalPrice;
			
		}
		$("#orderPrice").text(sumPrice.toLocaleString());
		
		// 처음 페이지 진입 시 주문 금액이 30000원 이상이면 배송료 무료
		var deliverPrice = 0; // 배송비
		if(sumPrice >= 30000)
		{
			$("#deliverPrice").text(0);
		}
		else
		{
			deliverPrice = 3000;
			$("#deliverPrice").text(deliverPrice.toLocaleString());
		}
		
		// 처음 페이지 진입 시 최종 주문 금액 : 주문 금액 + 배송비 계산
		var finalOrderPrice = sumPrice + deliverPrice;
		
		$("#totalPrice").text(finalOrderPrice.toLocaleString());
	   
	   // 상품 수량 업데이트
		$.ajax({
			type: "post",
			url: "basketAmountModify",
			data: {"basket_gcode" : basket_gcode, "basket_gamount" : modify_gamount, "loginId" : loginId},
			success: function(ModifyResult){
				
			}
		});
   }
   </script>
   
   <script type="text/javascript">
   // 장바구니 상품 삭제
   function basketDel(selObj, basket_gcode, loginId){
	   console.log("연결");
	   console.log(basket_gcode);
	   console.log(loginId);
	   
	   Swal.fire({
			title: '해당 상품을 삭제하시겠습니까?',
			icon: 'warning',
			showCancelButton: true,
			confirmButtonText: '저 장',
			cancelButtonText: '취 소'
		}).then((result) => {
			if(result.isConfirmed)
			{
				$.ajax({
					type: "post",
					url: "basketDel",
					data: {"basket_gcode" : basket_gcode, "loginId": loginId},
					success: function(DelResult){
						location.href = "${pageContext.request.contextPath }/shoppingBasketListPage";
					}
				});
			}
		})
   }
   </script>
   
   
   
   <script type="text/javascript">
   // 카카오 페이 결제 - 결제 완료 시, 1) 주문 내역 테이블 생성 2) 결제 내역 테이블 생성 3) 장바구니 테이블 내역 삭제
   function order(){
	   var inputDetailAddr = $("#sample6_detailAddress").val();
	   var inputGcode = $("#basket_gcode").val();
	   var totalPrice = $("#totalPrice").text();
	   var orderName = $("#member_name").text();
	   var orderTel = $("#member_tel").text();
	   var orderAddress = $("#member_address").text();
	   var productCode = [];
	   var productQuantity = [];
	   var productName = [];
	   var order_address = $("#sample6_postcode").val() + " " + $("#sample6_address").val() + " " + $("#sample6_detailAddress").val();
	   
	   var totalPrice_int = totalPrice.replace(",","");
	   console.log(totalPrice_int - 1);
	   
	   
		for(var i = 0; i < $(".basket_gcode").length; i++)
		{
			var basket_gcode = $(".basket_gcode").eq(i).val();
			//console.log(basket_gcode);
			productCode.push(basket_gcode);
		}
		
		for(var i = 0; i < $(".product-quantity").length; i++)
		{
			var basket_gamount = $(".product-quantity").eq(i).val();
			//console.log(basket_gcode);
			productQuantity.push(basket_gamount);
		}
		
		for(var i = 0; i < $(".product-name").length; i++)
		{
			var basket_gname = $(".product-name").eq(i).text();
			//console.log(basket_gcode);
			productName.push(basket_gname);
		}
			
	   console.log(productCode); 		// 주문할 상품 코드
	   console.log(productQuantity);	// 주문할 상품 수량
	   console.log(order_address);		// 주문자 배송 주소
	   
	   console.log(totalPrice);
	   console.log(orderName);
	   console.log(orderTel);
	   console.log(orderAddress);
	   
	   if(productCode.length == 0)
		{
		   Swal.fire({
			  title: '최소 1개의 상품은 있어야 합니다.',
			  icon: 'warning',
			  confirmButtonText: '확인'
		   });
		}
	   else if (inputDetailAddr.length == 0){
		   $("#sample6_detailAddress").focus();
		   Swal.fire({
				  title: '상세 주소를 입력해주세요.',
				  icon: 'warning',
				  confirmButtonText: '확인'
			   });
	   }
	   
	   else {
		   
	   IMP.init('imp45696164'); 
	   
	   Swal.fire({
			  title: '결제를 진행하시겠습니까?',
			  icon: 'question',
			  showCancelButton: true,
			  confirmButtonText: '결 제 하 기',
			  cancelButtonText: '취 소'
			}).then((result) => {
				if(result.isConfirmed){
					IMP.request_pay({
				           pg: 'kakao',
				           pay_method: 'card',
				           merchantuid: 'merchant' + new Date().getTime(),				           
				           name: productName[0]+ " 외 " + (productName.length - 1) + "건",
				           amount: '가격 : ' + totalPrice_int,
				           buyer_name: '구매자 : ' + orderName,
				           buyer_postcode: '연락처 : ' +	orderTel,
				           }, function (rsp) {
				               console.log(rsp);
				               
				           if (rsp.success) {
				           	console.log(rsp.paid_amount);
				           	const timestamp = rsp.paid_at; // 166688485
							var date = new Date(timestamp * 1000);
							var pay_date = date.getFullYear() + "-" + (date.getMonth()+1) + "-" +
							date.getDate() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
							console.log(pay_date);
				           	
							var formdata = new FormData();
							var orderList = [];
							var orderInfo = {};
						    var orderFormList = $(".orderForm");
						    for(var i = 0; i < orderFormList.length; i++){
						    	console.log(orderFormList[i].quantity.value);
						    	console.log(orderFormList[i].gcode.value)
						    	console.log(pay_date);
						    	formdata.append("orderInfoList["+i+"].order_mid", $("#member_id").val());
						    	formdata.append("orderInfoList["+i+"].order_gcode", orderFormList[i].gcode.value);
						    	formdata.append("orderInfoList["+i+"].order_gamount", orderFormList[i].quantity.value);
						    	formdata.append("orderInfoList["+i+"].order_date", pay_date);
						    	formdata.append("orderInfoList["+i+"].order_address", order_address);
						    }
						    
							// 1. 주문 내역 테이블 생성
							$.ajax({
								type: "post",
								url: "orderInfoList",
								enctype:"multipart/form-data",
								processData:false,
								contentType:false,
								data: formdata,
								success: function (result){
									// 2. 결제 테이블 생성
									$.ajax({
										type: "post",
										url: "payInfoList",
										data: {"pay_mid": $("#member_id").val(), "pay_amount": rsp.paid_amount, "pay_date" : pay_date},
										success: function(insertresult){
									
										// 3. 장바구니 테이블 삭제
				        				$.ajax({
				        					type: "post",
				        					url: "basketListDel",
				        					data: {"loginId" : $("#member_id").val(), "count" : count},
				        					success: function (delResult){
				        						
				        						count++;
				        						
				        						var msg = '결제가 완료되었습니다.';
				        						
				        						 
				        						 location.href="shoppingListPage_redirect?msg="+msg;
				        					}
				        				});
							
									}
								});
								}
							});
				           } else {
				               var msg = '결제에 실패하였습니다.';
				               msg += '에러내용 : ' + rsp.error_msg;
				           }
				       });
				}
			});
	   }
   }
   </script>
   
   <script type="text/javascript">
   
   </script>
   
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>
    function sample6_execDaumPostcode() {
    	console.log("연결");
    	
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