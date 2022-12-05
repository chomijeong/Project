<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

<!-- title -->
<title>병원목록</title>
	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;200;300;400;500;600&display=swap" rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css">
<!-- responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/responsive.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<script src="https://kit.fontawesome.com/3b0042e53f.js"
	crossorigin="anonymous"></script>

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

.page-item.active .page-link { /* 페이징 버튼 색깔 변경 */
	z-index: 3;
	color: #fff;
	background-color: rgb(150, 150, 150);
	border-color: rgb(100, 100, 100);
}

.dataTables_length { /* 페이지 몇줄 까지 출력하는거 숨김 */
	display: none;
}

.dataTables_info { /* 하단 페이징 옆에 텍스트 지움 */
	display: none;
}

.pagination { /* 페이징 위치 */
	float: left;
	width: percentage((@ columns/ @ grid-columns));
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
	padding-top: 9px;
	"
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
	width: 30%;
	border-radius: 3px;
}

/* input 자동완성입력시 input 란 배경색 변하게 되는데 배경색 유치해주는 css */
input:-webkit-autofill, input:-webkit-autofill:hover, input:-webkit-autofill:focus,
	input:-webkit-autofill:active {
	-webkit-text-fill-color: #000;
	-webkit-box-shadow: 0 0 0px 1000px #fff inset;
	box-shadow: 0 0 0px 1000px #fff inset;
	transition: background-color 5000s ease-in-out 0s;
}

select {
	border: 1px solid #ddd;
	padding: 15px;
	width: 20%;
	border-radius: 3px;
}

