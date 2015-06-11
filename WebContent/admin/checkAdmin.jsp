<%@page import="java.util.Date"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title></title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String sql = "select username from tc_sys_user where username='" + username + "' and password='" + password + "'";
		username = JdbcTemplate.queryForString(sql);
		if( ! "".equals(username)) {
System.out.println(">>>>>>>>>>user : "+username+" login admin success!At" + new Date().toString());
			request.getRequestDispatcher("./default.jsp").forward(request, response);
			session.setAttribute("username", username);
			//暂时默认角色为超级管理员
			session.setAttribute("role", 1);
		} else {
System.out.println(">>>>>>>>>>user : "+username+" login admin failed!At" + new Date().toString());
			request.getRequestDispatcher("./adminLogin.jsp").forward(request, response);
		}
	%>
</body>
</html>