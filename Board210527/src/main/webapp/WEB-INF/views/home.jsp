<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<h2>home.jsp</h2>
<a href ="writepage">글쓰기화면</a><br>
<!--목록 링크를 클릭하면 단순히 boardlist.jsp로 이동하는 것이 아니라 DB에서 데이터를 가져와서 boardlist.jsp에 출력  -->
<a href ="boardlist">글목록</a><br>
</body>
</html>
