<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>boardview.jsp</h2>
	
	글번호:${board.bnumber}<br>
	글제목:${board.btitle}<br>
	비밀번호:${board.bpassword}<br>
	작성자:${board.bwriter}<br>
	내용:${board.bcontents}<br>
	날짜:${board.bdate}<br>
	조회수:${board.bhits}<br>
	<a href="./">홈으로</a>	
	<!-- 수정버튼 만들고 수정기능 구현 -->
	<a href="boardupdate?bnumber=${board.bnumber}">수정</a>
	<!-- 위의 수정링크를 클릭하면 Controller-Service-DAO-DB를 거쳐서 데이터를 가지고 boardupdate.jsp를 출력함
		그리고 boardupdate.jsp에서 수정할 내용을 입력받고 DB에 update 쿼리를 수행해줘야 함. -->	
	
</body>
</html>