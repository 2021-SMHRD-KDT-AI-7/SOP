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
.tr{
	height: 50px;
    background-color:whitesmoke;
    
}
.td{
	text-align:right;
	font-size:25px;
}
th{
font-size:30px;
background-color:#389561;
}
#th2{
bgcolor:green;
font-size:20px;
background-color:#389561;
}

input[type="text" i] {
    padding: 6px 6px;
    padding-top: 6px;
    padding-right: 6px;
    padding-bottom: 6px;
    padding-left: 6px;
}
</style>
</head>

<body>


	<form action="../searchCon" method="post">
		<link rel="stylesheet" href="searchid.css">

		<table width="650px">
		<tr>
			<th colspan="3">회원정보에 등록한 휴대전화로 인증</th>
		</tr>
		<tr>	
		
			<th colspan="3" id="th2">※회원정보에 등록한 휴대전화 번호와 입력한 번호가 같아야 인증 완료 </th>
		</tr>
		<tr class="tr">
					<td class="td">이름</td>
					<td colspan="3"><input type="text" name="mb_name"></td>
		</tr>
		<tr class="tr">
					<td class="td">생년월일</td>
					<td colspan="3"><input type="text" name="mb_birthdate" placeholder="ex)yyyymmdd"></td>
		</tr>
		<tr class="tr">
					<td class="td">휴대전화</td>
					<td>
						<select name="area">
							<option name="area" value="대한민국 A">+82</option>
						</select>
						<input type="text" name="mb_phone" placeholder="휴대전화번호">
						<input type="submit" value="인증 받기">
					</td>
					
		</tr>
		</table>
	</form>
</body>

</html>