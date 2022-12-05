<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>유용정보상세</title>

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

	<!-- 에디터 -->
	<script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/ckeditor.js"></script>

	<!-- Custom styles for this page -->
   <link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
	<!-- alert 창 script -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<script src="https://kit.fontawesome.com/3b0042e53f.js" crossorigin="anonymous"></script>

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

.btn {
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

.btn:hover{
  background-color: #051922;
  color: #F28123;
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
	margin-left: 30px;
	margin-top: 5px;
}

textarea {
    width: 92%;
    border-radius: 4px;
    border: 1px solid #ddd;;
    padding: 10px;
    resize: none;
}

textarea:focus {
	outline: none;
	border: 1px solid #ddd;
	
}

a {
	color: #858796;

}

a:hover {
	text-decoration: none;
	color: black;
}

thead tr th {
    background-color: rgba(0,0,0,.03);
    border: 1px solid #ddd;
    padding: 25px;
    font-size: 15px;
    font-weight: 500;
    height: 200px;
}

tbody td {
    border: 1px solid #ddd;
    padding: 25px;
    height: 400px;
}

.btn_dNone {
	display: none;

}

.comment-text-body h4 a {
  color: #051922;
  font-size: 80%;
  margin-left: 10px;
  border-bottom: none;
}

.ck.ck-editor__main>.ck-editor__editable:not(.ck-focused) {
outline:0px;
border:0px;
}

.ck.ck-toolbar {
background-size:0px;
border: 0px;
padding: 0px ;
opacity:0;
}

.width-100 {
	width: 100%;
}



</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/Topbar.jsp" %>
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Today's Tips</p>
						<h1>유 용 정 보 상 세</h1>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- check out section -->
	<div class="checkout-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="order-details-wrap">
						<table style="width: 100%;">
							<thead>
								<tr>
									<th style="border-radius: 4px 4px 0px 0px;">
									<c:if test="${sessionScope.loginId != null && tips.board_writer != sessionScope.loginId}">
										<span class="float-right">
											<a onclick="tipsViewReport('${tips.board_code }','${sessionScope.loginId }')"> <img alt="" src="https://media.discordapp.net/attachments/992004476040904815/996374088283082762/siren.png" width="15px" style="margin-bottom: 5px; color: #051922; font-size: 80%;"> 신고 </a>
										</span>
									</c:if>	
										<h2>${tips.board_title }</h2> 
										<br> 
										<p class="pt-50 pb-50">${tips.board_writer }</p> 
										<span>${tips.board_date } &nbsp;| &nbsp;조회 ${tips.board_hits }</span>
										<span class="float-right">
											<i id="thumbs_up1" class="fa-regular fa-thumbs-up"></i> ${tips.board_recommend } &nbsp;
											<i id="thumbs_down1" class="fa-regular fa-thumbs-down"></i> ${tips.board_decommend } 
										</span>
									</th>
								</tr>
							</thead>
							<tbody class="order-details-body">
								<tr>
									<td>
										<form action="tipsViewModifyPage">
											<div>
												<textarea id="editor">${tips.board_content }</textarea>
												<input type="hidden" value="${tips.board_code }" name="board_code">
											</div>					
											<br><br><br><br>
											<div class="row">
												<div class="col-7 text-right" style="color: black;">
													<c:choose>
														<c:when test="${commend.commend == 1 }">
															<a id="good" class="author" onclick="tipsCommend('good','${sessionScope.loginId }','${tips.board_code }')"><i id="thumbs_up" class="fa-solid fa-thumbs-up"></i> 좋아요 </a> &nbsp;
															<a id="bad" class="date" onclick="tipsCommend('bad','${sessionScope.loginId }','${tips.board_code }')"><i id="thumbs_down" class="fa-regular fa-thumbs-down"></i> 싫어요 </a>
														</c:when>
														<c:when test="${commend.commend == -1 }">
															<a id="good" class="author" onclick="tipsCommend('good','${sessionScope.loginId }','${tips.board_code }')"><i id="thumbs_up" class="fa-regular fa-thumbs-up"></i> 좋아요 </a> &nbsp;
															<a id="bad" class="date" onclick="tipsCommend('bad','${sessionScope.loginId }','${tips.board_code }')"><i id="thumbs_down" class="fa-solid fa-thumbs-down"></i> 싫어요 </a>
														</c:when>
														<c:otherwise>
															<a id="good" class="author" onclick="tipsCommend('good','${sessionScope.loginId }','${tips.board_code }')"><i id="thumbs_up" class="fa-regular fa-thumbs-up"></i> 좋아요 </a> &nbsp;
															<a id="bad" class="date" onclick="tipsCommend('bad','${sessionScope.loginId }','${tips.board_code }')"><i id="thumbs_down" class="fa-regular fa-thumbs-down"></i> 싫어요 </a>
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col-5 d-flex justify-content-end">
													<c:if test="${sessionScope.loginId == tips.board_writer}">
														<button style="width: 150px;">글수정</button> &nbsp;&nbsp;&nbsp;&nbsp;
														<button type="button" onclick="tipsState('${tips.board_code }')" style="width: 150px;">삭제</button>
													</c:if>
												</div>	
											</div>	
										</form>		
										<br>								
										<hr> <br>
										<!-- 댓글 작성란 - ajax -->
										<div>
											<%-- <div class="col-1">
												${tips.board_writer }
											</div>
											<div class="col-11"></div> --%>
											<textarea class="width-100" rows="5" cols="30" placeholder="댓글을 작성해주세요." id="recomment_content" name="recomment_content"></textarea> <br>
											<button class="btn-rigth" style="width: 80px;" onclick="tipsComment('${tips.board_code }','${sessionScope.loginId }')">작성</button>
										</div>
										<br> <br><br>
										<hr> <br>
										
										<!-- 댓글 목록 출력 - ajax -->
										<div class="comment-list" id="commentList">
											<div class="single-comment-body">
												<div class="comment-user-avater">
													<img src="" alt="">
												</div>
												<div class="comment-text-body">
													<h4>
														<span class="comment-date m-0"></span>
													</h4>
													<p></p>
												</div>
											</div>
										</div>
									</td>
								</tr>						
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end check out section -->
	
	<%@ include file="../include/Footer.jsp" %>
	
	<!-- jquery -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.11.3.min.js"></script>
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
	
	<script type="text/javascript">
	ClassicEditor
		.create(document.getElementById("editor"), {	
		
	    toolbar: {
	        items: [     

	        ],
	        shouldNotGroupWhenFull: true
	    },

	    list: {
	        properties: {
	            styles: true,
	            startIndex: true,
	            reversed: true
	        }
	    },
	   

	    fontFamily: {
	        options: [
	            'default',
	            'Arial, Helvetica, sans-serif',
	            'Courier New, Courier, monospace',
	            'Georgia, serif',
	            'Lucida Sans Unicode, Lucida Grande, sans-serif',
	            'Tahoma, Geneva, sans-serif',
	            'Times New Roman, Times, serif',
	            'Trebuchet MS, Helvetica, sans-serif',
	            'Verdana, Geneva, sans-serif'
	        ],
	        supportAllValues: true
	    },

	    htmlSupport: {
	        allow: [
	            {
	                name: /.*/,
	                attributes: true,
	                classes: true,
	                styles: true
	            }
	        ]
	    }, 
	    htmlEmbed: {
	        showPreviews: true
	    },
	   
	    link: {
	        decorators: {
	            addTargetToExternalLinks: true,
	            defaultProtocol: 'https://',
	            toggleDownloadable: {
	                mode: 'manual',
	                label: 'Downloadable',
	                attributes: {
	                    download: 'file'
	                }
	            }
	        }
	    },

	    removePlugins: [

	        'CKBox',
	        'CKFinder',
	        'EasyImage',   
	        'RealTimeCollaborativeComments',
	        'RealTimeCollaborativeTrackChanges',
	        'RealTimeCollaborativeRevisionHistory',
	        'PresenceList',
	        'Comments',
	        'TrackChanges',
	        'TrackChangesData',
	        'RevisionHistory',
	        'Pagination',
	        'WProofreader',
	        'MathType'
	    ]  
	  
	})
	        .then(editor => {
	          console.log(editor);
	          editor.enableReadOnlyMode( 'my-feature-id' );
	          editor.isReadOnly; // `true`.
	            
	          const toolbarElement = editor.ui.view.toolbar.element;

	          editor.on( 'change:isReadOnly', ( evt, propertyName, isReadOnly ) => {
	              if ( isReadOnly ) {
	                  toolbarElement.style.display = 'none';
	              } else {
	                  toolbarElement.style.display = 'flex';
	              }
	          } );
	          
	        });  
		
	
	
	
	
	</script>
	
  	<script type="text/javascript">
  		$(document).ready(function() {
  		
	  		/* 페이지 시작하면 댓글 목록 출력 */
	  		CommentList();
	  		console.log("댓글 출력 연결")
	  		
		});
  		

  		//갓다와서 좋아요 싫어요 하기
  		//글 추천, 비추천
  		function tipsCommend(objId,loginId,board_code){
  			if(${sessionScope.loginId == null}){
  				Swal.fire("로그인 후 이용해주세요");
  			}
  			console.log("obj : " + $("#"+objId).hasClass("author")); //있으면 true 없으면 false
  			console.log("obj : " + objId);
  			console.log("loginId : " + loginId)
  			console.log("board_code : " + board_code)
			
  			var commend;
  			
  			if($("#"+objId).hasClass("author") == true){
  				commend = 1;
  				
  			} else if($("#"+objId).hasClass("author") == false){
  				commend = -1;
  				
  			}
  			
  			console.log(commend);
  			
  			$.ajax({
  				type: "get", 
  				url: "tipsCommend",
  				data: { "code" : board_code, "member_id" : loginId, "commend" : commend },
  				success: function(result){
  					console.log(result);
  					
  					if (result == "OK" || result == "UPDATE"){
  						
  						if  (commend == 1) {
							//좋아요 선택시 
  							$("#thumbs_up").removeClass("fa-regular fa-thumbs-up")
  							$("#thumbs_up").addClass("fa-solid fa-thumbs-up")
  							$("#thumbs_down").removeClass("fa-solid fa-thumbs-down")
							$("#thumbs_down").addClass("fa-regular fa-thumbs-down")
							
						} else {
							//싫어요 선택시 
							$("#thumbs_down").removeClass("fa-regular fa-thumbs-down")
  							$("#thumbs_down").addClass("fa-solid fa-thumbs-down")
  							$("#thumbs_up").removeClass("fa-solid fa-thumbs-up")
							$("#thumbs_up").addClass("fa-regular fa-thumbs-up")
							
						}
  						
  					} else if (result == "NO"){
  						
  						if (commend == 1) {
  							Swal.fire({
  	  						   title: '이미 좋아요를 선택하셨습니다.',					   
  	  						   icon: 'error',					  
  	  						   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
   			  			       confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
  	  						   });
  							
						} else {
							Swal.fire({
  						   		title: '이미 싫어요를 선택하셨습니다.',					   
  						   		icon: 'error',					  
  						   	    confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
   			  			        confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
  						   	});
							
						}
  						
  					} 
  				
  				}
  			
  			})
  		}

  		//댓글 작성 처리 - ajax
  		function tipsComment(recomment_boardcode,recomment_writer){
  			var recomment_content = $("#recomment_content").val();
  			console.log("댓글 내용 : " + recomment_content)
  			console.log("댓글 작성자 : " + recomment_writer)
  			console.log("댓글 작성자 : " + recomment_writer.length)
  			console.log("댓글 작성할 게시물 코드 : " + recomment_boardcode)
  			
  			
  			//insert 전 세션값 유무 확인 단계
  			//세션값이 없다면 로그인 하라는 팝업 생성
  			if (recomment_writer.length == 0) {
  				Swal.fire({
					   title: '로그인 후에 작성 가능합니다.',					   
					   icon: 'warning',					  
					   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
					   confirmButtonText: '확인' // confirm 버튼 텍스트 지정
					   
					});
  				
  			} else if (recomment_content.length == 0){
  				Swal.fire({
					   title: '댓글 내용을 입력해주세요',					   
					   icon: 'warning',					  
					   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
					   confirmButtonText: '확인' // confirm 버튼 텍스트 지정
					   
					});
  				
  			} else {
  				//세션값 있는 경우
  				$.ajax({
  				type : "get",
  				url : "tipsComment",
  				data : { "recomment_content" : recomment_content, "recomment_writer" : recomment_writer, "recomment_boardcode" : recomment_boardcode },
  				success : function (result){
  					console.log(result);
  					
  					if(result == "OK" && recomment_writer != null ){
  						// 댓글 작성 후 댓글 내용 초기화 
  						$("#recomment_content").val("");
  						
  						// 댓글 작성후 댓글 출력
  						CommentList(); 
  						
  					} 
  				}
  			})
  			}
  		}
  		
  		
  		
  		//댓글 목록 출력 - ajax 
  		function CommentList(){
	
			var recomment_boardcode = '${tips.board_code }';
			console.log("원본 글 코드 : " + recomment_boardcode);
	
			var recomment_writer = '${sessionScope.loginId }';
			console.log("댓글 작성자 id : " + recomment_writer);
			var output = "";
	
			$.ajax({
				type : "get",
				url : "tipsCommentList",
				data : { "recomment_boardcode"  : recomment_boardcode },  
				dataType : "json",	
				async : false,
				success : function(result){
			
					for (var i = 0; i < result.length; i++){
						
						/* <div class="comment-list" id="commentList">
							<div class="single-comment-body">
								<div class="comment-user-avater">
									<img src="" alt="">
								</div>
								<div class="comment-text-body">
									<h4>
										<span class="comment-date m-0"></span>
									</h4>
									<p></p>
								</div>
							</div>
						</div> */
				
						console.log("댓글 작성자 프로필 : " + result[i].recomment_profile);
						console.log("댓글 작성자 ID : " + result[i].recomment_writer);
						output += "<div id =\"commentList" + i + "\"class=\"single-comment-body\">"+ "<div class=\"comment-user-avater\">"+ "<input type = \"hidden\" value = \"" + result[i].recomment_state + "\">"
								+ "<img src=\"${pageContext.request.contextPath }/resources/fileUpload/";
								
								if(result[i].recomment_profile != null){
								output+= result[i].recomment_profile;
									
								}else{
									output += "basic.jpeg";
								}
								
								output+="\">"+ "</div>"+ "<div class=\"comment-text-body\">"+
								"<input type = \"hidden\" value = \""+result[i].recomment_code+"\">"+
								"<input type = \"hidden\" value = \""+result[i].recomment_boardcode+"\">"+
								"<h4>"+result[i].recomment_writer+" <span class=\"comment-date\">"+result[i].recomment_date +"</span> ";
						if(${sessionScope.loginId != null } && '${sessionScope.loginId}'!= result[i].recomment_writer){
							
						output+="<a onclick=\"tipsCommentReport('"+result[i].recomment_boardcode+"','"+result[i].recomment_code+"','"+'${sessionScope.loginId}'+"')\"><img src=\"https://cdn.discordapp.com/attachments/992004476040904815/996374088283082762/siren.png\" style = \"width: 15px; margin-bottom: 9px; text-decoration: none; border-bottom: 0px;\"> 신고</a>";
						}		
								
						output+="</h4>"+
								"<textarea onkeydown=\"resize(this)\" onkeyup=\"resize(this)\" class=\"replyContent\" cols=\"auto\" style = \"resize: none; overflow-x: hidden; overflow-y: hidden; border: none; padding: 0px;\" id = \"content"+i+"\" readonly=\"readonly\" >"+result[i].recomment_content+"</textarea>";
							
								if(result[i].recomment_writer == recomment_writer){
									output += "<div id = \"modifiyordelete\"><a id = \"modify"+i+"\" style = \"margin-left: 85%;\" onclick = \"tipsCommentModify('modify"+i+"','content"+i+"','delete"+i+"','modify1"+i+"','delete1"+i+"')\">수정</a> <a id = \"delete"+i+"\" style = \"margin-left: 1%;\" onclick = \"tipsCommentState('"+result[i].recomment_boardcode+"','"+result[i].recomment_code+"','commentList"+i+"','line"+i+"')\">삭제</a></div>"+
									"<div id = \"modifiyordelete1\"><a class = \"btn_dNone\" id = \"modify1"+i+"\" style = \"margin-left: 85%;\" onclick = \"tipsCommentModifyInsert('"+result[i].recomment_boardcode+"','"+result[i].recomment_code+"','modify"+i+"','content"+i+"','delete"+i+"','modify1"+i+"','delete1"+i+"')\">저장</a>"+
									"<a class = \"btn_dNone\" id = \"delete1"+i+"\" style = \"margin-left: 1%;\" onclick = \"modifycancel('modify"+i+"','content"+i+"','delete"+i+"','modify1"+i+"','delete1"+i+"')\">취소</a></div>";
								}
	
						output += "</div>"+	"</div>"+"<hr id = \"line"+i+"\">"
				
					}

					$("#commentList").html(output);
			
					console.log($(".replyContent").eq(5).prop('scrollHeight'));
			
					for(var i = 0; i < $(".replyContent").length; i++){
						console.log($(".replyContent").eq(i).prop('scrollHeight'))
						$(".replyContent").eq(i).css("height",$(".replyContent").eq(i).prop('scrollHeight'));
					}
					//$(".replyContent").css("height")
				}
				
			});
	
	
		}
  		
  		
  		//댓글 목록창 사이즈
  		function resize(obj) {
  		  console.log(obj);
  		  obj.style.height = "1px";
  		  obj.style.height = (12+obj.scrollHeight)+"px";
  		}
  		
  		
  		//댓글 삭제 (state = 0 으로 수정)
  		function tipsCommentState(boardcode, commentcode,objId,line) {
  			console.log("댓글 삭제 버튼 클릭");
  			console.log("boardcode : " + boardcode);
  			console.log("commentcode : " + commentcode);
  			
  			//댓삭 확인 팝업 띄우기
  			Swal.fire({
	  			   title: '해당 댓글을 삭제하시겠습니까?',
	  			   icon: 'warning',
	  			   
	  			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
	  			   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
	  			   cancelButtonColor: '#3085d6', // cancel 버튼 색깔 지정
	  			   confirmButtonText: '삭제', // confirm 버튼 텍스트 지정
	  			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
	  			   
	  			   reverseButtons: false, // 버튼 순서 거꾸로
	  			   
	  			}).then(result => {
	  			   // 만약 Promise리턴을 받으면,
	  			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
	  				   
	  				 $.ajax({
	  	  				type: "get",
	  	  				url: "tipsCommentState",
	  	  				data: { "recomment_boardcode" : boardcode, "recomment_code" : commentcode},
	  	  				success: function (){
	  	  					//댓글 삭제 성공 팝업
	  	  					
	  	  					Swal.fire({
	  	  			  			title: '삭제 되었습니다',
	  	  			 			icon: 'success',
	  	  			   
	  	  			   			showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
		  			   			confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		  			   			confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
	  	  			   
	  	  			   			reverseButtons: false, // 버튼 순서 거꾸로
	  	  			   
	  	  						})
	  	  				}
	  	  			})
	  	  			
	  	  			$("#"+objId).remove();
	  				$("#"+line).remove(); 
	  	  			
	  			   }
	  			});
  			
  			
  			
  		}  		
  		
  		/*
  		div height 설정// objSet : 변경할 div id// objTar : height값을 구할 대상 div id
  		function setDivHeight(objSet, objTar){  
  			var objSet = document.getElementById(objSet);   
  			var objTarHeight= document.getElementById(objTar).offsetHeight;  objSet.style.height  = objTarHeight + "px";
  		} 
  		*/
  		
  		//댓글 수정버튼 클릭
  		function tipsCommentModify(modifybtn,contentbtn,deletebtn,modifybtn1,canselbtn){
  			console.log("댓글 수정 버튼 클릭");
  			var obj = document.getElementById(contentbtn);   
  			console.log("obj : " + obj);
  			
  			$("#" + modifybtn).toggleClass("btn_dNone");
  			$("#" + deletebtn).toggleClass("btn_dNone");
  			
  			$("#" + modifybtn1).removeClass("btn_dNone");
  			$("#" + canselbtn).removeClass("btn_dNone");
  			
  			$("#" + contentbtn).toggleClass("replyContent");
  			$("#" + contentbtn).removeAttr("readonly");
  			
  			//border 보이게, 크기에 맞게 조절
  			$("#" + contentbtn).attr("style","resize: none; overflow-x: hidden; overflow-y: hidden;");
  			obj.style.height = "1px";
    		obj.style.height = (12+obj.scrollHeight)+"px";
  			
  		}
  		
  		//댓글 수정 취소 클릭
  		function modifycancel(modifybtn,contentbtn,deletebtn,modifybtn1,canselbtn){
  			console.log("댓글 수정 취소 클릭");
  			var obj = document.getElementById(contentbtn);   
  			console.log("obj : " + obj);
  			
  			//obj 값과 왜 다른건지?
  			var jobj = $("#" + contentbtn); 
  			console.log("jobj : " + jobj);
  			
  			$("#" + modifybtn1).addClass("btn_dNone");
  			$("#" + canselbtn).addClass("btn_dNone");
  			
  			$("#" + modifybtn).toggleClass("btn_dNone");
  			$("#" + deletebtn).toggleClass("btn_dNone");
  			
  			$("#" + contentbtn).attr("readonly","readonly");
  			$("#" + contentbtn).toggleClass("replyContent");
  			
  			$("#" + contentbtn).attr("style","resize: none; overflow-x: hidden; overflow-y: hidden; border: none; padding: 0px;");
  			obj.style.height = "1px";
    		obj.style.height = (12+obj.scrollHeight)+"px";

			//원본 댓글로 바꿔놓기
    		CommentList();
    		
  			
  		}
  		
  		//댓글 수정 저장
  		function tipsCommentModifyInsert(recomment_boardcode,recomment_code,modifybtn,contentbtn,deletebtn,modifybtn1,canselbtn){
  			console.log("댓글 수정 저장 클릭");
  			
  			var content = $("#"+contentbtn).val();
  			var obj = document.getElementById(contentbtn);
  			
  			Swal.fire({
	  			   title: '수정한 내용을 저장하시겠습니까?',
	  			   icon: 'question',
	  			   
	  			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
	  			   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
	  			   cancelButtonColor: '#3085d6', // cancel 버튼 색깔 지정
	  			   confirmButtonText: '저장', // confirm 버튼 텍스트 지정
	  			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
	  			   
	  			   reverseButtons: false, // 버튼 순서 거꾸로
	  			   
	  			}).then(result => {
	  			   // 만약 Promise리턴을 받으면,
	  			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
	  				 
	  				   $.ajax({
	  						type: "get",
	  					 	url: "tipsCommentModify",
	  					 	data: { "recomment_boardcode" : recomment_boardcode ,"recomment_code" : recomment_code, "recomment_content" : content },
	  					 	success: function(){
	  					 		
	  					 		Swal.fire({
	  			  	  			   title: '수정되었습니다',
	  			  	  			   icon: 'success',
	  			  	  			   
	  			  	  			   showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
	  				  			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
	  				  			   confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
	  			  	  			   
	  			  	  			   reverseButtons: false, // 버튼 순서 거꾸로
	  			  	  			   
	  			  	  			})
	  			  	  			
	  			  	  			$("#" + modifybtn1).addClass("btn_dNone");
	  		    				$("#" + canselbtn).addClass("btn_dNone");
	  		    				
	  		    				$("#" + modifybtn).toggleClass("btn_dNone");
	  		    				$("#" + deletebtn).toggleClass("btn_dNone");
	  		    				
	  		    				$("#" + contentbtn).attr("readonly","readonly");
	  		    				$("#" + contentbtn).toggleClass("replyContent");
	  		    				
	  		    				$("#" + contentbtn).attr("style","resize: none; overflow-x: hidden; overflow-y: hidden; border: none; padding: 0px;");
	  		    				obj.style.height = "1px";
	  		    	    		obj.style.height = (12+obj.scrollHeight)+"px";
	  					 		
	  					 	}
	  				   })
	  			   }
	  			});
  		}
  		
  		
  		//게시글 삭제 처리 시 팝업 띄움
  		function tipsState(board_code){
  			var board_code = board_code;
  			console.log("삭제 처리할 게시글 코드 : " + board_code)
  			
  			Swal.fire({
	  			   title: '해당 글을 삭제하시겠습니까?',
	  			   text: '삭제한 글은 복구 되지 않습니다.',
	  			   icon: 'warning',
	  			   
	  			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
	  			   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
	  			   cancelButtonColor: '#3085d6', // cancel 버튼 색깔 지정
	  			   confirmButtonText: '삭제', // confirm 버튼 텍스트 지정
	  			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
	  			   
	  			   reverseButtons: false, // 버튼 순서 거꾸로
	  			   
	  			}).then(result => {
	  			   // 만약 Promise리턴을 받으면,
	  			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
	  				   
	  				 Swal.fire({
	  	  			   title: '삭제 되었습니다',
	  	  			   icon: 'success',
	  	  			   
	  	  			   showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
		  			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		  			   confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
	  	  			   
	  	  			   reverseButtons: false, // 버튼 순서 거꾸로
	  	  			   
	  	  			}).then(result => {
	  					location.href = "${pageContext.request.contextPath}/tipsState?board_code=" + board_code;
	  	  			});
	  			   }
	  			});
  		}
  		
  		
  		
  		
  		//댓글 신고
  		function tipsCommentReport(boardcode,recomment_code,loginId) {
  			console.log("댓글 신고 : " + boardcode + "/" + recomment_code + "/" + loginId)
  			
  			//중복 신고 확인 및 신고 처리
  			$.ajax({
  				type : "get",
  				url : "tipsCommentReportCheck",
  				data : { "boardcode" :  boardcode, "code" : recomment_code, "member_id" : loginId },
  				success : function(result) {
  					console.log(result)
  					
  					if(result == "NO"){
  						//중복 신고
  						Swal.fire({
  			  			   title: '이미 신고하신 댓글 입니다',
  			  			   icon: 'error',
  			  			   
  			  			   showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
  			  			   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
  			  			   confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
  			  			   
  			  			   reverseButtons: false, // 버튼 순서 거꾸로
  			  			   
  			  			})
  						
  					} else {
  						//신고 가능
  						Swal.fire({
  			  			   title: '해당 댓글을 신고하시겠습니까?',
  			  			   icon: 'question',
  			  			   
  			  			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
  			  			   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
  			  			   cancelButtonColor: '#3085d6', // cancel 버튼 색깔 지정
  			  			   confirmButtonText: '신고', // confirm 버튼 텍스트 지정
  			  			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
  			  			   
  			  			   reverseButtons: false, // 버튼 순서 거꾸로
  			  			   
  			  			}).then(result => {
  			  			   // 만약 Promise리턴을 받으면,
  			  			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
  			  				   
  			  				 Swal.fire({
  				  	  			   title: '신고 처리 되었습니다',
  				  	  			   icon: 'success',
  				  	  			   
  				  	  			   showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
  	  			  			       confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
  	  			  			       confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
  				  	  			   
  				  	  			   reverseButtons: false, // 버튼 순서 거꾸로
  				  	  			   
  				  	  			}).then(result => {
  				  	  				//댓글 신고 insert
  				  	  				location.href = "${pageContext.request.contextPath}/tipsCommentReport?code=" + recomment_code + "&boardcode=" + boardcode + "&member_id=" + loginId;
  				  	  				
  				  	  			});
  			  			   }
  			  			});						
  					}
  				}			
  			})
  			
  		}
  		
  		
  		//게시글 신고
  		function tipsViewReport(board_code, loginId){
  			console.log("board_code : " + board_code);
  			console.log("loginId : " + loginId);
  			
  			//중복 신고 확인 및 신고 처리
  			$.ajax({
  				type : "get",
  				url : "tipsReportCheck",
  				data : { "board_code" :  board_code, "loginId" : loginId },
  				success : function(result) {
  					console.log(result)
  					
  					if(result == "NO"){
  						//중복 신고
  						Swal.fire({
  			  			   title: '이미 신고하신 글 입니다',
  			  			   icon: 'error',
  			  			   
  			  			   showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
  			  			   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
  			  			   confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
  			  			   
  			  			   reverseButtons: false, // 버튼 순서 거꾸로
  			  			   
  			  			})
  						
  					} else {
  						//신고 가능
  						Swal.fire({
  			  			   title: '해당 글을 신고하시겠습니까?',
  			  			   icon: 'question',
  			  			   
  			  			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
  			  			   confirmButtonColor: '#d33', // confrim 버튼 색깔 지정
  			  			   cancelButtonColor: '#3085d6', // cancel 버튼 색깔 지정
  			  			   confirmButtonText: '신고', // confirm 버튼 텍스트 지정
  			  			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
  			  			   
  			  			   reverseButtons: false, // 버튼 순서 거꾸로
  			  			   
  			  			}).then(result => {
  			  			   // 만약 Promise리턴을 받으면,
  			  			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
  			  				   
  			  				 Swal.fire({
  				  	  			   title: '신고 처리 되었습니다',
  				  	  			   icon: 'success',
  				  	  			   showCancelButton: false, // cancel버튼 보이기. 기본은 원래 없음
  	  			  			       confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
  	  			  			       confirmButtonText: '닫기', // confirm 버튼 텍스트 지정
  				  	  			   
  				  	  			   reverseButtons: false, // 버튼 순서 거꾸로
  				  	  			   
  				  	  			}).then(result => {
  				  	  				location.href = "${pageContext.request.contextPath}/tipsViewReport?board_code=" + board_code + "&loginId=" + loginId;
  				  	  				
  				  	  			});
  			  			   }
  			  			});						
  					}
  				}			
  			})
  		}
  		
  		
  		
  		
  	
  	</script>

</body>
</html>