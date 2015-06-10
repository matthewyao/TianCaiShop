<%@page import="java.util.Date"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%
	String tel = request.getParameter("tel");
	String sql = "UPDATE tiancai.`user` SET valid=1 WHERE username=" + tel;
	JdbcTemplate.excute(sql);
System.out.println(">>>>>>>>>>valid :"+tel + " succeed At " + new Date().toString() );
	request.getRequestDispatcher("./login.jsp").forward(request, response);
	session.setAttribute("username", tel);
%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>验证账号</title>
</head>
<body>

</body>
</html>