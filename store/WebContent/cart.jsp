<%@page import="com.store.vo.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="com.store.dao.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>도서 대여점</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<%
	// 로그인 여부 체크
	User user = (User) session.getAttribute("LOGINED_USER");
	if (user == null) {
		response.sendRedirect("loginform.jsp?fail=deny");
		return;
	}
	%>

	<div class="page-header">
		<h1>장바구니 <small><%=loginedUser.getName() %>님의 장바구니 입니다.</small></h1>
	</div>
  
  	<%
  		CartDao cartDao = CartDao.getInstance();
  		List<CartItem> cartItems = cartDao.getCartItemsByUserNo(loginedUser.getNo());
  	%>
  	
  	<div class="row">
  		<div class="col-sm-12">
  			<form id ="cart-form" action="deleteselectedcart.jsp">
	  			<table class="table">
	  				<thead>
	  					<tr>
	  						<th><input type="checkbox" id="ck-all" onchange="changeAllOrNothing()"/></th>
	  						<th>상품명</th>
	  						<th>가격</th>
	  						<th>할인가격</th>
	  						<th>수량</th>
	  					</tr>
	  				</thead>
	  				<tbody>
	  				<%
	  					if (cartItems.isEmpty()) {
	  				%>
	  					<tr>
	  						<td colspan="5" class="text-center">장바구니에 담긴 책이 없습니다.</td>
	  					</tr>
	  				<% 		
	  					} else {
	  						for (CartItem item : cartItems) {
	  				%>
	  					<tr>
	  						<td><input type="checkbox" name="cartno" value="<%=item.getNo() %>" onchange="updateTotalPrice()"></td>
	  						<td><%=item.getBook().getTitle() %></td>
	  						<td><span id="p-<%=item.getNo() %>"><%=item.getBook().getPrice() %></span> 원</td>
	  						<td><span id="dp-<%=item.getNo() %>"><%=item.getBook().getDiscountPrice() %></span> 원</td>
	  						<td><span id="a-<%=item.getNo() %>"><%=item.getAmount() %></span>개</td>
	  						<td><a href="deletecart.jsp?cartno=<%=item.getNo() %>" class="btn btn-danger btn-xs">삭제</a></td>
	  					</tr>
	  				<%		
	  						}
	  					}
	  				%>
	  				</tbody>
	  			</table>
  			</form>
  		</div>
  	</div>
  	
  	<div class="row">
  		<div class="col-sm-12">
  			<a href="deleteallcart.jsp" class="btn btn-default">전체 삭제</a>
  			<button class="btn btn-default" onclick="delSelectedItem()">선택 삭제</button>
  			<a href="new.jsp" class="btn btn-primary pull-right">쇼핑 계속</a>
  		</div>
  	</div>
  	<hr/>
  	<div class="row">
  		<div class="col-sm-12 text-right">
  			<p>상품 총 금액 : <strong id="total-price-box">0</strong> 원</p>
  		</div>
  	</div>
</div>
</body>
<script type="text/javascript">
	function updateTotalPrice() {
		var totalBox = document.getElementById("total-price-box");
		
		var checkedCheckboxes = document.querySelectorAll("input[name='cartno']:checked");
		if (checkedCheckboxes.length == 0) {
			totalBox.textContent = 0;	
			return;
		}
		
		var totalPrice = 0;
		for (var i=0; i<checkedCheckboxes.length; i++) {
			var checkbox = checkedCheckboxes[i];
			var cartno = checkbox.value;
			
			var discountPrice = parseInt(document.getElementById("dp-"+cartno).textContent);
			var amount = parseInt(document.getElementById("a-"+cartno).textContent);
			totalPrice += discountPrice*amount;
		}
		var currency = new Number(totalPrice);
		totalBox.textContent = currency.toLocaleString();
		
	}

	function delSelectedItem() {
		var checkedCheckboxes = document.querySelectorAll("input[name='cartno']:checked");
		if (checkedCheckboxes.length == 0) {
			alert("선택된 아이템이 없습니다.");
			return;
		
		}
		
		document.getElementById("cart-form").submit();
	}

	function changeAllOrNothing() {
		// 전체선택/해제 체크박스의 현재 체크여부
		var checkedStatus = document.querySelector("#ck-all").checked;
		
		// name이 "ck-book-no"인 모든 엘리먼트를 가져오자
		var checkboxes = document.querySelectorAll("input[name='cartno']");
		for (var i=0; i<checkboxes.length; i++) {
			var checkbox = checkboxes[i];
			checkbox.checked = checkedStatus;
		}
		
		updateTotalPrice();
	}
</script>
</html>
