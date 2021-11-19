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
	//post ��� ���ڵ�
	request.setCharacterEncoding("EUC-KR");

	//�� �޾ƿͼ� ������ �־��ֱ�
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
	
	
	// 1. oracle���� �����ϴ� ojdb6.jar lib ������ import�ϱ�
	// 2. ���� �ε� ���
	// class ã�� : ��Ŭ������ DB���̿� ��θ� ������ִ� class
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// DB�� ������ �� �ִ� �ּ�, ���̵�, ��й�ȣ
	String db_ur1 ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
	String db_id ="campus_c_c_1111";
	String db_pw ="smhrd3";
	
	// DB�� ����, ������ �Ǹ� Connection��ü�� ��ȯ
	Connection conn = DriverManager.getConnection(db_ur1, db_id, db_pw);
	
	// SQL�� �ۼ� -> ���ϴ� ���� ���� ���� ? ���
	//String sql = "insert into member2 values(id,pw,name)";
	String sql = "insert into T_MEMBER values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	// DB�� ������ �Ǿ��� �� conn�� �ִ� prepareStatement�޼ҵ带 ����ؼ�
	// sql ���� DB�� ���� (���� ���� �� prepareStatement ��ü�� ��ȯ)
	PreparedStatement psmt = conn.prepareStatement(sql);
	
	// ?�� �� ä��� (?�� �ε��� ��ȣ, ���� ��)
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
	
	// SQL ����
	// executeUpdate : �������� int Ÿ���� ���� ��ȯ, select ���� ������ �ٸ� ������ ������ �� ����ϴ� �Լ�
	int cnt = psmt.executeUpdate();
	
	// DB�� �ݱ� -> �α����� �Ϸ� �Ǿ��� ���� �ݱ� - �������� �ݾ��ֱ�
	if(psmt != null)psmt.close();
	if(conn != null)conn.close();
	
	if(cnt>0){
		System.out.println("ȸ������ ����");
	}else{
		System.out.println("ȸ������ ����");
	}
	
	//�������� ������� main.jsp�� �̵�
	response.sendRedirect("index.html");
	
%>


</body>
</html>