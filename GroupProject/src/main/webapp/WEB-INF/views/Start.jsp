<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<title>Start</title>
	
	
	
<style type="text/css">

html,body{
height:100%;
overflow:hidden;
}

.mainDisplay{

background-image:url('${pageContext.request.contextPath}/resources/myupload/full3.jpg');
background-size:cover;
background-position:center center;
height:90%;

}


.text-white{
color:white;
}

.nav-link{
--bs-nav-link-color: white;
--bs-nav-link-hover-color: lightgray;
--bs-nav-link-disabled-color: black;
}

.navbar-toggler-icon{
background-color: rgba(0, 100, 0, 0.5);
background-image: var(--bs-navbar-toggler-icon-bg);
border-radius:5px;
}


@media (min-width: 768px) {
  .animate {
    animation-duration: 0.3s;
    -webkit-animation-duration: 0.3s;
    animation-fill-mode: both;
    -webkit-animation-fill-mode: both;
  }
}

@keyframes slideIn {
  0% {
    transform: translateY(1rem);
    opacity: 0;
  }

  100% {
    transform: translateY(0rem);
    opacity: 1;
  }

  0% {
    transform: translateY(1rem);
    opacity: 0;
  }
}

@-webkit-keyframes slideIn {
  0% {
    -webkit-transform: transform;
    -webkit-opacity: 0;
  }

  100% {
    -webkit-transform: translateY(0);
    -webkit-opacity: 1;
  }

  0% {
    -webkit-transform: translateY(1rem);
    -webkit-opacity: 0;
  }
}

.slideIn {
  -webkit-animation-name: slideIn;
  animation-name: slideIn;
}
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0; 
 }

</style>
</head>
<body>


	<!-- 강아지 사진 들어가는 div -->
	<div class="mainDisplay">

		<!-- 위쪽여백주려고 만든 div -->
		<div style="height: 15px;"></div>

		<!-- 네비게이션바시작 -->
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<a class="navbar-brand text-white" href="mainPage">Today's Walk</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-center"
					id="navbarSupportedContent">

					<ul class="navbar-nav mb-2 mb-lg-0">
		

							
						<li class="nav-item dropdown " >
							<div id="testA" data-toggle="tooltip" data-placement="top" title="Hooray!">
						  	<a  class="nav-link" href="#">유용한 정보모음</a>
							</div>
						</li>

						
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								이웃과 산책하기 </a>
							<ul class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">산책모집게시판</a></li>
								<li><a class="dropdown-item" href="#">산책후기게시판</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">산책가자왈왈왈아로알락</a></li>
							</ul></li>

						<li class="nav-item dropdown "><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								우리와 산책하기 </a>
							<ul class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">정기산책모집게시판</a></li>
								<li><a class="dropdown-item" href="#">우리모임산책게시판</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">매일매일 건강하게</a></li>
							</ul></li>

						<li class="nav-item dropdown "><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								산책용품 </a>
							<ul class="dropdown-menu animate slideIn" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">목줄</a></li>
								<li><a class="dropdown-item" href="#">간식</a></li>
								<li><a class="dropdown-item" href="#">배변봉투</a></li>
							</ul></li>

						<li class="nav-item"><a class="nav-link" href="#">우리동네	병원위치</a></li>

						<li class="nav-item"><a class="nav-link" href="#">우리동네 호텔위치</a></li>

					</ul>
				</div>
			</div>
		</nav>
		<!-- 네비게이션바끝 -->
		<!-- 가로선 -->
		<hr style="height: 100%; color: gray; position: relative;">
</div>
<script src="${pageContext.request.contextPath}/resources/jquery/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript">

$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
});


</script>
</body>
</html>
