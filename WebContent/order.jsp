<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
	String itemCode = request.getParameter("itemCode");
	int itemNum = Integer.parseInt(request.getParameter("itemNum"));
	String userName = request.getParameter("userName");
	int addrId = Integer.parseInt(request.getParameter("chooseAddr"));
	
	String orderCode = generateOrderCode();
	
	String orderSql = "INSERT INTO tc_order(orderCode,itemCode,itemNum,username,orderDate,addrId) "+
			"VALUES('O2015061500001','NZ201506150001',2,'yk',NOW(),1)";
	
	
%>
<%!
	private String generateOrderCode() {
		//获取yyyymmdd格式的日期字符串
		String dateString = new SimpleDateFormat("yyyymmdd").format(new Date());
		return "";
	}
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