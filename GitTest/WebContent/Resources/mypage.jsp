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

				<a href="http://localhost:8081/GitTest/Resources/index.jsp"
					target="_blank" title="SOP 홈페이지">
					<img src="assets/images/logo1.png" class="image"></a>

			</div>
		</header>

		<!--회원가입 부분-->
		<form action="../UpdateMypageServiceCon" method="post">
		<section class="signup-wrap">

			<div>
				<!--아이디,비번,비번재확인-->

				<h3>아이디</h3>
				<span class="signup-input"> <input id="mb_id" type="text" name="mb_id" value=<%=info.getMb_id() %> readonly></input>
				<a></a>
				</span>

				<h3>비밀번호</h3>
				<span class="signup-input">
					<input id="mb_pwd" type="password" name="mb_pwd"></input>
					<span class="pw-lock"></span>
				</span>
				<span class="signup-input">
					<input id="mb_pwd1" type="password"></input>
					<span class="pw-lock"></span>
					<button type="button" onclick="test()">비밀번호 확인</button>
				</span>



			</div>

			<div style="margin-top: 35px;">
				<!--이름,닉네임,주소,생년월일,성별,이메일-->
				<h3>이름</h3>
				<span class="signup-input"> <input id="mb_name" type="text" name="mb_name" value=<%=info.getMb_name() %>></input>
				</span>

				<h3>닉네임</h3>
				<span class="signup-input"> <input id="mb_nickname" type="text" name="mb_nickname" value=<%=info.getMb_nickname() %>></input>
				</span>
				
				<h3>획득 포인트</h3>
				<span class="signup-input"> <input id="mb_point" type="text" name="mb_point" value=<%=info.getMb_point() %> readonly></input>
				</span>
				
				<h3>등급</h3>
				<span class="signup-input"> <input id="mb_grade" type="text" name="mb_grade" value=<%=info.getMb_grade() %> readonly></input>
				</span>
				

				<h3>생년월일</h3>
				<span style="display: inline-block; width:460px;"> <span class="signup-input-birth"> 
				<input id="mb_birthdate" type="text" name="mb_birthdate" maxlength="8" minlength="8" placeholder="8자 입력(ex19990101)" value=<%=info.getMb_birthdate() %>></input>
				</span> 
				
				<h3>주소</h3>
				<span class="signup-input"> <input id="mb_addr" name="mb_addr"type="text" value=<%=info.getMb_addr() %>></input>
				</span>
				
				<span class="choice">
					<h3>이메일</h3> 
				</span> 
				<span class="signup-input">
				 <input id="mb_email" type="text" name="mb_email" placeholder="이메일 입력" value=<%=info.getMb_email() %>></input>
				</span>

			</div>

			<div style="margin-top: 35px;">
				<!--휴대전화-->
				<h3>휴대전화</h3>
				<div style="display: flex;">
					<span class="signup-input"
						style="width: 100%; margin: 10px 0px 0px 0px"> 
						<input id="mb_phone" type="text" name="mb_phone" placeholder="전화번호 입력" value=<%=info.getMb_phone() %>></input>
					</span> 
				</div>

			</div>

			<div>
				<!--가입하기-->
				<div class="signup-btn-wrap">
					<input type ="submit" value ="정보 수정하기">
					<button type="button" onclick="history.back();">뒤로가기</button>
					<!-- <button id="signup-btn">가입하기</button>  -->
				</div>
			</div>
		</section>
		</form>

		<!--저작권 정보-->
		<footer>
			<div class="copyright-wrap" style="font-size: 12px;">
				<span>이용약관 | 개인정보처리방침 | 책임의 한계와 고지 | 회원정보 고객센터</span>
				<div> sop.com </div>
			</div>
		</footer>

	</div>
	
	<script type="text/javascript">
		function test(){
			var p1 = document.getElementById('mb_pwd').value;
			var p2 = document.getElementById('mb_pwd1').value;
			if(p1 != p2){
				alert("비밀번호가 일치 하지 않습니다");
				return false;
			}else{
				alert("비밀번호가 일치합니다");
				return true;
			}
		}
	</script>

</body>
</html>