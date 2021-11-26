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
		<!--웹페이지 상단-->
		<header>
			<!--NAVER LOGO-->
			<div class="logo">
				<a href="http://localhost:8081/GitTest/Resources/index.html"
					target="_blank" title="SOP 홈페이지">
					<img src="logo1.png" class="image"></a>
			</div>
		</header>

		<!--회원가입 부분-->
		<form action="../JoinServiceCon" method="post">
		<section class="signup-wrap">

			<div>
				<!--아이디,비번,비번재확인-->

				<h3>아이디</h3>
				<span class="signup-input"> <input id="mb_id" type="text" name="mb_id" value=<%=info.getMb_id() %> readonly></input>
				<a></a>
				</span>

				<h3>비밀번호</h3>
				<span class="signup-input"> <input id="mb_pwd" type="hidden" name="mb_pwd"></input>
					<span class="pw-lock"></span>
				</span>



			</div>

			<div style="margin-top: 35px;">
				<!--이름,닉네임,주소,생년월일,성별,이메일-->
				<h3>이름</h3>
				<span class="signup-input"> <input id="mb_name" type="text" name="mb_name"></input>
				</span>

				<h3>닉네임</h3>
				<span class="signup-input"> <input id="mb_nickname" type="text" name="mb_nickname"></input>
				</span>
				

				<h3>생년월일</h3>
				<span style="display: flex;"> <span class="signup-input-birth"> 
				<input id="mb_birthdate" type="text" name="mb_year" placeholder="년(4자)"></input>
				</span> <span class="signup-input-birth" style="margin-left: 10px;">
						<select id="mb_birthdate" class="selectbox" name="mb_month" onchange="">
							<option value="month">월</option>
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
						<input name = "mb_day" id="mb_birthdate" type="text" placeholder="일"></input>
				</span>
				</span>
				
				<h3>주소</h3>
				<span class="signup-input"> <input id="mb_addr" name="mb_addr"type="text"></input>
				</span>
				
				<span class="choice">
					<h3>본인 확인 이메일</h3> 
				</span> 
				<span class="signup-input">
				 <input id="mb_email" type="text" name="mb_email" placeholder="이메일 입력"></input>
				</span>

			</div>

			<div style="margin-top: 35px;">
				<!--휴대전화-->
				<h3>휴대전화</h3>
				<div style="display: flex;">
					<span class="signup-input"
						style="width: 100%; margin: 10px 0px 0px 0px"> 
						<input id="mb_phone" type="text" name="mb_phone" placeholder="전화번호 입력"></input>
					</span> 
				</div>

			</div>

			<h3>성별</h3>
			<span class="signup-input"> 
			<select id="mb_gender" class="selectbox" name="mb_gender" >
					<option value="gender">성별</option>
					<option value="M">남자</option>
					<option value="F">여자</option>
			</select>
			</span>

			<div>
				<!--가입하기-->
				<div class="signup-btn-wrap">
					<input type ="submit" value ="회원가입">
					<!-- <button id="signup-btn">가입하기</button>  -->
				</div>
			</div>
		</section>
		</form>

		<!--저작권 정보-->
		<footer>
			<div class="copyright-wrap" style="font-size: 12px;">
				<span>이용약관 | 개인정보처리방침 | 책임의 한계와 고지 | 회원정보 고객센터</span>
				<div> sop.com</div>
			</div>
		</footer>

	</div>

</body>
</html>