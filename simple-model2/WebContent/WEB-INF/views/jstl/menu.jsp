<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<p>현재 위치 : <strong>${position }</strong></p>
	<div class="item-group">
		<a href="c5-home.hta" class="list-group-item ${position eq 'home' ? 'active': '' }">홈</a>
		<a href="c5-course.hta" class="list-group-item ${position eq 'course' ? 'active': '' }">개설과정</a>
		<a href="c5-help.hta" class="list-group-item ${position eq 'help' ? 'active': '' }">고객센터</a>
	</div>
</div>