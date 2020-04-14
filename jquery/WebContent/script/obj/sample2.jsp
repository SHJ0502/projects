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
	function Person() {
		console.log("this?", this);
		this.name = "홍길동";
		this.id = "hong";
		this.pwd = 1234;
	}
	
	var obj1 = Person();			// Person함수를 실행한다. Person함수내의 수행문이 실행됨
									// this에 Window객체가 전달된다.
									//  * 함수가 실행되면 Window객체에 name, id, pwd 프로퍼티가 추가된다.
	
	var obj2 = new Person();		// 빈객체를 만들고, Person함수에 전달한다.
									// 전달된 객체는 this로 사용할 수 있다.
									// Person함수를 실행한다. Person함수내의 수행문이 실행된다. 
									// 최종적으로 생성했던 객체가 반환된다.
									// * 새로 생성된 객체에 name, id, pwd 프로퍼티가 추가된다.
	console.log("객체1", obj1);
	// obj1은 undefined 출력 <--- 반환값이 정의되지 않았음
	console.log("객체2", obj2);
	// obj2는 Person 객체 출력된다.
	
</script>
</body>
</html>
