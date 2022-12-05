<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

<!-- title -->
<title>신고된 댓글 관리</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/logo_dog_logo.png">
<!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;200;300;400;500;600&display=swap" rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/main.css">
<!-- responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/responsive.css">

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
<link href="https://unpkg.com/bootstrap-table@1.20.2/dist/bootstrap-table.min.css" rel="stylesheet">


<style type="text/css">
.boxed-btn {
	display: inline-block;
	font-weight: 700;
	font-size: 12px;
	border: 1px solid #F28123;
	background-color: #F28123;
	color: #fff;
	cursor: pointer;
	padding: 4px 15px;
	border-radius: 10px;
}

.title {
	text-decoration: none;
	color: #222;
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
	padding-right: 450px;
}

.breadcrumb-section:after {
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	content: "";
	background-image:
		url("${pageContext.request.contextPath}/resources/assets/img/adminforest.jpg");
	background-color: rgb(0, 0, 0, 0.5);
	background-blend-mode: multiply;
	background-position: right center;
	z-index: -1;
	opacity: 1;
}
.form-control,.bootstrap-table-filter-control-goods_code,.search-input{
background-color: #5a5c69;
border: 1px solid #5a5c69;

color: black;
text-align: center;


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
	<%@ include file="/WEB-INF/views/include/AdminTopbar.jsp"%>
	<!-- End of include Topbar -->

	<!-- breadcrumb-section 입니다. 숲 이미지가 들어가는 곳이고, 텍스트를 페이지 별로 달리 써야해서 빼놓고 내용 바꿔 사용합니다.-->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Report</p>
						<h1>신 고 된 댓 글 관 리</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section 끝-->


	<!-- 본문내용 자리입니다. -->


<div class="row mt-150 mb-150">
<div class="col"></div>
<div class="col-10">
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h3 class="m-0 font-weight-bold d-flex justify-content-center">신고 댓글 관리</h3>
		</div>
		<div class="card-body">
		
			<div class="table-responsive text-center" id ="reportRecomment">
			
				<table class="table table-layout: fixed" id="table" width="100%" data-pagination="true" data-page-number="1" data-toggle="table"
                            cellspacing="0" data-filter-control="true" data-show-search-clear-button="true"  data-sort-class="table-active" data-sortable="true">

					<thead class="table-dark">
						<tr class="text-center">
							<!-- width 설정은 본인이 알아서 설정 -->
							<th width="auto" data-field="recomment_boardcode" data-filter-control="select" data-sortable="false">게시판 종류</th>
							<th width="auto" data-field="recomment_code" data-filter-control="input" data-sortable="true">댓글 코드</th>
							<th width="auto" data-field="recomment_content" data-filter-control="input" data-sortable="ture">댓글 내용</th>
							<th width="auto" data-field="recomment_writer" data-filter-control="input" data-sortable="false">작성자</th>
							<th width="auto" data-field="recomment_date" data-filter-control="input" data-sortable="true">작성일</th>
							<th width="auto" data-field="recomment_report" data-filter-control="input" data-sortable="true">신고횟수</th>
							<th width="auto" data-field="recomment_check" data-filter-control="input" data-sortable="false">처리</th>
						</tr>
					</thead>
					
					<tbody class="table-hover">
						<c:forEach items="${Recomment_reportList}" var="report">
							<tr class="text-left">
								<c:set var="codename" value="${fn:substring(report.recomment_boardcode,0,2)}" />
								<c:set var="codenumber" value="${fn:substring(report.recomment_code,2,6)}" /><!-- 코드 숫자만 -->
										<!-- 게시물 종류 -->
										<c:choose>
											<c:when test="${codename == 'CB'}">
												<td>${fn:replace(codename, 'CB', '크루게시판')}</td>
											</c:when>
											<c:when test="${codename == 'RB'}">
												<td>${fn:replace(codename, 'RB', '후기게시판')}</td>
											</c:when>
											<c:when test="${codename == 'PB'}">
												<td>${fn:replace(codename, 'PB', '크루모집게시판')}</td>
											</c:when>
											<c:when test="${codename == 'WB'}">
												<td>${fn:replace(codename, 'WB', '산책게시판')}</td>
											</c:when>
											<c:when test="${codename == 'TB'}">
												<td>${fn:replace(codename, 'TB', '팁게시판')}</td>
											</c:when>
											<c:when test="${codename == 'IB'}">
												<td>${fn:replace(codename, 'IB', '임시보호게시판')}</td>
											</c:when>
											<c:when test="${codename == 'MB'}">
												<td>${fn:replace(codename, 'MB', '실종게시판')}</td>
											</c:when>
										</c:choose>
										<td>${codenumber } 번</td>
										<td>${report.recomment_content }</td><!-- 댓글 내용 -->
										<td>${report.recomment_writer }</td> <!-- 작성자 -->
										<td>${report.recomment_date }</td> <!-- 작성일 -->
										<td>${report.recomment_report } 개</td><!-- 신고횟수 -->
									<td>
								<button class=boxed-btn onclick="RestoreReportRecomment('${report.recomment_code}')">신고철회</button>
								<button class=boxed-btn onclick="ModifyStateRecomment('${report.recomment_code}')">신고처리</button>
								<button class=boxed-btn onclick="makeDeleteMember('${report.recomment_writer}')">회원정지</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="col"></div>
</div>








	<!-- Footer -->
	<%@ include file="/WEB-INF/views/include/AdminFooter.jsp"%>
	<!-- End of Footer -->


	<!-- jquery -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/sticker.js"></script>
	<!-- main js -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/jquery.dataTables.min.js"></script>
		
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
  
  </script>
  <script src="https://unpkg.com/bootstrap-table@1.20.2/dist/bootstrap-table.min.js"></script>
<script src="https://unpkg.com/bootstrap-table@1.20.2/dist/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>

 
  <script type="text/javascript">
  	$(document).ready(function() {  // 해당 옵션별 정렬
  		
	   $('#Table').bootstrapTable({
		   
	   });
  	
	});
</script>
  <script type="text/javascript">
//댓글 삭제
  function ModifyStateRecomment(recomment_code) {
      console.log("댓글코드 : " + recomment_code);
      console.log("댓글 state를 신고처리(5)로 바꾼다.")

      $.ajax({
          type : "get",
          url : "reportRecommentState",
          data : { "recomment_code" : recomment_code},
          success : function(result) {
              console.log("result : " + result);
              alert("댓글을 비활성화 처리 합니다.");
              location.reload();
          }
      });
  }


  // 댓글 report값 0으로 만들기
  function RestoreReportRecomment(recomment_code) {
      console.log("댓글코드 : " + recomment_code);
      console.log("게시물을 다시 활성화 시킵니다.")

      $.ajax({
          type : "get",
          url : "resetReportRecomment",
          data : { "recomment_code" : recomment_code },
          success : function(result) {
              console.log("result : " + result);
              alert("댓글을 다시 활성화 시킵니다.");
              location.reload();
          }
      });
  }

			// 회원 정지 기능
			function makeDeleteMember(report_id) {
				console.log("report_id : " +report_id)
				var member_state = '5';

				$.ajax({
					type : "get",
					url : "reportBoardMemberState",
					data : {
						"report_id" : report_id,
						"member_state" : member_state
					},
					success : function(result) {
						alert(report_id + " 회원을 정지합니다.")
						location.reload();
					}
				});
			}
		

			
			
		</script>

</body>
</html>