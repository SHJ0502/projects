<%@page import="kr.pren.vo.Option"%>
<%@page import="kr.pren.vo.SaleItem"%>
<%@page import="kr.pren.dao.UserDao"%>
<%@page import="kr.pren.dao.OptionDao"%>
<%@page import="kr.pren.dao.SaleItemDao"%>
<%@page import="kr.pren.vo.ItemImage"%>
<%@page import="kr.pren.dao.ItemImageDao"%>
<%@page import="kr.pren.vo.SubCategory"%>
<%@page import="kr.pren.dao.SubCategoryDao"%>
<%@page import="kr.pren.vo.MainCategory"%>
<%@page import="java.util.List"%>
<%@page import="kr.pren.dao.MainCategoryDao"%>
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
	th, td{text-align: center;}
  	td{overflow:hidden;text-overflow;ellipsis;}
  </style>
</head>
<body>
<%@ include file="../../common/nav2.jsp" %>
<%

	MainCategory mainCategory = new MainCategory();

	MainCategoryDao mainCategoryDao = MainCategoryDao.getInstance();
	List<MainCategory> mainCategorys = mainCategoryDao.getMainCategory();
	
	SubCategoryDao subCategoryDao = SubCategoryDao.getInstance();
	List<SubCategory> subCategorys = subCategoryDao.getAllSubCategories();
	
	int productNo = Integer.parseInt(request.getParameter("productNo"));

	SaleItemDao saleItemDao = SaleItemDao.getInstance();
	ItemImageDao itemImageDao = ItemImageDao.getInstance();
	OptionDao optionDao = OptionDao.getInstance();
	UserDao userDao = UserDao.getInstance();
	   
	List<ItemImage> itemImages = itemImageDao.getItemImageByNo(productNo);
	SaleItem saleItem = saleItemDao.getSaleItemByNo(productNo);
	User user = userDao.getUserByNo(saleItem.getUser().getNo());
	List<Option> options = optionDao.getOptionByNo(productNo);
	SubCategory subCategory = subCategoryDao.getSubCategoryByNo(saleItem.getSubCategoryNo());
%>
<div class="container">
<%
		String fail = request.getParameter("result");
		if("deny".equals(fail)){
	%>
		<div class="row">
			<div class="col-sm-12">
				<div class="alert alert-danger">
					<strong>로그인</strong>안되어있습니다.
				</div>
			</div>
		</div>
	<% 
		}
	%>
	<div class="row" style="margin-bottom: 50px;">
		<div class="col-sm-2">
			<div class="panel panel-default">
				<div class="panel-body"><span style="font-size: 23px;">상품관리</span></div>
				<div class="panel-body"><a href="add_item_form.jsp">상품등록</a></div>
				<div class="panel-body"><a href="user_sell_history.jsp">판매내역</a></div>
				<div class="panel-body"><a href="buy_request_list.jsp">구매요청리스트</a></div>
			</div>
		</div>
		<div class="col-sm-10">
			<h3>상품등록</h3>
			<form id="add-item" class="form-inline" action="add_item2.jsp" method="post" enctype="multipart/form-data">
			    <div class="form-group">
					<label style="width: 120px;">1차분류</label>
			      	<select class="form-control" name="maincategory" id="main-category" >
			        <%
	        			for(MainCategory mainC : mainCategorys){
			        %>
			        	<option value="<%=mainC.getNo() %>"><%=mainC.getName() %></option>
					<% 
			        	}
					%>
			      	</select>
	    		</div>
	    		<div class="form-group">
	    			<label>2차분류</label>
	     			<select class="form-control" name="subcategory" id="sub-category" >
	     				<option>-- 선택하세요 --</option>
			        <%
			        	for(SubCategory subC : subCategorys){
			        %>
			       		<option value="<%=subC.getNo()%>" id="main-cat-<%=subC.getMainCateNo()%>"><%=subC.getName() %></option>
			        <%
			        		}
			        %>
	     			</select>
	    		</div>
			    <div class="form-group">
			    	<label class="radio-inline">
						<input type="radio"  name="usertype" id="user-type-y" value="y" checked="checked" />개인
					</label>
					<label class="radio-inline">
						<input type="radio"  name="usertype" id="user-type-n" value="n" checked="checked" />기업
					</label>
			    </div>
			    <div class="form-group-block" style="margin-top: 10px;">
			    	<label style="width: 120px;">상품명</label>
			    	<input type="text" class="form-control" name="productname" id="product-name" style="width: 500px;" value="<%=saleItem.getTitle() %>">
			    </div>
			    <div class="form-group-block" style="margin-top: 10px;">
			    <span style="margin-left: 130px;">이전 파일명 = <%=saleItem.getLogoName() %></span>
			    <br/>
			    	<label style="width: 120px;">메인이미지</label>
					<input type="file" class="form-control" name="mainproductimg" id="main-productimg" style="width: 500px;"/>
			    	<!-- <img src="../../resources/images/user_item/pp3.JPG" style="width: 100%; margin-top: 20px; max-width: 650px;">-->
			    </div>
			    <div class="form-group-block" style="margin-top: 10px;" id="apppend-box">
			    <div style="margin-left: 125px;">
				<%
			    	for(ItemImage i : itemImages){
			    %>
			    	<span>이전 파일명 = <%=i.getName() %></span>
			    <%
			    	}
			    %>
			   </div>
			    	<label style="width: 120px;" >상세이미지<button type="button" id="add-image-box" class="btn btn-primary btn-xs pull-right" onclick="addImageFile()"><span class="glyphicon glyphicon-plus"></span></button></label>
			    	<input type="file" class="form-control" name="subproductimg1" id="sub-productimg" style="width: 500px;" />
			    </div>
		    	
			    
			    <div class="form-group-block" id="image-box" style="margin-top: 10px;"><!-- 추가된 input테그 둘어가는 공간 --></div>
		    	
			    <div class="form-group-block" style="margin-top: 10px;">
			    	<label style="width: 120px;">기본옵션</label>
			    	<%
						for(Option o : options){
							if(o.getPlus().equals("n")){
					%>
			    	<input type="text" class="form-control" name="basicsoption" id="basic-option" style="width: 250px;" value="<%=o.getTitle() %>"/>
			    	<label style="width: 100px; text-align: right;">기본가격 </label>
			    	<input type="text" value="<%=saleItem.getPrice() %>" class="form-control" style="width: 140px;" name="basicproductprice" id="basic-product-price"/>

			    </div>
				    <%
										}
									}
				    %>
			    <div class="form-group" style="margin-top: 10px;">
			    	<label style="width: 120px; ">추가옵션 <button type="button" id="add-image-box" class="btn btn-primary btn-xs pull-right" onclick="addOption()"><span class="glyphicon glyphicon-plus"></span></button></label>
			    	<input type="text" class="form-control" name="addoption" id="add-option" style="width: 250px; "/>
			    	<label style="width: 100px; text-align: right;">가격 </label>
			    	<input type="text" class="form-control" style="width: 140px;" name="addoptionprice" id="product-price"/>
			    </div>
				<div class="form-group" style="margin-top: 10px;" id="option-box"></div>

				<div class="form-group" style="padding-left: 0px;">
					<div class="form-group" id="newsbox-1">
						<h4><label style="display: block;">상품 상세설명</label></h4>
				  		<textarea class="form-control" name="productdescription" id="product-description" rows="6" style="width: 900px;"><%=saleItem.getContent() %></textarea>
					</div>
				</div>
				<div class="form-group" style="padding-left: 0px;">
					<div class="form-group" id="newsbox-1">
						<h4><label style="display: block;">구매전 안내</label></h4>
			  			<textarea class="form-control" name="productguide" id="product-guide" rows="6" style="width: 900px;"><%=saleItem.getContentsGuide() %></textarea>
			  		</div>
				</div>
				<div class="form-group" style="padding-left: 0px;">
					<div class="form-group" id="newsbox-1">
						<h4><label style="display: block;">환불규정</label></h4>
			  			<textarea class="form-control" name="productrefund" id="product-refund" rows="6" style="width: 900px;"><%=saleItem.getContentsRefund() %></textarea>
					</div>
				</div>
				<div class="text-right" style="margin-right: 45px; margin-top: 25px;">
					<button type="submit" class="btn btn-primary btn-lg">상품 수정</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%@ include file="../../common/footer.jsp"%>
