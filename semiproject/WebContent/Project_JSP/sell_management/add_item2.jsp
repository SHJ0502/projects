<%@page import="java.util.Enumeration"%>
<%@page import="kr.pren.vo.User"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.tomcat.util.http.fileupload.IOUtils"%>
<%@page import="kr.pren.dao.OptionDao"%>
<%@page import="kr.pren.vo.Option"%>
<%@page import="kr.pren.dao.SaleItemDao"%>
<%@page import="kr.pren.vo.ItemImage"%>
<%@page import="kr.pren.dao.ItemImageDao"%>
<%@page import="kr.pren.vo.SaleItem"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	User loginedUser = (User)session.getAttribute("LOGINED_USER");
	if (loginedUser == null) {
		response.sendRedirect("add_item_form.jsp?result=deny");
		return;
	}

	request.setCharacterEncoding("utf-8");

	String mainSaveDirectory = "C:\\projects\\web_workspace\\semiproject\\WebContent\\resources\\images\\item_logo";
	String subSaveDirectory = "C:\\projects\\web_workspace\\semiproject\\WebContent\\resources\\images\\user_item";
	
	// 메인 이미지 저장
	MultipartRequest multipartRequest = new MultipartRequest(request,
			mainSaveDirectory,
			1024*1024*10,
			"utf-8");

	
	// 메인카테고리 번호
	int maincategory = Integer.parseInt(multipartRequest.getParameter("maincategory"));
	// 서브카테고리 번호
	int subcategory = Integer.parseInt(multipartRequest.getParameter("subcategory"));
	// 유저 타입
	String usertype = multipartRequest.getParameter("usertype");
	// 상품 제목
	String productname = multipartRequest.getParameter("productname");
	// 메인 이미지
	String mainproductimg = multipartRequest.getFilesystemName("mainproductimg");
	// 서브이미지

	// 기본옵션
	String basicsoption = multipartRequest.getParameter("basicsoption");
	// 기본옵션 가격
	int basicproductprice = Integer.parseInt(multipartRequest.getParameter("basicproductprice"));
	// 상품 상세설명
	String productdescription = multipartRequest.getParameter("productdescription");
	// 상품 구매전안내
	String productguide = multipartRequest.getParameter("productguide");
	// 환불규정
	String productrefund = multipartRequest.getParameter("productrefund");
	
		
	SaleItem saleItem = new SaleItem();
	saleItem.setNo(maincategory);
	saleItem.setSubCategoryNo(subcategory);
	saleItem.setTitle(productname);
	saleItem.setContent(productdescription);
	saleItem.setContentsGuide(productguide);
	saleItem.setContentsRefund(productrefund);
	saleItem.setPrice(basicproductprice);
	saleItem.setLogoName(mainproductimg);
	saleItem.setIsSolo(usertype);
	saleItem.setUser(loginedUser);
	saleItem.setState("심사대기");
	
	SaleItemDao saleItemDao = SaleItemDao.getInstance();
	
	// 상품 등록
	saleItemDao.updateDisplaySaleitem(saleItem);
	
	// 유저 번호 로 찾은 상품번호를 담는 변수 생성
	SaleItem findItem = saleItemDao.getSaleItemNo(loginedUser.getNo());
	
	Enumeration<String> imageFieldNames = multipartRequest.getFileNames();
	while (imageFieldNames.hasMoreElements()) {
		String fieldName = imageFieldNames.nextElement();
		if (fieldName.startsWith("sub")) {
			String subimageFileName = multipartRequest.getFilesystemName(fieldName);		

			System.out.println("서버이미지 파일이름: " + subimageFileName);
			IOUtils.copy(new FileInputStream(new File(mainSaveDirectory, subimageFileName)),
							new FileOutputStream(new File(subSaveDirectory, subimageFileName)));

			ItemImage itemImage = new ItemImage();
			itemImage.setName(subimageFileName);
			itemImage.setUserNo(loginedUser.getNo());
			itemImage.setItemNo(findItem.getNo());
			ItemImageDao itemImageDao = ItemImageDao.getInstance();
			itemImageDao.updateItemImage(itemImage);
		}
	}
	System.out.println(findItem.getNo());
	// 서브이미지 등록
	
	// 추가옵션 등록
	// 추가옵션
	OptionDao optionDao = OptionDao.getInstance();
	String[] addoptions = multipartRequest.getParameterValues("addoption");
	String[] addoptionprices = multipartRequest.getParameterValues("addoptionprice");
	for (int index=0; index<addoptions.length; index++) {
		
		Option option = new Option();
		option.setTitle(addoptions[index]);
		option.setPrice(Integer.parseInt(addoptionprices[index]));
		option.setItemNo(findItem.getNo());
		option.setPlus("y");
		
		optionDao.updateOption(option);
		
	}
	
	Option basicOption = new Option();
	basicOption.setItemNo(findItem.getNo());
	basicOption.setTitle(basicsoption);
	basicOption.setPlus("n");
	optionDao.updateOption(basicOption);
	
	response.sendRedirect("../main/product_register_completed.jsp");
	
	
	
%>