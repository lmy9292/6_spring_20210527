<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 	table,th,tr,td{
 		border:1px solid black;
 		border-collapse:collapse;
 		text-align:center;
 	}
</style>
</head>
<body>
	<table>
	<tr style=color:red;>
		<th>글번호</th>
		<th>글제목</th>
		<th>글비번</th>
		<th>작성자</th>
		<th>내용</th>
		<th>작성일자</th>
		<th>조회수</th>
	</tr>	
	<c:forEach var="boardlist" items="${boardList}">
	<tr>
		<td>${boardlist.bnumber}</td>
		<td>${boardlist.btitle}</td>
		<td>${boardlist.bpassword}</td>
		<td>${boardlist.bwriter}</td>
		<td>${boardlist.bcontents}</td>
		<td>${boardlist.bdate}</td>
		<td>${boardlist.bhits}</td>
	</tr>
	</c:forEach>
	</table>
	<a href="./">홈으로</a>
	
	
</body>
</html>