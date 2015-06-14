<%@page import="java.util.ArrayList"%>
<%@page import="com.tiancai.bean.Address"%>
<%@page import="java.util.List"%>
<%
	String itemCode = request.getParameter("itemCode");
	String userName = session.getAttribute("username").toString();
	List<Address> addrList = new ArrayList<Address>();
	 
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
	<div id="buyItem">
		<table>
			<tr>
				<td></td>
			</tr>
		</table>
	</div>
</body>
</html>