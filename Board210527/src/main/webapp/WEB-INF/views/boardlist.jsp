<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 	table,tr,th,td{
 		border:1px solid black;
 		border-collapse:collapse;
 		text-align:center;
 	}
</style>
</head>
<body>
	<h2>boardlist.jsp</h2>
	
	<!--검색창 만들기  -->
	<form action="search" method="get">
		<select name="searchtype">
			<option value="btitle">제목</option>
			<option value="bwriter">작성자</option>
		</select>
		<input type="text" name="keyword" placeholder="검색어입력">
		<input type="submit" value="검색">
	</form>
	
	
	<table>
	<tr style=color:red;>
		<th>글번호</th>
		<th>제목</th>
		<th>비밀번호</th>
		<th>작성자</th>
		<th>내용</th>
		<th>작성일자</th>
		<th>조회수</th>
	</tr>	
	<c:forEach var="board" items="${boardList}">
	<tr>
		<td>${board.bnumber}</td>
		<td><a href="boardview?bnumber=${board.bnumber}">${board.btitle}</a></td>
		<td>${board.bpassword}</td>
		<td>${board.bwriter}</td>
		<td>${board.bcontents}</td>
		<td>${board.bdate}</td>
		<td>${board.bhits}</td>
	</tr>
	</c:forEach>
	</table>
	<a href="./">홈으로</a><br>
	<a href="writepage">글쓰기화면</a>
	
	
	
</body>
</html>