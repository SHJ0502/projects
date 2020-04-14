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
  		
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>필터 메소드 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<h3>시험 성적</h3>
			<table class="table">
				<thead>
					<tr>
						<th><input type="checkbox" id="ckbox-all"></th>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="ck"></td>
						<td>강감찬</td>
						<td>35</td>
						<td>70</td>
						<td>50</td>
						<td><button class="btn btn-danger btn-xs">삭제</button></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ck"></td>
						<td>김유신</td>
						<td>80</td>
						<td>88</td>
						<td>91</td>
						<td><button class="btn btn-danger btn-xs">삭제</button></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ck"></td>
						<td>류관순</td>
						<td>67</td>
						<td>87</td>
						<td>71</td>
						<td><button class="btn btn-danger btn-xs">삭제</button></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ck"></td>
						<td>이순신</td>
						<td>27</td>
						<td>41</td>
						<td>38</td>
						<td><button class="btn btn-danger btn-xs">삭제</button></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="ck"></td>
						<td>홍길동</td>
						<td>60</td>
						<td>50</td>
						<td>40</td>
						<td><button class="btn btn-danger btn-xs">삭제</button></td>
					</tr>
				</tbody>
			</table>
			
			<div class="text-right">
				<button class="btn btn-default btn-lg" id="btn-del-all">전체삭제</button>
				<button class="btn btn-default btn-lg" id="btn-del-selected">선택삭제</button>
				<button class="btn btn-default btn-lg" id="btn-reset">초기화</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	// 1.삭제버튼을 클릭하면 해당 행이 삭제된다.
	$("tbody button").click(function() {
		//console.log("this의 값", this);
		//$(".table tr > td:eq(5)").closest('tr').remove();
		$(this).closest("tr").remove();
	});
	// 2.전체삭제 버튼을 클릭하면 모든 행이 삭제된다.
	$("#btn-del-all").click(function() {
		$("tbody").empty();
	
	});
	
	// 3.선택삭제 버튼을 클릭하면 체크된 행이 삭제된다.
	$("#btn-del-selected").click(function() {
		/*
		var value = $("[name=ck]:checked").prop('checked');
		if(value == true) {
			$("[name=ck]:checked").parents('tr').remove();
		}
		*/
		
		$('tr:has(:checkbox:checked)').remove();
		
	});
	// 4.thead의 체크박스의 상태가 바뀔때마다 각 행의 체크박스 상태가 변경된다.
	$("#ckbox-all").change(function() {
		/*
		var value = $("#ckbox-all:checked").prop('checked');
		if (value) {
			
		} else {
			
		}
		*/
		$("[name='ck']").prop("checked", $(this).prop('checked'));
	});
	// 5.초기화버튼을 클릭하면 현재 페이지를 리로딩한다.
	
	$("#btn-reset").click(function() {
		location.reload();
	});
</script>
</body>
</html>