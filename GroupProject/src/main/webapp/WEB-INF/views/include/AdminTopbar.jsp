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
	<div class="top-header-area" id="sticker"">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="Main">
								<img src="${pageContext.request.contextPath}/resources/assets/img/logo_dog2_orange.png" alt="Today's Walk" style="width:100%;">
							</a>
						</div>
						<!-- logo -->
						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								
								<li><a href="#">회원관리</a>
									<ul class="sub-menu">
										<li><a href="adminMemberListPage">회원목록관리</a></li>
										
									</ul>
								</li>
								
								<li><a href="#">상품관리</a>
									<ul class="sub-menu">
										
										<li><a href="adminGoodsListPage">상품관리</a></li>
										<li><a href="adminOrderListPage">주문관리</a></li>
									</ul>
								</li>
								
								<li><a href="#">기타게시판관리</a>
									<ul class="sub-menu">
										<li><a href="hospitalListPage">병원게시판관리</a></li>
										<li><a href="hotelListPage">호텔게시판관리</a></li>
										<li><a href="reportBoardListPage">신고게시판관리</a></li>
										<li><a href="reportRecommentListPage">신고댓글관리</a></li>
									</ul>
								</li>
								
								<li>
									<div class="header-icons">
																				
										<a class="shopping-cart" href="memberLogout"><i class="fa-solid fa-right-from-bracket"></i>로그아웃</a>
										
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