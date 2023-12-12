<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
</head>
<body>
	<h1>회원정보 수정</h1>
	
	<form action="${ pageContext.request.contextPath }/user/update" method="POST">
		<input type="hidden" name="userNo" value="${user.userNo}" />
		<table>
			<tr>
				<td><label for="title">아이디</label></td>
				<td><input type="text" name="userId" value="${user.userId}" /></td>
			</tr>
			<tr>
				<td><label for="writer">패스워드</label></td>
				<td><input type="text" name="userPw" value="${user.userPw}" /></td>
			</tr>
			<tr>
				<td><label for="title">이름</label></td>
				<td><input type="text" name="name" value="${user.name}" /></td>
			</tr>
			<tr>
				<td><label for="title">이메일</label></td>
				<td><input type="text" name="email" value="${user.email}" /></td>
			</tr>
		</table>
			<input type="submit" value="수정" />
	</form>
	<form action="${ pageContext.request.contextPath }/user/delete" method="POST">
		<input type="hidden" name="userNo" value="${user.userNo}" />
		<input type="submit" value="삭제" />
	</form>
</body>
</html>