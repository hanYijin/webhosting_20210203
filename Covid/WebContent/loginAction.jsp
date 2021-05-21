<%@page import="java.io.PrintWriter"%>
<%@page import="com.org.covid.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!-- id="객체명" class="자바빈 클래스" scope="범위" *page는 현재의 jsp내에 공유-->
<jsp:useBean id="user" class="com.org.covid.User" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="pw"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		UserDAO uDao = new UserDAO();
	    PrintWriter script = response.getWriter();
		int result=uDao.login(user.getId(), user.getPw());
		if(result==1){
			//PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공'); location.href='main.jsp';");
			script.println("</script>");
		}else if(result==0){
			script.println("<script>alert('비밀번호가 틀립니다.'); history.back();</script>");
		}else if(result==-1){
			script.println("<script>alert('존재하지 않는 아이디입니다.'); history.back();</script>");
		}else if(result==-2){
			script.println("<script>alert('시스템 오류: DB error'); history.back();</script>");
		}
	%>
</body>
</html>