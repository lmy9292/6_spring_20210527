<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>boardwrite.jsp</h2>
	<div style="background-color:skyblue">
	<form action="boardwrite" method="post">
	글제목:<input type="text" name="btitle"><br>
	비밀번호:<input type="text" name="bpassword"><br>
	작성자:<input type="text" name="bwriter"><br>
	내용:<textarea  name="bcontents" rows="5"></textarea><br>
	<input type="submit" value="등록">
	</form>
	<a href="./">홈으로</a>
	</div>
	
	<div style="background-color:yellow">
	<h2>파일 첨부용 글쓰기</h2>
	
	<form action="boardwritefile" method="post" enctype="multipart/form-data">
	글제목:<input type="text" name="btitle"><br>
	비밀번호:<input type="text" name="bpassword"><br>
	작성자:<input type="text" name="bwriter"><br>
	내용:<textarea  name="bcontents" rows="5"></textarea><br>
	파일:<input type="file" name="bfile"><br>
	<input type="submit" value="작성">
	</form>
	</div>
	
</body>
</html>