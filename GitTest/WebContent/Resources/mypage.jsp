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
				<a href="http://localhost:8081/GitTest/Resources/index.html"
					target="_blank" title="SOP Ȩ������">
					<img src="logo1.png" class="image"></a>
			</div>
		</header>

		<!--ȸ������ �κ�-->
		<form action="../JoinServiceCon" method="post">
		<section class="signup-wrap">

			<div>
				<!--���̵�,���,�����Ȯ��-->

				<h3>���̵�</h3>
				<span class="signup-input"> <input id="mb_id" type="text" name="mb_id" value=<%=info.getMb_id() %> readonly></input>
				<a></a>
				</span>

				<h3>��й�ȣ</h3>
				<span class="signup-input"> <input id="mb_pwd" type="hidden" name="mb_pwd"></input>
					<span class="pw-lock"></span>
				</span>



			</div>

			<div style="margin-top: 35px;">
				<!--�̸�,�г���,�ּ�,�������,����,�̸���-->
				<h3>�̸�</h3>
				<span class="signup-input"> <input id="mb_name" type="text" name="mb_name"></input>
				</span>

				<h3>�г���</h3>
				<span class="signup-input"> <input id="mb_nickname" type="text" name="mb_nickname"></input>
				</span>
				

				<h3>�������</h3>
				<span style="display: flex;"> <span class="signup-input-birth"> 
				<input id="mb_birthdate" type="text" name="mb_year" placeholder="��(4��)"></input>
				</span> <span class="signup-input-birth" style="margin-left: 10px;">
						<select id="mb_birthdate" class="selectbox" name="mb_month" onchange="">
							<option value="month">��</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select>
				</span> <span class="signup-input-birth" style="margin-left: 10px;">
						<input name = "mb_day" id="mb_birthdate" type="text" placeholder="��"></input>
				</span>
				</span>
				
				<h3>�ּ�</h3>
				<span class="signup-input"> <input id="mb_addr" name="mb_addr"type="text"></input>
				</span>
				
				<span class="choice">
					<h3>���� Ȯ�� �̸���</h3> 
				</span> 
				<span class="signup-input">
				 <input id="mb_email" type="text" name="mb_email" placeholder="�̸��� �Է�"></input>
				</span>

			</div>

			<div style="margin-top: 35px;">
				<!--�޴���ȭ-->
				<h3>�޴���ȭ</h3>
				<div style="display: flex;">
					<span class="signup-input"
						style="width: 100%; margin: 10px 0px 0px 0px"> 
						<input id="mb_phone" type="text" name="mb_phone" placeholder="��ȭ��ȣ �Է�"></input>
					</span> 
				</div>

			</div>

			<h3>����</h3>
			<span class="signup-input"> 
			<select id="mb_gender" class="selectbox" name="mb_gender" >
					<option value="gender">����</option>
					<option value="M">����</option>
					<option value="F">����</option>
			</select>
			</span>

			<div>
				<!--�����ϱ�-->
				<div class="signup-btn-wrap">
					<input type ="submit" value ="ȸ������">
					<!-- <button id="signup-btn">�����ϱ�</button>  -->
				</div>
			</div>
		</section>
		</form>

		<!--���۱� ����-->
		<footer>
			<div class="copyright-wrap" style="font-size: 12px;">
				<span>�̿��� | ��������ó����ħ | å���� �Ѱ�� ���� | ȸ������ ������</span>
				<div> sop.com</div>
			</div>
		</footer>

	</div>

</body>
</html>