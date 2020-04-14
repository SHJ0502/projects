<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style type="text/css">
  	.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
	}
  </style>
<div class="navbar navbar-default" style="background-color: #F2F2F2; height: auto">
<div class="container">
		<div class="navbar-header">
			<a href="index.jsp" class="navbar-brand"><img src="resources/images/profile/logo.png" style="width: 120px; height: 30px;"></a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="../mypage/login.jsp">로그인</a></li>
			<li><a href="../mypage/register_form.jsp">회원가입</a></li>
			<li><a href="../myfren/my_buy.jsp">마이프렌</a></li>
			<li><a href="../message/mmssage_all.jsp">메세지</a></li>
			<li><a href="../buy_management/buy_management.jsp">구매</a></li>
			<li><a href="../mypage/my_info_form.jsp">유저아이디표시</a></li>
			<li><a href="../mypage/logout.jsp">로그아웃</a></li>
		</ul>
		</div>
		<div class="container">
		<div class="nav navbar-nav navbar-left">
			<ul class="nav navbar-nav" >
      <li class="dropdown">
        <a href="../myfren/my_buy.jsp" class="dropdown-toggle" data-toggle="dropdown">마이프렌

           <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="../myfren/my_buy.jsp">마이페이지</a></li>
          <li><a href="../myfren/steam_list.jsp">찜목록</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="" class="../buy_management/buy_management.jsp" data-toggle="dropdown">구매관리

           <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="../buy_management/buy_management.jsp">구매관리</a></li>
          <li><a href="../buy_management/buy_history.jsp">결제내역</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="../message/mmssage_all.jsp" class="dropdown-toggle" data-toggle="dropdown">메세지

           <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="../message/mmssage_all.jsp">전체 메시지</a></li>
          <li><a href="../message/message_read.jsp">안 읽은 메시지</a></li>
          <li><a href="../message/message_star.jsp">별표 메시지</a></li>
          <li><a href="../message/message_progress.jsp">거래중 메시지</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="../mypage/my_info_form.jsp" class="dropdown-toggle" data-toggle="dropdown">계정설정

           <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="../mypage/my_info_form.jsp">계정</a></li>
          <li><a href="../mypage/withdrawal.jsp">회원 탈퇴</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a href="" class="dropdown-toggle" data-toggle="dropdown">판매물건관리

           <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">판매내역</a></li>
          <li><a href="#">구매 요청 리스트</a></li>
          <li><a href="#">매출 보기</a></li>
          <li><a href="#">판매등록</a></li>
          <li><a href="#">판매수정</a></li>
          <li><a href="#">작업진행도</a></li>
        </ul>
      </li>
    </ul>
		</div>
		</div>
</div>