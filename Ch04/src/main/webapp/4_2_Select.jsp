<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.User1Bean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//DB 정보
	String host = "jdbc:mysql://54.180.160.240:3306/khjyo2001";
	String user = "khjyo2001";
	String pass = "1234";
	
	List<User1Bean> users = new ArrayList<>();

	try{
	// 1단계 - JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	
	// 2단계 - 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host,user,pass);
	
	// 3단계 - SQL 실행객체 생성
	Statement stmt = conn.createStatement();
	
	// 4단계 - SQL 실행
	String sql = "SELECT * FROM `USER1`;";
	ResultSet rs = stmt.executeQuery(sql);
	
	
	// 5단계 - 결과셋 처리(Select일 경우)
	while(rs.next()){
		
		User1Bean ub = new User1Bean();
		ub.setUid(rs.getString(1));
		ub.setName(rs.getString(2));
		ub.setHp(rs.getString(3));
		ub.setAge(rs.getInt(4));
	
		users.add(ub);
	 }
	
	// 6단계
	rs.close();
	stmt.close();
	conn.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>4_2_Select.jsp</title>
	<%--
		날짜 : 2021/08/05 
		이름 : 김도은
		내용 : JDBC 프로그래밍 실습하기
	 --%>
</head>
<body>
	<h3>2.JSP Select 실습하기</h3>
	
	<a href=""></a>
	<h4>사용자 목록</h4>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>나이</th>
			<th>관리</th>
		</tr>
		
		<%
		for(User1Bean ub : users){
		 %>
		 
		<tr>
			<th><%= ub.getUid() %></th>
			<th><%= ub.getName() %></th>
			<th><%= ub.getHp() %></th>
			<th><%= ub.getAge() %></th>
			<td>
				<a href="./4_4_Update.jsp?uid=<%= ub.getUid() %>">수정</a>
				<a href="./4_3_Delete.jsp?uid=<%= ub.getUid() %>">삭제</a>
			</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>