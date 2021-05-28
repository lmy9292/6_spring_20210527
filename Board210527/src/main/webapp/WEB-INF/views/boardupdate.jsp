<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function updatefn(){
		var passwordConfirm = document.getElementById('pwd').value;
		var password = '${boardpw.bpassword}';
		if(password == passwordConfirm){
			updateform.submit();
		}else{
			alret('비밀번호가 틀립니다')
		}
	}
</script>
</head>
<body>
	<h2>boardupdate.jsp</h2>
	<form action="updateprocess" method="post" name="updateform">
	글번호:<input type="text" name="bnumber"><br>
	글제목:<input type="text" name="btitle"><br>
	비밀번호:<input type="text" name="bpassword"><br>
	작성자:<input type="text" name="bwriter"><br>
	내용:<textarea name="bcontents" rows="5"></textarea><br>
	날짜:<input type="sysdate" name="bdate"><br>
	조회수:<input type="number" name="bhits"><br>
	<input type="submit" value="수정">
	</form>
	<a href="./">홈으로</a>
</body>
</html>