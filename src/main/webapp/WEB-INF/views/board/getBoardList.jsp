<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<c:forEach items="${list}" var="board">
	<a href="getBoard?seq=${board.seq }">${board.seq }    ${board.title }</a><br>    
</c:forEach>
  
</body>
</html>