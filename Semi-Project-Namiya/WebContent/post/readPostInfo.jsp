<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.contentView {
	width: 100%;
	height:auto;
	background-color: white;
	white-space: pre-wrap;
	overflow: hidden;
}
</style>
</head>
<body>
	<div class="col-sm-offset-1 col-sm-10">
		<h1 class="lead"><strong style="color:black;">${postVO.pTitle}</strong></h1>
		<hr>
		<div class="row col-sm-10">${postVO.userVO.nickName}</div>
		<div class="row">${postVO.pDate}</div>
		<hr>
		<pre class="contentView"  style="height:auto;">${postVO.pContent}
		</pre>
		<hr>
		<div class="row col-sm-10">
		<c:if test="${postVO.userVO.id==userVO.id}"><!-- 작성자 본인일 경우 수정, 삭제 버튼 보이기 -->
			<form name="deleteForm" action="${pageContext.request.contextPath}/dispatcher" method="post">
				<input type="hidden" name="command" value="DeletePost">
				<input type="hidden" name="pno" value="${postVO.pNo}">
				<input type="button" class="btn btn-primary" value="수정" onclick="goToUpdatePost()"> 
				<input type="button" class="btn btn-warning" value="삭제" onclick="deletePost()">
			</form>
		</c:if>
		</div><!--div class="row col-sm-10"-->
		<div class="row"  align="center">
			<input type="button" class="btn btn-default" value="목록" onclick="backToList()">   
		</div>
	</div><!--div class="col-sm-offset-1 col-sm-10"-->
	
<script type="text/javascript">
 function goToUpdatePost() {
	if(confirm("글을 수정할까요?")){
	location.href="${pageContext.request.contextPath}/dispatcher?command=UpdatePostView&pno="+${postVO.pNo};
	}
 }
 function deletePost() {
	if(confirm("정말로 삭제하시겠어요?\n삭제한 글은 되돌릴 수 없습니다.")){
		document.deleteForm.submit();
	}
		
 }
 function backToList() {
	location.href="${pageContext.request.contextPath}/dispatcher?command=ReadPostList&pno="+${postVO.pNo};	
 }/* 게시판 목록 페이징처리 완료 후 attribute key(pno) 수정할 예정 */
 
</script>	
