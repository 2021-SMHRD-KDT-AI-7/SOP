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
			<h3>ȸ�������� ����� �޴���ȭ�� ����</h3>

			<p>
				ȸ�������� ����� �޴���ȭ ��ȣ�� �Է��� ��ȣ�� ���ƾ� ���� �Ϸ� <br>
				<tr class="tr">
					<td class="td">�̸�</td>
					<td><input type="text" name="mb_name"></td>
				</tr>
				<br>
				<tr class="tr">
					<td class="td">�������</td>
					<input type="text" name="mb_birthdate" placeholder="�������">
				</tr>
				<br>
				<tr class="tr">
					<td class="td">�޴���ȭ</td>

					<select name="area">
						<option name="area" value="���ѹα� A">+82</option>
						<input type="text" name="mb_phone" placeholder="�޴���ȭ��ȣ">
						<td align="right"></td>

						<td colspan="2" align="middle"><input type="submit"
							value="���� �ޱ�"></td>
				</tr>
				<br>
			</p>


		</div>

	</form>
</body>

</html>