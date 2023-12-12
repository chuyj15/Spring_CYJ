<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<c:forEach items="${boardList}" var="board">
	<c:out value="${board.title}"/> <br>
	<c:out value="${board.writer}"/> <br>
	<c:out value="${board.content}"/> <br>
</c:forEach>

<hr>

${board.title }
${board.writer }
${board.content }

<hr>

${gallery.title }
${gallery.writer }
${gallery.content }

</body>
</html>
