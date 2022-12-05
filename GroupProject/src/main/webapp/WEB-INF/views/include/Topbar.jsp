<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
	
	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="${pageContext.request.contextPath}/">
								<img src="${pageContext.request.contextPath}/resources/assets/img/logo_dog2_orange.png" alt="Today's Walk" style="width:100%;">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								
								<li><a href="#">이웃과 산책</a>
									<ul class="sub-menu">
										
										<li><a href="walkListPage">산책갈 이웃 찾기</a></li>
										<li><a href="reviewListPage">산책 후기</a></li>
										<li><a href="mywalkList?walk_mid=${sessionScope.loginId }">내 산책 내역</a></li>
										
									</ul>
								</li>
								
								<li><a href="#">정기 산책</a>
									<ul class="sub-menu">
										
										<li><a href="crewListPage">크루찾기</a></li>
										<c:if test = "${sessionScope.crewCode != null}">
										<li><a href="crewMainPage">크루활동</a></li>
										</c:if>
										
									</ul>
								</li>
								
								<li><a href="#">커뮤니티</a>
									<ul class="sub-menu">
										<li><a href="tipsListPage">유용정보</a></li>									
									</ul>
								</li>
								
								<li><a href="#">쇼핑</a>
									<ul class="sub-menu">
										<li><a href="shoppingListPage">산책용품</a></li>
										<c:if test="${sessionScope.loginId != null}">
										<li><a href="shoppingBasketListPage">장바구니</a></li>
										</c:if>
									</ul>
								</li>
								
								<li><a href="#">우리동네 병원, 호텔</a>
									<ul class="sub-menu">
										<li><a href="hospitalListPage">병원</a></li>
										<li><a href="hotelListPage">애견동반 호텔</a></li>
									</ul>
								</li>
								
								<li>
									<div class="header-icons">
										
										<c:choose>
											<c:when test="${sessionScope.loginId == null }">
												<a class="" href="memberJoinPage">J O I N</a> <!-- 회원가입 -->
												<a class="shopping-cart" href="memberLoginPage">L O G I N</a> <!-- 로그인 -->
											</c:when>
											<c:otherwise>
											<li><a href="#">${sessionScope.loginId } 님 환영합니다!</a>
												<ul class="sub-menu">
													<li><a href="memberInfoPage">마 이 페 이 지</a></li>
													<li><a href="shoppingBasketListPage">장 바 구 니</a></li>
													<li><a href="shoppingOrderListPage">주 문 내 역</a></li>
													<li><a href="memberLogout">로 그 아 웃</a></li>
												</ul>
											</li>
											</c:otherwise>
										</c:choose>
										
		
																		
										<!-- <a class="shopping-cart" href="cart.html"><i class="fa-solid fa-right-from-bracket"></i></a>로그아웃
										<a class="shopping-cart" href="cart.html"><i class="fa-solid fa-user"></i></a> 내정보 -->
										
									</div>
								</li>
							</ul>
						</nav>
						
						<div class="mobile-menu"></div>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->
	<script type="text/javascript">

	
</script>
