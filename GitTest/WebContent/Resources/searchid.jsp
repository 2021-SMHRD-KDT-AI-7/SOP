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
	height: 35px;
    background-color:whitesmoke;
    
}
.td{
	text-align:right;
}
th{
font-size:20px;
background-color:#389561;
}
#th2{
bgcolor:green;
font-size:15px;
background-color:#389561;
}


</style>
</head>

<body>


	<form action="../searchCon" method="post">
		<link rel="stylesheet" href="searchid.css">

		<table width="650px">
		<tr>
			<th colspan="3">ȸ�������� ����� �޴���ȭ�� ����</th>
		</tr>
		<tr>	
		
			<th colspan="3" id="th2">��ȸ�������� ����� �޴���ȭ ��ȣ�� �Է��� ��ȣ�� ���ƾ� ���� �Ϸ� </th>
		</tr>
		<tr class="tr">
					<td class="td">�̸�</td>
					<td colspan="3"><input type="text" name="mb_name"></td>
		</tr>
		<tr class="tr">
					<td class="td">�������</td>
					<td colspan="3"><input type="text" name="mb_birthdate" placeholder="�������"></td>
		</tr>
		<tr class="tr">
					<td class="td">�޴���ȭ</td>
					<td>
						<select name="area">
							<option name="area" value="���ѹα� A">+82</option>
						</select>
						<input type="text" name="mb_phone" placeholder="�޴���ȭ��ȣ">
						<input type="submit" value="���� �ޱ�">
					</td>
					
		</tr>
		</table>
	</form>
</body>

</html>