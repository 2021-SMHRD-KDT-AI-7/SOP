<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	//post 방식 인코딩
	request.setCharacterEncoding("EUC-KR");

	//값 받아와서 변수에 넣어주기
	String mb_id = request.getParameter("mb_id");
	String mb_pwd = request.getParameter("mb_pwd");
	String mb_name = request.getParameter("mb_name");
	String mb_nickname = request.getParameter("mb_nickname");
	String mb_birthdate = request.getParameter("mb_birthdate");
	String mb_addr = request.getParameter("mb_addr");
	String mb_point;
	String mb_email = request.getParameter("mb_email");
	String mb_phone = request.getParameter("mb_phone");
	String mb_gender = request.getParameter("mb_gender");
	String mb_path ;
	String mb_grade;	
	String mb_joindate;
	String admin_yn;
	

	System.out.println("mb_id: " +mb_id);
	System.out.println("mb_pwd: " +mb_pwd);
	System.out.println("mb_name: " +mb_name);
	System.out.println("mb_nickname: " +mb_nickname);
	System.out.println("mb_birthdate: " +mb_birthdate);
	System.out.println("mb_addr: " +mb_addr);
	mb_point ="0";
	System.out.println("mb_email: " +mb_email);
	System.out.println("mb_phone: " +mb_phone);
	System.out.println("mb_gender: " +mb_gender);
	System.out.println("mb_phone: " +mb_phone);
	mb_path="0";
	mb_grade="0";
	mb_joindate="0";
	admin_yn="0";
	
	
	// 1. oracle에서 제공하는 ojdb6.jar lib 폴더에 import하기
	// 2. 동적 로딩 방식
	// class 찾기 : 이클립스와 DB사이에 통로를 만들어주는 class
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// DB에 접근할 수 있는 주소, 아이디, 비밀번호
	String db_ur1 ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
	String db_id ="campus_c_c_1111";
	String db_pw ="smhrd3";
	
	// DB에 연결, 연결이 되면 Connection객체로 반환
	Connection conn = DriverManager.getConnection(db_ur1, db_id, db_pw);
	
	// SQL문 작성 -> 변하는 값을 넣을 때는 ? 사용
	//String sql = "insert into member2 values(id,pw,name)";
	String sql = "insert into T_MEMBER values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	// DB에 연결이 되었을 때 conn에 있는 prepareStatement메소드를 사용해서
	// sql 문을 DB에 전달 (전달 성공 시 prepareStatement 객체로 반환)
	PreparedStatement psmt = conn.prepareStatement(sql);
	
	// ?에 값 채우기 (?의 인덱스 번호, 넣을 값)
	psmt.setString(1,mb_id);
	psmt.setString(2,mb_pwd);
	psmt.setString(3,mb_name);
	psmt.setString(4,mb_nickname);
	psmt.setString(5,mb_birthdate);
	psmt.setString(6,mb_addr);
	psmt.setString(7,mb_point);
	psmt.setString(8,mb_email);
	psmt.setString(9,mb_phone);
	psmt.setString(10,mb_gender);
	psmt.setString(11,mb_path);
	psmt.setString(12,mb_grade);
	psmt.setString(13,mb_joindate);
	psmt.setString(14,admin_yn);
	
	// SQL 실행
	// executeUpdate : 수행결과로 int 타입의 값을 반환, select 문을 제외한 다른 구문을 수행할 때 사용하는 함수
	int cnt = psmt.executeUpdate();
	
	// DB문 닫기 -> 로그인이 완료 되었을 때만 닫기 - 역순으로 닫아주기
	if(psmt != null)psmt.close();
	if(conn != null)conn.close();
	
	if(cnt>0){
		System.out.println("회원가입 성공");
	}else{
		System.out.println("회원가입 실패");
	}
	
	//실행결과에 상관없이 main.jsp로 이동
	response.sendRedirect("index.html");
	
%>


</body>
</html>