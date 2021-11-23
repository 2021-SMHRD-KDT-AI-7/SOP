<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
div {
	border: 5px solid green;
	margin: 5px;
	padding: 5px;
}
</style>
</head>

<body>


	<form action="../searchCon" method="post">
		<link rel="stylesheet" href="searchid.css">

		<div>
			<h3>회원정보에 등록한 휴대전화로 인증</h3>

			<p>
				회원정보에 등록한 휴대전화 번호와 입력한 번호가 같아야 인증 완료 <br>
				<tr class="tr">
					<td class="td">이름</td>
					<td><input type="text" name="mb_name"></td>
				</tr>
				<br>
				<tr class="tr">
					<td class="td">생년월일</td>
					<input type="text" name="mb_birthdate" placeholder="생년월일">
				</tr>
				<br>
				<tr class="tr">
					<td class="td">휴대전화</td>

					<select name="area">
						<option name="area" value="대한민국 A">+82</option>
						<input type="text" name="mb_phone" placeholder="휴대전화번호">
						<td align="right"></td>

						<td colspan="2" align="middle"><input type="submit"
							value="인증 받기"></td>
				</tr>
				<br>
			</p>


		</div>

	</form>
</body>

</html>