<script type="text/javascript">

	
		
	
	function changeMainCategory() {
		var options = document.querySelectorAll("#sub-category option");
		for (var i=0; i<options.length; i++) {
			options[i].style.display = 'none';
		}
		var mainCNo = document.getElementById("main-category").value;
		
		options = document.querySelectorAll("#sub-category option#main-cat-" + mainCNo)
		for (i=0; i<options.length; i++) {
			options[i].style.display = '';
		}
	}
	
	// 라디오버튼, 체크박스가 체크될 때 마다 실행되는 메소드
	function getCheckedValue(e) {
		var isChecked = e.target.checked;
		var val = e.target.value;
		if(isChecked){
			console.log("체크여부", isChecked, "체크된 값", val);
		}
	}
	var subimageIndex = 1;

	// select박스의 선택항목이 변경될 때마다 실행되는 메소드
	function addImageFile(e) {
		var htmlContent  = "<div id='box-"+ ++subimageIndex+"'>";
		htmlContent += '<input type="file" class="form-control" name="subproductimg'+ subimageIndex +'"  style="width: 500px; margin-left:123px; margin-bottom:10px;" />';
		htmlContent +=' <input type="button" value="삭제" onClick="removeRow('+subimageIndex+')" style="cursor:hand" class="btn btn-danger btn-xs">';
		htmlContent += "</div>"
		document.querySelector("#image-box").innerHTML += htmlContent;
	}
	
	function removeRow(num) {
		var box = document.querySelector("#box-" + num);
		document.querySelector("#image-box").removeChild(box);
	}
	
	var suboption = 1;
	function addOption(e) {
		var html ="<div id='box-"+ ++suboption+"'>";
		    html += '<input type="text" class="form-control" name="addoption'+ suboption +'" id="add-option" style="width: 250px; margin-left:123px; margin-bottom:10px;"/>'
	    	+ '<label style="width: 110px; text-align: right;">가격&nbsp;</label>'
	    	+ '<input type="text" class="form-control" style="width: 140px; margin-bottom:10px;" name="addoptionprice'+ suboption +'" id="product-price"/>'
	    	html +=' <input type="button" value="삭제" onClick="removeOption('+suboption+')" style="cursor:hand" class="btn btn-danger btn-xs">';
	    	html += "</div>"
	    	
	    	document.querySelector("#option-box").innerHTML += html;
	}
	
	function removeOption(num) {
		var box = document.querySelector("#box-" + num);
		document.querySelector("#option-box").removeChild(box);
	}
	
</script>
</body>
</html>











