<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>내 산책내역</title>

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
	
	<!-- Custom styles for this page -->
	<link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

	<!-- Custom fonts for this template-->
	<link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

	<!-- Custom styles for this template-->
	<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">

	<!-- Custom styles for this page -->
   <link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
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

a {
	color: black;

}

a:hover {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

.btn-gray {
	background-color: #6c6e7e;
	color: white;
	padding-top: 9px;"

}

.btn-gray:hover {
	background-color: #858796;
	color: white;

}

.input-control {
  display: block;
  width: 30%;
  height: calc(1.5em + 0.75rem + 2px);
  padding: 0.375rem 0.75rem;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  color: #6e707e;
  background-color: #fff;
  border: 1px solid #d1d3e2;
  border-radius: 0.35rem;
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

input {
     border: 1px solid #ddd; 
     padding: 15px; 
     width: 50%; 
     border-radius: 3px; 
}

/* input 자동완성입력시 input 란 배경색 변하게 되는데 배경색 유치해주는 css */
input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
input:-webkit-autofill:active {
    -webkit-text-fill-color: #000;
    -webkit-box-shadow: 0 0 0px 1000px #fff inset;
    box-shadow: 0 0 0px 1000px #fff inset;
    transition: background-color 5000s ease-in-out 0s;
}

select {
	border: 1px solid #ddd; 
    padding: 15px; 
    width: 32%; 
    border-radius: 3px; 


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

.btn-rigth {
	float: right;
	margin-rigth: 20px;
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
						<p>Yesterday's Walk</p>
						<h1>내 산 책 내 역</h1>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row mt-100">
			<div class="col-7"></div>
			<div class="col-5" style="padding-right: 0px;">
				<select name="searchType" id="searchTypeSel">
					<option value="board_writer">작성자</option>
					<option value="board_title">글제목</option>
					<option value="board_mid">참가자</option>
				</select> <input type="text" value="" name="searchWord" id="searchWord">
				<button style="float: rigth;" onclick="mywalkSearchList()">검색</button>
			</div>
		</div>
		<table class="table table-layout: fixed text-center" id="dataTable" cellspacing="0">
			<!-- table-layout: fixed = 테이블 행 width 고정  -->
			<thead class="table-dark">
				<tr class="text-center">
					<!-- width 설정은 본인이 알아서 설정 -->
					<th width="3%">출발지</th>
					
					<th width="10%">제목</th>
					<th width="5%">참가일</th>
					<th width="5%">참가인원</th>
					<th width="3%">후기작성</th>
				</tr>
			</thead>

			<tbody class="table-hover" id="mywalkList">
				<c:forEach items = "${mywalkList }" var = "mywalkList">
					<tr class="table-body-row">
					
						<td class="product-remove" style = "width: 15%;">${mywalkList.walk_startaddr }</td>
						
						<td class="product-image">
							<a href="walkViewPage?walkBoardCode=${mywalkList.walk_code }"></a>						
						${mywalkList.walk_title }
						</td>
						<td class="product-price" style = "width: 22%;">${mywalkList.walk_time }</td>
						<td class="product-quantity">${mywalkList.walk_mid }</td>
						<td class="product-quantity" style = "width: 14%;">
						
				<c:choose>
				<c:when test="${mywalkList.checkcode == 0 }">
					
					<a href ="reviewWritePage?walk_code=${mywalkList.walk_code }&walk_mid=${sessionScope.loginId }" class="cart-btn" style="width:100%;">후기작성</a>
					
				</c:when>
				
				<c:otherwise>
				
					<h6>후기완료</h6>
					
				</c:otherwise>
				
				</c:choose>
					
				
					
												
						</td>
					
					</tr>
			 </c:forEach>
			</tbody>
		</table>

	</div>

	<%@ include file="/WEB-INF/views/include/Footer.jsp" %>

</body>
	
	<!-- jquery -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/sticker.js"></script>
	<!-- main js -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
		
	<!-- alert 창  -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>	
		
	
<script type="text/javascript">
	
var checkMsg12 = "${msg1}";

if  (checkMsg12.length > 0){ 
	
	Swal.fire({
		
		   title: '게시물 작성 완료!',					   
		   icon: 'success',					  
		   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		   confirmButtonText: '확인' // confirm 버튼 텍스트 지정			   
		   
		});
}	
			
	
	 /* 정렬 기능 x */
	$('#dataTable').DataTable({
		ordering : false, //정렬 기능
		searching : false //검색 기능
	});
	
	function mywalkSearchList(){
		var searchType = $("#searchTypeSel").val();
		var searchWord = $("#searchWord").val();
		console.log("searchType : " + searchType);
		console.log("searchWord : " + searchWord);
		
		var output = "";
		
		$.ajax({
			type : "get",
			url : "mywalkSearchList",
			data : { "searchType" : searchType, "searchWord" : searchWord },
			async : false,
			dataType : "json",
			success : function (result){
				console.log(result)
				
				for (var i = 0; i < result.length; i++){
									
					console.log("회원 코드 : "+result[i].walk_code);
					
					output += "<tr class=\"table-body-row\"> <td class=\"product-remove\" style = \"width: 15%;\">" + result[i].walk_time + "</td>"+				
							 "<td class=\"product-image\"><a href=\"walkViewPage?walkBoardCode="+result[i].walk_code+"\">" + result[i].walk_title + "</a></td>"+
							"<td class=\"product-price\" style = \"width: 22%;\">" + result[i].walk_startaddr + "</td>"+
							 "<td class=\"product-quantity\">" + result[i].walk_mid + "</td>"+
							 "<td class=\"product-quantity\"  style = \"width: 14%;\">"+
							 "<a href =\"reviewWritePage?walk_code="+result[i].walk_code+"\" class=\"cart-btn\" style=\"width:100%;\">후기작성</a>"+
							 "<a  class=\"cart-btn\" style=\"width:100%;\">후기완료</a>"+	
							 "</td></tr>"
					
				}
				
				$("#dataTable").dataTable().fnDestroy(); //테이블의 데이터 삭제
				$("#mywalkList").html(output); //tbody 태그 안쪽에 입력
				
				$('#dataTable').DataTable({
					destroy:true, //테이블 재생성 : 새로운 데이터를 불러와줌
					ordering : false, //정렬 기능
					searching : false //검색 기능
						
				}); 
				
			}
			
		})
		
	}
</script>





</html>