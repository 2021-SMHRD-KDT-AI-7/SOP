<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div id="content" class="non_sign inquiry">
        <link rel="stylesheet" href="searchpw.css">	
                <div class="content_header">
                    <h2>��й�ȣ ã��</h2>
                </div>
                <p class="content_summary">��й�ȣ�� ã���� �ϴ� ���̵� �Է��� �ּ���.</p>
                <div class="section section_find">
                    <div class="box6">
                        <div id="divUserId" class="input_box">	
                            <label id="lbUserId" for="userId">���̵� �Է�  </label>			
                            <input type="text" id="md_id" name="md_id">
                        </div>
                    </div>


                    <tr class="tr">
                        <td class="td"> �������     </td>
                           <input type="text" name="mb_birthday" placeholder="�������" >
                   </tr>

                   <br>
                    
                   <tr class="tr">
                        <td class="td"> �޴���ȭ      </td>
    
    
                        <select name="area">
                            <option name="area" value="���ѹα� A">+82</option>
                            <input type="text" name="phone" placeholder="�޴���ȭ��ȣ" >
                            <td align="right"></td>
    
                            <td colspan="2" align="middle"><input type="submit" value="���� �ޱ�"></td>
    
                    </tr>

                    <div class="find_dsc">
                        <h3>���̵� ��ﳪ�� �ʴ´ٸ�? <a href="searchid.html" onclick>���̵� ã�� �ٷΰ���</a></h3>
                    </div>
                </div>
                 
            </div>
</body>
</html>