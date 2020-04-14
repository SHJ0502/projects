<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>도서대여점</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<%@ include file="common/nav.jsp" %>

<div class="container">
	<div class="jumbotron">
		<h1>도서대여점 방문을 환영합니다.</h1>
		<p>일부 서비스는 회원가입 및 로그인이 필요합니다.</p>
		<p class="text-right">
			<a href="registerform.jsp" class="btn btn-primary btn-lg">회원가입</a>
			<a href="loginform.jsp" class="btn btn-primary btn-lg">로그인</a>
		</p>
	</div>
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal">Open Modal</button>

		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
					</div>
					<div class="modal-body">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<img src="la.jpg" alt="Los Angeles">
								</div>

								<div class="item">
									<img src="chicago.jpg" alt="Chicago">
								</div>

								<div class="item">
									<img src="ny.jpg" alt="New York">
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>


<!--	--------------------------------------------------------------------------------------------------------------------  -->

<div class="row"
               style="border-bottom: 1px dotted #999; padding-top: 10px;">
               <div class="col-sm-12">
                  <div>
                     <!-- 여기1번 -->
                     <strong>유저의 아이디</strong>
                     
                     <div id="first-box" class="pull-right">
                        <button class="btn btn-warning btn-xs" onclick="goModify();">댓글수정</button>
                        <a href="" class="btn btn-danger btn-xs">댓글삭제</a>
                     </div>
                     
                  </div>
                  <p id="first-content">컨텐츠내용</p><br>
                  <form id="second-form" action="qnaanswerupdatereg.jsp"method="post" style="display: none; margin-bottom: 10px;">
                     <input type="hidden" name="pageno" value="페이지번호" />
                     <input type="hidden" name="qnano" value="리뷰번호" />
                     <div id="second-box" style="display: none; margin-bottom: 10px;" class="pull-right">   
                        <button type="button" class="btn btn-default btn-xs" onclick="submitReply()">댓글수정</button>
                        <button type="button" class="btn btn-default btn-xs" onclick="backReply()">취소</button>                     
                     </div>
                     <input type="hidden" name="qnano" value="리뷰번호">
                     <textarea id="qna-content" class="form-control" name="qnacontent" style="margin-bottom: 10px;">컨텐츠내용</textarea>
                  </form>
                  <br>
               </div>
</div>






	</div>
</body>
<script type="text/javascript">
function goModify() {
   document.getElementById("first-box").style.display = "none";
   document.getElementById("second-box").style.display = "block";
   document.getElementById("first-content").style.display = "none";
   document.getElementById("second-form").style.display = "block";
}

function submitReply() {
   var content = document.getElementById("qna-content").value;
   if (content == "") {
      alert("내용을 입력시고 수정버튼을 눌러주세요");
      return;
   }
   document.getElementById("second-form").submit();
}

function backReply() {
   document.getElementById("first-box").style.display = "block";
   document.getElementById("second-box").style.display = "none";
   document.getElementById("first-content").style.display = "block";
   document.getElementById("second-form").style.display = "none";
}
</script>

</html>
