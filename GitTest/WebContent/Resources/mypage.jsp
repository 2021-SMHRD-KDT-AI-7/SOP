<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="join_.css">
</head>
<body>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
%>

<div class="main-signup">
		<!--�������� ���-->
		<header>
			<!--NAVER LOGO-->
			<div class="logo">

				<a href="http://localhost:8081/GitTest/Resources/index.jsp"
					target="_blank" title="SOP Ȩ������">
					<img src="assets/images/logo1.png" class="image"></a>

			</div>
		</header>

		<!--ȸ������ �κ�-->
		<form action="../UpdateMypageServiceCon" method="post">
		<section class="signup-wrap">

			<div>
				<!--���̵�,���,�����Ȯ��-->

				<h3>���̵�</h3>
				<span class="signup-input"> <input id="mb_id" type="text" name="mb_id" value=<%=info.getMb_id() %> readonly></input>
				<a></a>
				</span>

				<h3>��й�ȣ</h3>
				<span class="signup-input">
					<input id="mb_pwd" type="password" name="mb_pwd"></input>
					<span class="pw-lock"></span>
				</span>
				<span class="signup-input">
					<input id="mb_pwd1" type="password"></input>
					<span class="pw-lock"></span>
					<button type="button" onclick="test()">��й�ȣ Ȯ��</button>
				</span>



			</div>

			<div style="margin-top: 35px;">
				<!--�̸�,�г���,�ּ�,�������,����,�̸���-->
				<h3>�̸�</h3>
				<span class="signup-input"> <input id="mb_name" type="text" name="mb_name" value=<%=info.getMb_name() %>></input>
				</span>

				<h3>�г���</h3>
				<span class="signup-input"> <input id="mb_nickname" type="text" name="mb_nickname" value=<%=info.getMb_nickname() %>></input>
				</span>
				
				<h3>ȹ�� ����Ʈ</h3>
				<span class="signup-input"> <input id="mb_point" type="text" name="mb_point" value=<%=info.getMb_point() %> readonly></input>
				</span>
				
				<h3>���</h3>
				<span class="signup-input"> <input id="mb_grade" type="text" name="mb_grade" value=<%=info.getMb_grade() %> readonly></input>
				</span>
				

				<h3>�������</h3>
				<span style="display: inline-block; width:460px;"> <span class="signup-input-birth"> 
				<input id="mb_birthdate" type="text" name="mb_birthdate" maxlength="8" minlength="8" placeholder="8�� �Է�(ex19990101)" value=<%=info.getMb_birthdate() %>></input>
				</span> 
				
				<h3>�ּ�</h3>
				<span class="signup-input"> <input id="mb_addr" name="mb_addr"type="text" value=<%=info.getMb_addr() %>></input>
				</span>
				
				<span class="choice">
					<h3>�̸���</h3> 
				</span> 
				<span class="signup-input">
				 <input id="mb_email" type="text" name="mb_email" placeholder="�̸��� �Է�" value=<%=info.getMb_email() %>></input>
				</span>

			</div>

			<div style="margin-top: 35px;">
				<!--�޴���ȭ-->
				<h3>�޴���ȭ</h3>
				<div style="display: flex;">
					<span class="signup-input"
						style="width: 100%; margin: 10px 0px 0px 0px"> 
						<input id="mb_phone" type="text" name="mb_phone" placeholder="��ȭ��ȣ �Է�" value=<%=info.getMb_phone() %>></input>
					</span> 
				</div>

			</div>

			<div>
				<!--�����ϱ�-->
				<div class="signup-btn-wrap">
					<input type ="submit" value ="���� �����ϱ�">
					<button type="button" onclick="history.back();">�ڷΰ���</button>
					<!-- <button id="signup-btn">�����ϱ�</button>  -->
				</div>
			</div>
		</section>
		</form>

		<!--���۱� ����-->
		<footer>
			<div class="copyright-wrap" style="font-size: 12px;">
				<span>�̿��� | ��������ó����ħ | å���� �Ѱ�� ���� | ȸ������ ������</span>
				<div> sop.com </div>
			</div>
		</footer>

	</div>
	
	<script type="text/javascript">
		function test(){
			var p1 = document.getElementById('mb_pwd').value;
			var p2 = document.getElementById('mb_pwd1').value;
			if(p1 != p2){
				alert("��й�ȣ�� ��ġ ���� �ʽ��ϴ�");
				return false;
			}else{
				alert("��й�ȣ�� ��ġ�մϴ�");
				return true;
			}
		}
	</script>

</body>
</html>