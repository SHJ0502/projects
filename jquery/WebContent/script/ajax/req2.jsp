<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title></title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  	<style type="text/css">
  		#emp-table tbody tr:hover {cursor: pointer; background-color: #eee}
  	</style>
</head>
<body onload="getDeptList()">
<div class="container">
	<div class="page-header">
		<h1>사원정보 조회</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>부서 목록</h3>
			<ul class="list-group" id="dept-list"></ul>
		</div>
		
		<div class="col-sm-8">
			<h3>사원 목록</h3>
			<table class="table" id="emp-table">
				<thead>
					<tr>
						<th>사원번호</th>
						<th>이름</th>
						<th>부서명</th>
						<th>입사일</th>
						<th></th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>
	
	<!-- Modal -->
	<div id="emp-detail-modal" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">사원 상세정보</h4>
	      </div>
	      <div class="modal-body">
	      	<div class="pannel pannel-info">
				<div class="pannel-heading">사원정보</div>
				<table class="table">
					<tr>
						<th>사원번호</th>
						<td id="emp-no-cell"></td>
						<th>입사일</th>
						<td id="emp-date-cell"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td id="emp-firstname-cell"></td>
						<th>성</th>
						<td id="emp-lastname-cell"></td>
					</tr>
					<tr>
						<th>소속부서</th>
						<td id="emp-dept-cell"></td>
						<th>업무</th>
						<td id="emp-job-cell"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td id="emp-tel-cell"></td>
						<th>이메일</th>
						<td id="emp-email-cell"></td>
					</tr>
					<tr>
						<th>급여</th>
						<td id="emp-salary-cell"></td>
						<th>커미션</th>
						<td id="emp-comm-cell"></td>
					</tr>
				</table>	      		
	      	</div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	
	  </div>
	</div>
	
	
		<!-- Modal -->
	<div id="emp-list-modal" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">부학직원 리스트</h4>
	      </div>
	      <div class="modal-body">
	      	<table class="table" id="emp-baby-table">
	      		<thead>
					<tr>
						<th>사원번호</th>
						<th>이름</th>
						<th>부서명</th>
						<th>입사일</th>
						<th></th>
					</tr>
				</thead>
				<tbody></tbody>
	      	</table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	
	  </div>
	</div>
	
	
	
</div>
<script type="text/javascript">
	function ajax(method, url, callback) {
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var text = xhr.responseText;	// 응답데이터(JSON 표기법의 텍스트) 조회
				var data = JSON.parse(text);	// 텍스트를 변환 --> 배열, 객체
				callback(data);					// 전달받은 콜백함수 실행, 데이터전달
			}
		}
		xhr.open(method, url);
		xhr.send();
	}
	
	function getDeptList() {
		ajax("GET", "res2_1.jsp", function(data) {
				console.log("부서목록", data);
				
				var items = "";
				data.forEach(function(dept, index) {
					items += "<li class='list-group-item'>";
					items += "<a href='' onclick='getEmpList("+dept.id+", event)'>"+dept.name+"</a>";
					items += "</li>";
				});
				
				document.getElementById("dept-list").innerHTML = items;
		});
	}
	
	function getEmpList(deptId, event) {
		event.preventDefault();
		ajax("GET", "res2_2.jsp?dept=" + deptId, function(data) {
			console.log("부서별 사원목록", data);
			
			var rows = "";
			data.forEach(function(emp, index) {
				rows += "<tr onclick='getEmpInfo("+emp.no+")'>";
				rows += "<td>"+emp.no+"</td>";
				rows += "<td>"+emp.firstName+"</td>";
				rows += "<td>"+emp.dept.name+"</td>";
				rows += "<td>"+emp.hireDate+"</td>";
				rows += "<td>";				
				rows += "<button class='btn btn-danger btn-sm' onclick='getManagerInfo("+emp.no+", event)'>관리자</button> ";
				rows += "<button class='btn btn-primary btn-sm' onclick='getEmpBabies("+emp.no+", event)'>부하직원</button>";
				rows += "</td>";
				rows += "</tr>";
			})
			
			document.querySelector("#emp-table tbody").innerHTML = rows;
		});
	}
	
	// 사원정보
	function getEmpInfo(empId) {
		
		ajax("GET", "res2_3.jsp?emp=" + empId, function(data) {
			
			console.log("사원상세정보", data);
			
			document.getElementById("emp-no-cell").textContent = data.no;
			document.getElementById("emp-date-cell").textContent = data.hireDate;
			document.getElementById("emp-firstname-cell").textContent = data.firstName;
			document.getElementById("emp-lastname-cell").textContent = data.lastName;
			document.getElementById("emp-dept-cell").textContent = data.dept.name;
			document.getElementById("emp-job-cell").textContent = data.job;
			document.getElementById("emp-tel-cell").textContent = data.tel;
			document.getElementById("emp-email-cell").textContent = data.email;
			document.getElementById("emp-salary-cell").textContent = "$" + data.salary;
			document.getElementById("emp-comm-cell").textContent = data.comm;
			
			$("#emp-detail-modal").modal('show');
		});
	}
	
	// 사원번호에 해당하는 사원의 매니저 정보 조회

	function getManagerInfo(empId, event) {
		event.stopPropagation();
		
		ajax("GET", "res2_4.jsp?emp=" + empId, function(data) {
			console.log("관리자", data);
			
			if(data == null) {
				alert("존재하지 않습니다.");
			}
			
			document.getElementById("emp-no-cell").textContent = data.no;
			document.getElementById("emp-date-cell").textContent = data.hireDate;
			document.getElementById("emp-firstname-cell").textContent = data.firstName;
			document.getElementById("emp-lastname-cell").textContent = data.lastName;
			document.getElementById("emp-dept-cell").textContent = data.dept.name;
			document.getElementById("emp-job-cell").textContent = data.job;
			document.getElementById("emp-tel-cell").textContent = data.tel;
			document.getElementById("emp-email-cell").textContent = data.email;
			document.getElementById("emp-salary-cell").textContent = "$" + data.salary;
			document.getElementById("emp-comm-cell").textContent = data.comm;
			
			$("#emp-detail-modal").modal('show');
		});
		
		
	}
	
	// 사원번호에 해당하는 사람의 부학직원 리스트 조회
	function getEmpBabies(empId, event) {
		event.stopPropagation();
		
		ajax("GET", "res2_5.jsp?emp=" + empId, function(data) {
			var rows = "";
			data.forEach(function(emp, index) {
				
				rows += "<tr>";
				rows += "<td>"+emp.no+"</td>";
				rows += "<td>"+emp.firstName+"</td>";
				rows += "<td>"+emp.dept.name+"</td>";
				rows += "<td>"+emp.hireDate+"</td>";
				rows += "</tr>";				
				
			});
			document.querySelector("#emp-baby-table tbody").innerHTML = rows;
			
			$("#emp-list-modal").modal('show')
		});
	}
</script>
</body>
</html>
