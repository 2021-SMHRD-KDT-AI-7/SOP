<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form class="comment-insert-form" action="comment_insert.do" method="post">
				<!-- 덧글 그룹 -->
				<input type="hidden" name="ref_group" value="${dto.num }" />
				<!-- 덧글 대상 -->
				<input type="hidden" name="target_id" value="${tmp.writer }" />
				<input type="hidden" name="comment_group" value="${tmp.comment_group }" />
				<textarea name="content"><c:if test="${empty id }">로그인이 필요합니다.</c:if></textarea>
				<button type="submit">등록</button>
</form>
</body>
</html>