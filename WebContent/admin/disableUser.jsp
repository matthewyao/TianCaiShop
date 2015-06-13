<%@page import="com.tiancai.util.JdbcTemplate"%>
<%
	String username = request.getParameter("username");
	int type = Integer.parseInt(request.getParameter("type"));
	String sql = "UPDATE `user` SET disabled="+type+" WHERE username='"+username+"'";
	JdbcTemplate.excute(sql);
	response.sendRedirect("./userManager.jsp?pageNum=0");
%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>

</body>
</html>