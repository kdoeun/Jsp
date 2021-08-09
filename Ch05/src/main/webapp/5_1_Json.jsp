<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/*
		날짜 : 2021/08/09
		이름 : 김도은
		내용 : JSP JSON 데이터 실습하기
		
		Json 데이터
		 - JavaScript Object Notation(자바스크립트 객체 표기법)
		 - 이기종간의 데이터 교환할 때 사용하는 표준 포맷	 
	*/
	
	String jsonData =  "{\"uid\":\"A101\", \"name\":\"김유신\", \"hp\":\"010-1234-1111\", \"age\": 25}";
	out.print(jsonData);
%>