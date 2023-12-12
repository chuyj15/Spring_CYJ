<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원목록</h1>
	
	<table border="1">
		<tr>
			<th>회원번호</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>이메일</th>
			<th>등록일자</th>
			<th>수정일자</th>
		</tr>
		<c:forEach items="${userList}" var="user">
			<tr>
				<td>${user.userNo}</td>		
					<td width="300"><a href="${ pageContext.request.contextPath }/user/update?userNo=${user.userNo }">${user.userId}	</a> </td>		
				<td align="center" width="120">${user.userPw}</td>		
				<td align="center" width="120">${user.name}</td>		
				<td align="center" width="120">${user.email}</td>		
<%-- 				<td align="center">${board.regDate}</td>		 --%>
				<td align="center">
					<fmt:formatDate value="${user.regDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>		
				<td align="center">${user.updDate}</td>		
			</tr>
		</c:forEach>
	</table>
</body>
</html>






