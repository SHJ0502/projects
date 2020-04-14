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
</head>
<body>
<div class="container">

</div>
<script type="text/javascript">
	// 객체 리터럴로 객체 생성하기
	var obj1 = {};					// 빈 객체 생성
	console.log("객체1", obj1);
	
	// 프로퍼티를 가진 객체를 객체 리터럴로 생성하기
	var obj2 = {name:"홍길동", age:30, married:false, family:null, skill:['java', 'c', 'c++', 'python']}
	console.log("객체2", obj2);
	
	// 프로퍼티를 가진 객체를 객체 리터럴로 생성하기
	var obj3 = {
			name:'이순신',
			age: 20,
			married: false,
			family:['아버지', '어머니', '동생'],
			skill: null
	}
	console.log("객체3", obj3);
	
	// 빈 객체를 만들고 프로퍼티를 추가하기
	var obj4 = {};
	obj4.name = '김유신';
	obj4["age"] = 40;
	obj4["married"] = true;
	obj4.family = ['마누라', '아들', '딸'];
	obj4.skill = ['c#', 'hadoop', 'java', 'react', 'vue.js', 'php', 'android'];
	console.log(obj4);
	
	// 빈 객체를 만들고 프로퍼티를 추가하기 
	var obj5 = {};
	obj5.name = '유관순';
	obj5["age"] = 18;
	obj5["married"] = false;
	obj5.family = ['아버지', '어머니', '동생'];
	obj5.skill = ['c#'];
	console.log(obj5);
	
	var productName = "맥프로";
	var locations = ["서울", "인천", "부산"];
	var amounts = [1000, 500, 700];
	
	for (var i=0; i<3; i++) {
		var obj = {};
		obj.name = productName;
		obj.loc = locations[i];
		obj.qty = amounts[i];
		
		console.log("상품배송정보", obj);
	}
</script>
</body>
</html>
