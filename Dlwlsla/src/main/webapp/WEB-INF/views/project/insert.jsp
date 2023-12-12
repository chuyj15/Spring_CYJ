<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 추가</title>
</head>
<body>
	<h1>프로젝트 추가</h1>
	
	<form action="${pageContext.request.contextPath }/project/insert" method="POST">
		<label>프로젝트 이름</label>
		<input type="text" name="pName">
		<label>프로젝트 설명</label>
		<textarea rows="3" cols="10" name="pDes"></textarea>
		<label>프로젝트 시작 날짜</label>
		<input type="submit">
	</form>
</body>
</html>