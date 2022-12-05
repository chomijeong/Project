<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>산책용품</title>

		<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
	<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
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
</head>
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

button:hover {
  background-color: #051922;
  color: #F28123;
}

.product-filters ul li {
    display: inline-block;
    font-weight: 700;
    font-size: 18px;
    margin: 15px;
    border: 2px solid #ddd;
    color: #323232;
    cursor: pointer;
    padding: 8px 20px;
    border-radius: 25px;
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
						<p>Today's Choice</p>
						<h1>산 책 용 품</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->

	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Search For:</h3>
							<input type="text" placeholder="Keywords">
							<button type="submit">Search <i class="fas fa-search"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search arewa -->
	
	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <li class="active" data-filter="*">전체</li>
                            <li data-filter=".snell">목줄</li>
                            <li data-filter=".harness">하네스</li>
                            <li data-filter=".toy">장난감</li>
                            <li data-filter=".etc">기타용품</li>
                        </ul>
                    </div>
                </div>
            </div>

			<div class="row product-lists">
			<c:forEach items="${goodsList }" var="goods">
				<c:choose>
					<c:when test="${goods.goods_type == 'GW001' }">
					<!-- 상품종류가 목줄이면 -->
						<div class="col-lg-4 col-md-6 text-center snell">
							<div class="single-product-item">
								<div class="product-image">
									<a href="">
									
									<c:choose>
										<c:when test="${fn:substring(goods.goods_image,0,4) == 'http'}">
											<img src="${goods.goods_image}" alt="">
										</c:when>
										<c:otherwise>
											<img src="${pageContext.request.contextPath}/resources/fileUpload/${goods.goods_image}" alt="">
										</c:otherwise>
									</c:choose>
									
									</a>
								</div>
								<h3>${goods.goods_name }</h3>
								<p class="product-price"><span>${goods.goods_introduce }</span>${goods.goods_price_string }원</p>
								<a href="shoppingBasket?basket_id=${sessionScope.loginId }&basket_gname=${goods.goods_name }&basket_gprice=${goods.goods_price }&basket_gimage=${goods.goods_image }&basket_gcode=${goods.goods_code }" class="cart-btn"><i class="fas fa-shopping-cart"></i>장바구니 담기 및 이동</a>
								<button onclick="insertBasket('${sessionScope.loginId }','${goods.goods_name }','${goods.goods_price }','${goods.goods_image }','${goods.goods_code }')"><i class="fa-solid fa-plus"></i></button>
							</div>
						</div>
					</c:when>
					<c:when test="${goods.goods_type == 'GW002' }">
						<!-- 상품종류가 하네스면 -->
						<div class="col-lg-4 col-md-6 text-center harness">
							<div class="single-product-item">
								<div class="product-image">
									<a href="">
									<c:choose>
										<c:when test="${fn:substring(goods.goods_image,0,4) == 'http'}">
											<img src="${goods.goods_image}" alt="">
										</c:when>
										<c:otherwise>
											<img src="${pageContext.request.contextPath}/resources/fileUpload/${goods.goods_image}" alt="">
										</c:otherwise>
									</c:choose>
									</a>
								</div>
								<h3>${goods.goods_name }</h3>
								<p class="product-price"><span>${goods.goods_introduce }</span>${goods.goods_price_string }원</p>
								<a href="shoppingBasket?basket_id=${sessionScope.loginId }&basket_gname=${goods.goods_name }&basket_gprice=${goods.goods_price }&basket_gimage=${goods.goods_image }&basket_gcode=${goods.goods_code }" class="cart-btn"><i class="fas fa-shopping-cart"></i>장바구니 담기 및 이동</a>
								<button onclick="insertBasket('${sessionScope.loginId }','${goods.goods_name }','${goods.goods_price }','${goods.goods_image }','${goods.goods_code }')"><i class="fa-solid fa-plus"></i></button>
							</div>
						</div>	
					</c:when>
					<c:when test="${goods.goods_type == 'GW003' }">
					<!-- 상품종류가 장난감이면 -->
						<div class="col-lg-4 col-md-6 text-center toy">
							<div class="single-product-item">
								<div class="product-image">
									<a href="">
									<c:choose>
										<c:when test="${fn:substring(goods.goods_image,0,4) == 'http'}">
											<img src="${goods.goods_image}" alt="">
										</c:when>
										<c:otherwise>
											<img src="${pageContext.request.contextPath}/resources/fileUpload/${goods.goods_image}" alt="">
										</c:otherwise>
									</c:choose>
									</a>
								</div>
								<h3>${goods.goods_name }</h3>
								<p class="product-price"><span>${goods.goods_introduce }</span>${goods.goods_price_string }원</p>
								<a href="shoppingBasket?basket_id=${sessionScope.loginId }&basket_gname=${goods.goods_name }&basket_gprice=${goods.goods_price }&basket_gimage=${goods.goods_image }&basket_gcode=${goods.goods_code }" class="cart-btn"><i class="fas fa-shopping-cart"></i>장바구니 담기 및 이동</a>
								<button onclick="insertBasket('${sessionScope.loginId }','${goods.goods_name }','${goods.goods_price }','${goods.goods_image }','${goods.goods_code }')"><i class="fa-solid fa-plus"></i></button>
							</div>
						</div>
					</c:when>
					<c:when test="${goods.goods_type == 'GW004' }">
					<!-- 상품종류가 기타용품이면 -->
						<div class="col-lg-4 col-md-6 text-center etc">
							<div class="single-product-item">
								<div class="product-image">
									<a href="">
									<c:choose>
										<c:when test="${fn:substring(goods.goods_image,0,4) == 'http'}">
											<img src="${goods.goods_image}" alt="">
										</c:when>
										<c:otherwise>
											<img src="${pageContext.request.contextPath}/resources/fileUpload/${goods.goods_image}" alt="">
										</c:otherwise>
									</c:choose>
									</a>
								</div>
								<h3>${goods.goods_name }</h3>
								<p class="product-price"><span>${goods.goods_introduce }</span>${goods.goods_price_string }원</p>
								<a href="shoppingBasket?basket_id=${sessionScope.loginId }&basket_gname=${goods.goods_name }&basket_gprice=${goods.goods_price }&basket_gimage=${goods.goods_image }&basket_gcode=${goods.goods_code }" class="cart-btn"><i class="fas fa-shopping-cart"></i>장바구니 담기 및 이동</a>
								<button onclick="insertBasket('${sessionScope.loginId }','${goods.goods_name }','${goods.goods_price }','${goods.goods_image }','${goods.goods_code }')"><i class="fa-solid fa-plus"></i></button>
							</div>
						</div>
					</c:when>
				</c:choose>
			</c:forEach>
			</div>
		</div>
	</div>
	<!-- end products -->

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
    
    <!-- alert 창 script -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script type="text/javascript">

	var msg = '${msg}';
	if(msg.length > 0){
		Swal.fire(msg);
	}
	
	function insertBasket(basket_id,basket_gname,basket_gprice,basket_gimage,basket_gcode){
			if (${sessionScope.loginId == null}){
				Swal.fire("로그인 후 이용해주세요.");
				return null;
			}
			//ajax-장바구니 insert
			$.ajax({
				type : "get",
				url : "shoppingBasketAjax",
				data : { "basket_id" : basket_id, "basket_gname" : basket_gname, "basket_gprice" : basket_gprice, "basket_gimage" : basket_gimage, "basket_gcode" : basket_gcode },
				success : function (){
					
					Swal.fire({
			  			   title: '장바구니에 추가 되었습니다',
			  			   icon: 'success',
			  			   
			  			   showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
			  			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			  			   confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
			  			   
			  			   reverseButtons: false, // 버튼 순서 거꾸로
			  			   
			  			})
				}
				
			})
		}
	
</script>

</body>
</html>