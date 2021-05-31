<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function update(){
		var pwd = document.getElementById('pwd').value;
		var bpassword = '${boardUpdate.bpassword}';
		if(pwd == bpassword){
			updateform.submit();
		}else{
			aler	t('비밀번호가 틀립니다')
		}
	}
</script>
</head>
<body>
	<h2>boardupdate.jsp</h2>
	
	<form action="updateprocess" method="post" name="updateform">
	<!-- 글번호를 안보여주려고 할 때는 hidden 타입으로 하면 안보여지게 된다 -->
	글번호:<input type="hidden" name="bnumber" value="${boardUpdate.bnumber}"readonly><br>
	글제목:<input type="text" name="btitle"value="${boardUpdate.btitle}"><br>
	비밀번호:<input type="text" name="bpassword" id="pwd"><br>
	작성자:<input type="text" name="bwriter"value="${boardUpdate.bwriter}"readonly><br>
	내용:<textarea name="bcontents" rows="5">${boardUpdate.bcontents}</textarea><br>
	<input type="button" onclick="update()" value="수정">
	
	</form>
	<a href="./">홈으로</a>
</body>
</html>