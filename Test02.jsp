<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
		src="../javascript/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#sendBtn").on("click", function(){
		$("#actionForm").submit();//	"#actionForm을 실행하겠다.
	});
});
</script>
</head>
<body>
<!-- 
	form : 값을 전송하기위한 태그
	action : 값을 보낼 경로
 -->
<form action ="Test02s.jsp" id="actionForm" method="post">
	<input type="text" name="msg" />
	<input type="button" value="send" id="sendBtn" />
</form>
</body>
</html>