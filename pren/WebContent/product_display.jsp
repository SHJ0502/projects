<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>프랜</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  	<style type="text/css">
  	
  		
  	</style>
</head>
<%@ include file="../../common/nav3.jsp" %>
<body>
<div class="product-wrap">
	<div class="container">
		<div class="row">
			<div class="col-sm-7" style="padding: 20px 20px;">
				<div class="box mb-30 p-15 thumbnail" >
					<div class="product-summary">
						<div class="product-img">
							<img src="resources/images/productImg.jpg">
						</div>
						<div class="seller-info">
							<div class="item">
								<div style="margin-bottom: 10\px; margin-top:10px;">
		          					<img class="img-circle" src="resources/images/profile/person.jpg" style="width: 60px; height: 60px; border: 1px solid rgb(221, 221, 221); border: radius: 100%; margin-right: 5px; display: inline-block; vertical-align: middle;">
		          					<strong style="font-size: 25px;">유저이름</strong>
	           					</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" id="product-detail-tab"  style="width:100%;">
					<div class="box"style="background-color: white; padding: 20px 13px;">
				 		<ul class="nav nav-pills">
 							<li id="a-1" class="active" onclick="fn1(1)"><a href="#">맨위로</a></li>
							<li id="a-2" onclick="fn1(2)"><a href="#detail"  >상세설명</a></li>
							<li id="a-3" onclick="fn1(3)"><a href="#guidance" >구매전 안내</a></li>
 							<li id="a-4" onclick="fn1(4)"><a href="#refund" >환불규정</a></li>
						</ul>
					</div>
				</div>
				
				<div class="row" style="width: 643px;">
					<div id="detail" class="thumbnail" style="width: 658px; margin-left: 10px;">
						<!-- 상세 설명 -->
						<p>
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							상세설명상세설명상세설명상세설명상세설명상세설명상세설
							
														
						</p>
						<img src="" style="width: 100%; margin-top: 20px; max-width: 650px;">
					</div>
					<hr>
					<div id="guidance" class="thumbnail" style="width: 658px; margin-left: 10px;">
						<p>
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							구매전 안내 구매전안내구매전 안내 구매전안내구매전 안내 구매전안내
							
						</p>
					</div>
					<hr>
					<div id="refund" class="thumbnail" style="width: 658px; margin-left: 10px;">
						<p>
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정환불규정
							
						</p>
					</div>
				</div>
				
			</div>
		
			<div class="col-sm-5" style="height: 350px; position: fixed; margin-left: 680px; width: 500px;">
				<div>
					<div class="box mb-30 p-15" style="border: 0px; box-shadow: rgba(41, 42, 43, 0.16) 0px 2px 3px 0.6px;">
						<div class="product-info" style="margin-top: 20px;">
							<div class="title-wrap">
								<div class="title" style="font-size: 12px; font-weight: 700; margin: 15px 8px; background-color: #4facfe; color: white; border-radius: 10px; display: inline-block; padding: 2px 10px;">타이틀</div>
								
								<div class="sub-title" style="font-size: 22px; font-weight: 700; line-height: 1.25; box-sizing: border-box; margin-left: 10px;">서브타이틀서브타이틀서브타이틀서브타이틀서브타이틀서브타이틀서브타이틀서브타이틀서브타이틀</div>
							</div>
							<div class="info-wrap">
								<div style="margin-left: 10px;">
									<div style="font-weight: bold; font-size: 15px; margin-bottom: 5px; margin-top: 19px; color: rgb(62, 64, 66); margin-left: 10px;">기본옵션</div>
									옵션이 없는 상품입니다.
								</div>
								<hr/>
								<div class="btn-wrap">
									<div class="total-price" style="font-size: 30px; font-weight: 700; color: #4facfe; text-align: right;">
										555,555<span class="currency"> 원</span>
									</div>
									<div style="text-align: right; font-size: 12px; color: rgb(88, 88, 88); font-weight: 300;">부가세 포함 금액</div>
									<div style="display: flex; justify-content: space-between; margin-top: 14px;">
										<button type="button" style="width: 33%; height: 48px; background-color: white; border: 1px solid rgb(225, 225, 225); outline: none; font-size: 16px;">문의하기</button>
										<button type="button" style="width: 33%; height: 48px; background-color: white; border: 1px solid rgb(225, 225, 225); outline: none; font-size: 16px;">주문하기</button>
										<button type="button" style="width: 33%; height: 48px; background-color: white; border: 1px solid rgb(225, 225, 225); outline: none; font-size: 16px;">수정하기</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(window).scroll(function() {
		if ($(this).scrollTop() > 735) {
			$('#product-detail-tab').css({position:'fixed', top:'10px'})
		} else {
			$('#product-detail-tab').css({position:'static'})
		}
	});
	
	
	function fn1(no) {
		var items = document.querySelectorAll('.nav-pills li');
		for(var i=0; i<items.length; i++){
			var li = items[i];
			li.removeAttribute('class');
		}
		
		document.querySelector('#a-' + no).setAttribute('class', 'active');
	}
	
</script>
</body>
<%@ include file="../../common/footer.jsp" %>
</html>
