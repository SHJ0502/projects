<%@page import="kr.pren.dao.UserDao"%>
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
  <style>
  	.filebox label { display: inline-block; padding: .5em .75em; color: #999; font-size: inherit;
  	 line-height: normal; vertical-align: middle; background-color: #fdfdfd; cursor: pointer;
  	  border: 1px solid #ebebeb; border-bottom-color: #e2e2e2; border-radius: .25em; } 
  	.filebox input[type="file"] { /* 파일 필드 숨기기 */ position: absolute; width: 1px; height: 1px;
  	 padding: 0; margin: -1px; overflow: hidden; clip:rect(0,0,0,0); border: 0; }

  </style>

</head>
<body>
	<%@ include file="../../common/nav2.jsp" %>
	
	<%
		String fail = request.getParameter("fail");
		if("replay".equals(fail)){
	%>
		<div class="row">
			<div class="col-sm-12">
				<div class="alert alert-danger">
					<strong>(오류)</strong>비밀번호가 일치하지 않습니다.
				</div>
			</div>
		</div>
	<% 
		}
	%>	
	
<div class="container" style="height:740px;">
	<div class="row">
		<div class="col-sm-2">
			<div class="panel panel-default">
				<div class="panel-body"><span style="font-size: 23px;">계정 설정</span></div>
				<div class="panel-body"><a href="my_info_form.jsp">계정</a></div>
				<div class="panel-body"><a href="withdrawal.jsp">회원탈퇴</a></div>
			</div>
		</div>
		
		<%
			int userNo = loginedUser.getNo();
			
			UserDao userDao = UserDao.getInstance();
			User user = userDao.getUserByWeekorTimeByNo(userNo);
			
			String callDate = user.getCallDate();
			
			System.out.println(user.getProfileImgName());
		%>
		<div class="col-sm-10">
			<div class="row">
				<div class="col-sm-12">
					<div class="box-title" style="margin-bottom:20px;">나의 정보</div>
					<div class="row">
						<div class="col-sm-4">
							<form action="my_image_insert.jsp"  method="post" enctype="multipart/form-data" id="imgupload">
							<div class="form-group">
								<img id="image-preview" src="../../resources/images/user_profile/<%=user.getProfileImgName().equals("0") ? "person.png":user.getProfileImgName() %>" style="width:229px; height:229px; margin-left:30px;" />
							</div>
								<div style="text-align:center" class="filebox" >
									<label for="user_img">이미지 수정</label>
									<input type="file" name="userimage" id="user_img" onchange="userimgclick()"/>
								</div>
							</form>
						</div>
						<div class="col-sm-8">
							<form action="my_nickname_update.jsp">
							<div class="row">
								<div class="col-sm-12" style="margin-left:20px;">
									<div class="form-inline" style="margin-top:20px;">
										    <div class="input-group">
	 										<span class="input-group-addon" id="sizing-addon2">NickName</span>
										    <input type="text" class="form-control" id="user-nickname" name="usernickname"
										    value="<%=loginedUser.getNickName() %>" style="width:425px;" 
										    onfocus="clearTextField('user-nickname')">
										    <span class="input-group-btn">
										    <button class="btn btn-default" type="submit">변경</button>
											</span>
										</div>
									</div>
									<div class="form-inline">
										    <div class="input-group" style="margin-top:30px;">
	 										<span class="input-group-addon" id="sizing-addon2">이메일 인증</span>
										    <input type="text" class="form-control" value="<%=loginedUser.getEmail() %>" style="width:370px;" disabled="disabled">
										    <span class="input-group-btn">
										    <button class="btn btn-default" type="button">인증완료</button>
											</span>
										</div>
									</div>
									<div class="form-inline">
										    <div class="input-group" style="margin-top:30px;">
	 										<span class="input-group-addon" id="sizing-addon2">본인인증</span>
										    <input type="text" class="form-control"  value="<%=loginedUser.getName() %>" style="width:390px;" disabled="disabled">
										    <span class="input-group-btn">
										    <button class="btn btn-default" type="button">인증완료</button>
											</span>
										</div>
									</div>
									
								</div>
								
							</div>
							</form>
						</div>
					</div>
					<div class="form-group" style="margin-top:20px;">
					<form action="my_info_day_of_week_update.jsp">
						<label class="control-label">연락 가능 기간 설정</label>
						<div class="row">
							<div class="col-sm-12">
								<div class="btn-tool">
									<div id="form1">
										<input type="checkbox" name="dayofweek" value="mon" id="day-of-week-1" <%=callDate.contains("mon")?"checked":"" %>/>월요일
										<input type="checkbox" name="dayofweek" value="tue" id="day-of-week-2" <%=callDate.contains("tue")?"checked":"" %>/>화요일
										<input type="checkbox" name="dayofweek" value="wed" id="day-of-week-3" <%=callDate.contains("wed")?"checked":"" %>/>수요일
										<input type="checkbox" name="dayofweek" value="thu" id="day-of-week-4" <%=callDate.contains("thu")?"checked":"" %>/>목요일
										<input type="checkbox" name="dayofweek" value="fri" id="day-of-week-5" <%=callDate.contains("fri")?"checked":"" %>/>금요일
										<input type="checkbox" name="dayofweek" value="sat" id="day-of-week-6" <%=callDate.contains("sat")?"checked":"" %>/>토요일
										<input type="checkbox" name="dayofweek" value="sun" id="day-of-week-7" <%=callDate.contains("sun")?"checked":"" %>/>일요일
									</div>
								</div>
							</div>
						</div>
							<div class="row">
								<div class="col-sm-9" style="margin-top:10px;">
									<div class="row">
										<div class="col-sm-6" >
											<select name="firsttime" class="form-control">
											<%
												for(int i=0; i<25; i++){
											%>
												<option value="<%=i %>" <%=user.getCallFirstTime()==i?"selected":"" %>><%=i %></option>
											<%
												}
											%>
											</select>
										</div>
											
										<div class="col-sm-6">
											<select name="lasttime" class="form-control">
												<%
													for(int i=0; i<25; i++){
												%>
													<option value="<%=i %>" <%=user.getCallLastTime()==i?"selected":"" %>><%=i %></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
								</div>
								<div class="col-sm-3" style="margin-top:10px;">
									<button  type="submit" class="btn btn-primary btn-block">저장</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				
				<div class="col-sm-6" style="margin-top:10px;">
					<div class="box-title">계좌번호 저장</div>
					<form action="update_user_bank.jsp">
						<label style="margin-top:25px;">계좌 은행 </label>
						<select name="bankname" class="form-control">
							<option value="hankookbank"<%=user.getBankName().equals("hankookbank")?"selected":"" %>>한국은행</option>
							<option value="koreabank"<%=user.getBankName().equals("koreabank")?"selected":"" %>>코리아은행</option>
						</select>
						<label style="margin-top:25px;">계좌 번호 작성 </label>
						<input type="text" class="form-control" name="userbankno" id="user-bank-no" value="<%=user.getSellBankNo() %>" />
						<div class="form-group pull-right" style="margin-top:15px;">
							<button type="submit" class="btn btn-primary">계좌번호 변경</button>
						</div>
					</form>
				</div>
				<div class="col-sm-6" style="margin-top:10px;">
					<form action="update_user_pwd.jsp">
						<div class="box-title" >비밀번호 변경</div>
						<div class="form-group">
							<label>현재 비밀번호</label>
							<input type="password" class="form-control" name="userpwd" id="user-pwd" />
						</div>
						<div class="form-group">
							<label>변경할 비밀번호</label>
							<input type="password" class="form-control" name="changeuserpwd" id="change-user-pwd" />
						</div>
						<div class="form-group">
							<label>변경할 비밀번호 확인</label>
							<input type="password" class="form-control" name="changeuserpwdconfirm" id="change-user-pwd-confirm" />
						</div>
						<div class="form-group pull-right">
							<button type="submit" class="btn btn-primary">비밀번호 변경</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</div>
</div>

	<%@ include file="../../common/footer.jsp" %>
	<script type="text/javascript">
	function clearTextField(id){
		document.querySelector("#"+id).value="";
	}
	function userimgclick(){
		 document.getElementById("imgupload").submit();
		
	}

	
	</script>
</body>
</html>