<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<title>관리자회원관리</title>

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
background-image:url("${pageContext.request.contextPath}/resources/assets/img/adminforest.jpg");
background-color: rgb(0,0,0,0.6);
background-blend-mode: multiply;
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


/* AdminTopbar.jsp를 만들어 해당 메뉴 태그에 바로 적용하면 동적 투명도 변환기능이 상실하여 직접 클래스 스타일을 줘야 하므로 각 페이지마다 
관리자 페이지 일 경우 이 아래 있는 스타일의 주석을 지우고, 활성화 하여 사용하세요(메뉴색 살짝 붉은기돌게 바꾸는 스탈입니다.).*/
.sticky-wrapper.is-sticky .top-header-area {
background-color: rgb(36, 0, 22);
} 

.pagination{
padding-right: 450px;
}

</style>


</head>
<body>
	
<!-- Topbar 인클루드 자리, 관리자용과 회원용 공통으로 사용하니 바꾸지 마세요. -->
	<%@ include file="../include/AdminTopbar.jsp" %>

	
	<!-- breadcrumb-section 입니다. 숲 이미지가 들어가는 곳이고, 텍스트를 페이지 별로 달리 써야해서 빼놓고 내용 바꿔 사용합니다.-->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Walk</p>
						<h1>오늘의 회원관리</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section 끝-->
	
	
<div class="row mt-150 mb-150">
<div class="col"></div>
<div class="col-10">	
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h3 class="m-0 font-weight-bold d-flex justify-content-center">회원관리</h3>
		</div>
		<div class="card-body">
			<div class="table-responsive text-center">
				
												<table class="table table-layout: fixed" id="table" width="100%" data-pagination="true" data-page-number="1" data-toggle="table"
							cellspacing="0" data-filter-control="true" data-show-search-clear-button="true"  data-sort-class="table-active" data-sortable="true">   <!-- table-layout: fixed = 테이블 행 width 고정  -->
					
				
					<thead class="table-dark">

    				
						<tr class="text-center">			
							<th width = "3%" data-field="member_id"  data-filter-control="input" data-sortable="true">아이디</th>     <!-- width 설정은 본인이 알아서 설정 -->           
							<th width = "10%" data-field="member_name" data-filter-control="input" data-sortable="true">이름</th>
							<th width = "10%" data-field="member_email" data-filter-control="input" data-sortable="true">이메일</th>					
							<th width = "5%" data-field="member_statename" data-filter-control="select" data-sortable="true">회원상태</th>
							<th width = "5%" data-field="member_state" data-filter-control="select">회원관리</th>

						</tr>
					</thead>
		
					<tbody class="table-hover" >
					<c:forEach items="${MemberList }" var="Member" varStatus="num">
						<c:if test="${Member.member_id != 'ICIAadmin'}">
							<tr class="text-left" >
	
								<td style="border-right: 1px solid white; text-align: center;">${Member.member_id }</td>
								<td style="border-right: 1px solid white; text-align: center;">${Member.member_name }</td>
								<td style="border-right: 1px solid white; text-align: center;">${Member.member_email }</td>
								
								<td id="member_statename${num.count}" style="border-right: 1px solid white; text-align: center;">							
								${Member.member_statename }
								</td>
								<td style="text-align: center;"> 
								<select name="member_state" id="member_stateop" onchange="mState(this.value,'${Member.member_id}','${num.count}')">
    								<option value=""></option>
   									<option value="0" <c:if test="${Member.member_state == '0' }">selected</c:if>>자진계정탈퇴</option>
   									<option value="1" <c:if test="${Member.member_state == '1'}">selected</c:if>>계정사용</option>
   									<option value="5" <c:if test="${Member.member_state == '5'}">selected</c:if>>계정정지</option>
								</select>
								</td>
							</tr>
						</c:if>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="col"></div>
</div>








	
	<%@ include file="../include/AdminFooter.jsp" %>	
	

	
	
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



  
  <script type="text/javascript">
  
  	$(document).ready(function() {  // 해당 옵션별 정렬

  		
	   $('#Table').bootstrapTable({

		   
	   });
  	
	});


  
  </script>
  
  	<script type="text/javascript">
		
		function mState(value, member_id,num){
			console.log("회원아이디 : " + member_id);
	
			
			var member_state = value;
		
			if(member_state == 0){
				$("#member_statename"+num).text("자진계정탈퇴");
			
			}else if(member_state == 1){
				$("#member_statename"+num).text("계정사용");
				
			}else if(member_state == 5){
				$("#member_statename"+num).text("계정정지");
				
			}

			
		 console.log(value)
			
			$.ajax({
				type : "get",
				url : "adminMemberState",
				data : { "member_id" : member_id, "member_state" : member_state},
				success : function(result){
					console.log("result : " + result);
				

					
				}
			});
		
		}
		


		










		
		
		
	</script>




</html>