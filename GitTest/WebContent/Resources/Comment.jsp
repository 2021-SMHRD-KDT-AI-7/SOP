<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* �� ������ ��輱 ǥ�� */
	.content{
		border: 1px dotted #cecece;
	}
	/* �� ����ȿ� �ִ� �̹����� ũ�� ���� */
	.content img{
		max-width: 100%;
	}
	/* ��ۿ� ���õ� css */
	.comments ul{
		padding: 0;
		margin: 0;
		list-style-type: none;
	}
	.comments ul li{
		border-top: 1px solid #888; /* li �� ���� ��輱 */
	}
	.comments dt{
		margin-top: 5px;
	}
	.comments dd{
		margin-left: 26px;
	}
	.comments form textarea, .comments form button{
		float: left;
	}
	.comments li{
		clear: left;
	}
	.comments form textarea{
		width: 85%;
		height: 100px;
	}
	.comments form button{
		width: 15%;
		height: 100px;
	}
	/* ��ۿ� ����� �ٴ� ���� �������� �ϴ� �����. */
	.comment form{
		display: none;
	}
	.comment{
		position: relative;
	}
	.comment .reply_icon{
		width: 8px;
		height: 8px;
		position: absolute;
		top: 10px;
		left: 30px;
	}
	.comments .user-img{
		width: 20px;
		height: 20px;
		border-radius: 50%;
	}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="comments">
		<!-- ���ۿ� ����� �ۼ��� �� �ִ� �� -->
		<div class="comment_form">
			<form action="comment_insert.do" method="post"> 
			<!-- ����� �׷��ȣ�� ������ �۹�ȣ�� �ȴ�. -->
				<input type="hidden" name="ref_group" value="${dto.num }"/>
			<!-- ����� ����ڴ� ������ �ۼ��ڰ� �ȴ�. -->
				<input type="hidden" name="target_id" value="${dto.writer }"/>
				<textarea rows="content"><c:if test="${empty id }">�α����� �ʿ��մϴ�.</c:if></textarea>
				<button type="submit">���</button>
            </form>
		</div>
   </div>
</body>
</html>