button {
	webkit-transition: 0.3s;
	o-transition: 0.3s;
	transition: 0.3s;
	border: 0px;
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

.btn-rigth {
	float: right;
	margin-rigth: 20px;
}

.breadcrumb-section2:after {
background-image:url("${pageContext.request.contextPath}/resources/assets/img/adminforest.jpg");
background-color: rgb(0,0,0,0.6);
background-blend-mode: multiply;
}
</style>

<body>

	<!--PreLoader-->
	<div class="loader">
		<div class="loader-inner">
			<div class="circle"></div>
		</div>
	</div>
	<!--PreLoader Ends-->


	<!-- Topbar -->
	<c:choose>
		<c:when test="${sessionScope.loginId eq 'ICIAadmin' }">
			<%@ include file="/WEB-INF/views/include/AdminTopbar.jsp" %>
		</c:when>
		<c:otherwise>
			<%@ include file="/WEB-INF/views/include/Topbar.jsp" %>
		</c:otherwise>
	</c:choose>
	<!-- End of include Topbar -->

	<!-- breadcrumb-section 입니다. 숲 이미지가 들어가는 곳이고, 텍스트를 페이지 별로 달리 써야해서 빼놓고 내용 바꿔 사용합니다.-->
		<c:choose>
		<c:when test="${sessionScope.loginId eq 'ICIAadmin' }">
			<div class="breadcrumb-section breadcrumb-section2">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 offset-lg-2 text-center">
							<div class="breadcrumb-text">
								<p>Today's Walk</p>
								<h1>동 물 병 원 관 리</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="breadcrumb-section ">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 offset-lg-2 text-center">
							<div class="breadcrumb-text">
								<p>Today's Walk</p>
								<h1>동 물 병 원 목 록</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	
	<!-- end breadcrumb section 끝-->


	<!-- 본문내용 자리입니다. -->

	<div class="container">
		<div class="row mb-100 mt-100">
			<div class="col-12">
				<form class="user" action="hospitalSearchList" method="post"
					enctype="multipart/form-data">
					시/도 <select id="metropolis" name="metropolis"
						onchange="changeAreaSelect(this)">
						<option value="전체">전체</option>
						<option value="서울특별시">서울특별시</option>
						<option value="부산광역시">부산광역시</option>
						<option value="대구광역시">대구광역시</option>
						<option value="인천광역시">인천광역시</option>
						<option value="광주광역시">광주광역시</option>
						<option value="세종특별자치시">세종특별자치시</option>
						<option value="대전광역시">대전광역시</option>
						<option value="울산광역시">울산광역시</option>
						<option value="경기도">경기도</option>
						<option value="강원도">강원도</option>
						<option value="충청북도">충청북도</option>
						<option value="충청남도">충청남도</option>
						<option value="전라북도">전라북도</option>
						<option value="전라남도">전라남도</option>
						<option value="경상북도">경상북도</option>
						<option value="경상남도">경상남도</option>
						<option value="제주">제주특별자치도</option>
					</select> 시/군/구 <select id="city" name="city">
						<option value="전체">전체</option>
					</select> 동물병원업체명 <input type="text" id="findName" name="findName">
					<button style="float: rigth;" class="submit">조회</button>
				</form>
			</div>


			<table class=" table table-layout: fixed text-center" id="dataTable"
				cellspacing="0">
				<!-- table-layout: fixed = 테이블 행 width 고정  -->
				<thead class="table-dark">
					<tr class="text-center">
						<!-- width 설정은 본인이 알아서 설정 -->
						<th width="128px">동물병원 이름</th>
						<th width="684px">주소</th>
						<th width="118px">전화번호</th>
						<c:if test="${sessionScope.loginId eq 'ICIAadmin'}">
							<th width="100px">상태</th>
						</c:if>
					</tr>
				</thead>

				<tbody class="table-hover" id="mywalkList">
					<c:forEach items="${show_HospitalList}" var="hospital">
						<tr class="table-body-row">
							<c:set var="codename"
								value="${fn:substring(report.recomment_boardcode,0,2)}" />
							<c:set var="codenumber"
								value="${fn:substring(report.recomment_code,2,6)}" />
							<td class="product-remove">${hospital.ho_name }</td><!-- 병원 이름 -->
							<td class="product-quantity">${hospital.ho_addr }</td><!-- 주소 -->
							<td class="product-quantity">${hospital.ho_tel }</td><!-- 전화번호 -->
							<c:if test="${sessionScope.loginId eq 'ICIAadmin'}">
								<td class="product-quantity">
									<button onclick="viewHospitalInfo(this,'${hospital.ho_code}')">
										수정하기
									</button>
								</td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<c:choose>
		<c:when test="${sessionScope.loginId eq 'ICIAadmin' }">
			<!-- Footer -->
			<%@ include file="/WEB-INF/views/include/AdminFooter.jsp"%>
			<!-- End of Footer -->
		</c:when>
		<c:otherwise>
			<!-- Footer -->
			<%@ include file="/WEB-INF/views/include/Footer.jsp"%>
			<!-- End of Footer -->
			
		</c:otherwise>
	</c:choose>




	<!-- adminModifyHospitalModal Modal -->
	<div class="modal fade" id="adminModifyHospitalModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document" style="max-width: 800px;">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title text-gray-900 text-primary font-weight-bold"
							id="exampleModalLabel">병원 정보 수정</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body" style="padding : 20px;">
						<div class="col-12">
							<div class="row">
									<div class = "col-12" style="margin-bottom : 15.7px;">
										<label>병원 코드</label>
										<input id="ho_code" name="ho_code" type="text" style="width: auto;" readonly="readonly">
									</div>
									<div class = "col-12" style="margin-bottom : 15.7px;">
										<label>병원 이름</label> 
										<input id="ho_name" name="ho_name" type="text" style="width: auto;">
										<label>병원 영업상태</label>
										<select id="ho_state" name="ho_state">
											<option value="1">영업중</option>
											<option value="0">폐업</option>
										</select>
									</div>
									<div class = "col-12" style="margin-bottom : 15.7px;">
										<label>병원 주소</label> 
										<input id="ho_addr" name="ho_addr" type="text"  style="width: 350px;">
									</div>
									<div class = "col-12 d-flex justify-content-between" style="margin-bottom : 15.7px;">
										<div style="width:70%;"><label>병원 전화번호</label> 
										<input id="ho_tel" name="ho_tel" type="text">
										</div>
										<button onclick="modifyHospital()">
											수정하기
										</button>
									</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>







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

	<script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>



	<script type="text/javascript">
		/* 정렬 기능 x */
		$('#dataTable').DataTable({
			ordering : false, //정렬 기능
			searching : false
		//검색 기능
		});

		function mywalkSearchList() {
			var searchType = $("#searchTypeSel").val();
			var searchWord = $("#searchWord").val();
			console.log("searchType : " + searchType);
			console.log("searchWord : " + searchWord);

			var output = "";

		
		$.ajax({
				type : "get",
				url : "mywalkSearchList",
				data : {
					"searchType" : searchType,
					"searchWord" : searchWord
				},
				async : false,
				dataType : "json",
				success : function(result) {
				console.log(result)
					for (var i = 0; i < result.length; i++) {
						console.log("회원 코드 : " + result[i].walk_code);
						output += "<tr class=\"table-body-row\"> <td class=\"product-remove\" style = \"width: 15%;\">"
										+ result[i].walk_time
										+ "</td>"
										+ "<td class=\"product-image\"><a href=\"walkViewPage?walkBoardCode="
										+ result[i].walk_code
										+ "\">"
										+ result[i].walk_title
										+ "</a></td>"
										+ "<td class=\"product-price\" style = \"width: 22%;\">"
										+ result[i].walk_startaddr
										+ "</td>"
										+ "<td class=\"product-quantity\">"
										+ result[i].walk_mid
										+ "</td>"
										+ "<td class=\"product-quantity\"  style = \"width: 14%;\">"
										+ "<a href =\"reviewWritePage?walk_code="
										+ result[i].walk_code
										+ "\" class=\"cart-btn\" style=\"width:100%;\">후기작성</a>"
										+ "<a  class=\"cart-btn\" style=\"width:100%;\">후기완료</a>"
										+ "</td></tr>"

							}

							$("#dataTable").dataTable().fnDestroy(); //테이블의 데이터 삭제
							$("#mywalkList").html(output); //tbody 태그 안쪽에 입력

							$('#dataTable').DataTable({
								destroy : true, //테이블 재생성 : 새로운 데이터를 불러와줌
								ordering : false, //정렬 기능
								searching : false
							//검색 기능

							});

						}

					})

		}

		//게시물 select option 불러오기
			function changeAreaSelect(district){
				console.log("changeAreaSelect(district) 호출");
			   var area1 = ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
			   var area2 = ["전체","강서구","금정구","기장군","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구"];
			   var area3 = ["전체","남구","달서구","달성군","동구","북구","서구","수성구","중구"];
			   var area4 = ["전체","강화군","계양구","남구","남동구","동구","부평구","서구","연수구","중구","옹진군"];
			   var area5 = ["전체","광산구","남구","동구","북구","서구"];
			   var area6 = ["전체"]
			   var area7 = ["전체","대덕구","동구","서구","유성구","중구"];
			   var area8 = ["전체","남구","동구","북구","중구","울주군"];
			   var area9 = ["전체","가평군","고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","양평군","여주시","연천군","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시"];
			   var area10 = ["전체","강릉시","고성군","동해시","삼척시","속초시","양구군","양양군","영월군","원주시","인제군","정선군","철원군","춘천시","태백시","평창군","홍천군","화천군","횡성군"];
			   var area11 = ["전체","괴산군","단양군","보은군","영동군","옥천군","음성군","제천시","증평군","진천군","청주시","충주시"];
			   var area12 = ["전체","계룡시","공주시","금산군","논산시","당진시","보령시","부여군","서산시","서천군","아산시","연기군","예산군","천안시","청양군","태안군","홍성군"];
			   var area13 = ["전체","고창군","군산시","김제시","남원시","무주군","부안군","순창군","완주군","익산시","임실군","장수군","전주시","정읍시","진안군"];
			   var area14 = ["전체","강진군","고흥군","곡성군","광양시","구례군","나주시","담양군","목포시","무안군","보성군","순천시","신안군","여수시","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
			   var area15 = ["전체","경산시","경주시","고령군","구미시","군위군","김천시","문경시","봉화군","상주시","성주군","안동시","영덕군","영양군","영주시","영천시","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군","포항시"];
			   var area16 = ["전체","거제시","거창군","고성군","김해시","남해군","밀양시","사천시","산청군","양산시","의령군","진주시","창녕군","창원 마산합포회원구","창원 의창성산구","창원 진해구","통영시","하동군","함안군","함양군","합천군"];
			   var area17 = ["전체","서귀포시","제주시"];
			   var target = document.getElementById("city");
			   
			   console.log("area 저장");
			   
			   if(district.value == "서울특별시" ) var choose = area1;
				else if(district.value == "부산광역시" ) var choose = area2;
				else if(district.value == "대구광역시" ) var choose = area3;
				else if(district.value == "인천광역시" ) var choose = area4;
				else if(district.value == "광주광역시" ) var choose = area5;
				else if(district.value == "세종특별자치시" ) var choose = area6;
				else if(district.value == "대전광역시" ) var choose = area7;
				else if(district.value == "울산광역시" ) var choose = area8;
				else if(district.value == "경기도" ) var choose = area9;
				else if(district.value == "강원도" ) var choose = area10;
				else if(district.value == "충청북도" ) var choose = area11;
				else if(district.value == "충청남도" ) var choose = area12;
				else if(district.value == "전라북도" ) var choose = area13;
				else if(district.value == "전라남도" ) var choose = area14;
				else if(district.value == "경상북도" ) var choose = area15;
				else if(district.value == "경상남도" ) var choose = area16;
				else if(district.value == "제주" ) var choose = area17;
				
			   
				target.options.length = 0;
			   
			   console.log("if문 통과")
			 	for (x in choose) {
				var opt = document.createElement("option");
				opt.value = choose[x];
				opt.innerHTML = choose[x];
				target.appendChild(opt);
			}
		}   

		function viewHospitalInfo(selObj,ho_code) {
			console.log("ho_code = " + ho_code);
	
			 // ajax로 병원 모달창 열기
			 $.ajax({
				type : "get",
				url : "adminViewHospitalInfo",
				data : {"ho_code" : ho_code},
				dataType : "json",
				async : false,
				success : function(result) {
					$("#ho_code").val(result.ho_code);
					$("#ho_addr").val(result.ho_addr);
					$("#ho_name").val(result.ho_name);
					$("#ho_tel").val(result.ho_tel);
					$("#ho_state").val(result.ho_state);
					hsInfoVal = result;
				}
			});
			$("#adminModifyHospitalModal").modal('show');
		}
		
		function modifyHospital(){
			var ho_code = $("#ho_code").val();
			var ho_addr = $("#ho_addr").val();
			var ho_name = $("#ho_name").val();
			var ho_tel = $("#ho_tel").val();
			var ho_state = $("#ho_state").val();
			console.log("ho_code : " + ho_code);
			
			//ajax 극장 정보 수정
			$.ajax({
				url : "adminModifyHospital",
				type : "get",
				data : { "ho_code" : ho_code, "ho_addr" : ho_addr, "ho_name" : ho_name, "ho_tel" : ho_tel, "ho_state" : ho_state},
				async: false,
				success: function(result){
					console.log(result);
					hsInfoVal.ho_code = ho_code;
					hsInfoVal.ho_name = ho_name;
					hsInfoVal.ho_addr = ho_addr;
					hsInfoVal.ho_tel = ho_tel;
					hsInfoVal.ho_state = ho_state;
					alert("정보가 수정 되었습니다.")
					location.reload();
				}
			});

		}
		
		$("#adminModifyHospitalModal").on('hide.bs.modal', function(){
			/* alert("모달창 닫히기 전!"); */
		});		

		$("#adminModifyHospitalModal").on('hidden.bs.modal', function(){
			/* alert("모달창 닫힌 후!"); */
		});
		
		$("#adminModifyHospitalModal").on('show.bs.modal', function(){
			/* alert("모달창 열리기 전!"); */
		});		
		
		$("#adminModifyHospitalModal").on('shown.bs.modal', function(){
			/* alert("모달창 열린 후!"); */
		});
		
	</script>
</body>
</html>