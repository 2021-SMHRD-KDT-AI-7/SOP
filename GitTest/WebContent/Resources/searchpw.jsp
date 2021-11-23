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
                    <h2>비밀번호 찾기</h2>
                </div>
                <p class="content_summary">비밀번호를 찾고자 하는 아이디를 입력해 주세요.</p>
                <div class="section section_find">
                    <div class="box6">
                        <div id="divUserId" class="input_box">	
                            <label id="lbUserId" for="userId">아이디 입력  </label>			
                            <input type="text" id="md_id" name="md_id">
                        </div>
                    </div>


                    <tr class="tr">
                        <td class="td"> 생년월일     </td>
                           <input type="text" name="mb_birthday" placeholder="생년월일" >
                   </tr>

                   <br>
                    
                   <tr class="tr">
                        <td class="td"> 휴대전화      </td>
    
    
                        <select name="area">
                            <option name="area" value="대한민국 A">+82</option>
                            <input type="text" name="phone" placeholder="휴대전화번호" >
                            <td align="right"></td>
    
                            <td colspan="2" align="middle"><input type="submit" value="인증 받기"></td>
    
                    </tr>

                    <div class="find_dsc">
                        <h3>아이디가 기억나지 않는다면? <a href="searchid.html" onclick>아이디 찾기 바로가기</a></h3>
                    </div>
                </div>
                 
            </div>
</body>
</html>