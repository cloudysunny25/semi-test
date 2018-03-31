<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>남이야 잡화점</title>
</head>
<body>
<!-- 홈 화면 main에서 게시물 목록을 보여줄 수 있도록 ReadPostList Controller로 이동 -->
 <jsp:forward page="dispatcher">
 	<jsp:param value="ReadPostList" name="command"/>
 </jsp:forward>
</body>
</html>