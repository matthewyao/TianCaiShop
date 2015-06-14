<%@page import="com.tiancai.util.BeanFactory"%>
<%@page import="com.tiancai.bean.Commodity"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tiancai.bean.Address"%>
<%@page import="java.util.List"%>
<%
	String itemCode = request.getParameter("itemCode");
	String color = request.getParameter("color");
	String size = request.getParameter("size");
	
	String commodifySql = "SELECT * FROM commodity WHERE itemCode='"+itemCode+"' AND color='"+color+"' AND size='"+size+"'";
	Commodity c = new Commodity();
	ResultSet rs = JdbcTemplate.excuteQuery(commodifySql);
	while(rs.next()){
		c = BeanFactory.buildCommodity(rs);
	}
	
	String userName = session.getAttribute("username").toString();
	List<Address> addrList = new ArrayList<Address>();
	String addrSql = "SELECT * FROM tc_addr WHERE userName='"+userName+"'";
	rs = JdbcTemplate.excuteQuery(addrSql);
	while(rs.next()){
		Address a = new Address();
		a = BeanFactory.buildAddress(rs);
		addrList.add(a);
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
	<div id="buyItem">
		<table>
			<tr>
				<th>货品编码</th>
				<th>商品编码</th>
				<th>性别</th>
				<th>大小</th>
				<th>颜色</th>
				<th>剩余数量</th>
			</tr>
			<tr>
				<td><%=c.getItemCode() %></td>
				<td><%=c.getCommodityCode() %></td>
				<td><%=c.getSex() %></td>
				<td><%=c.getSize() %></td>
				<td><%=c.getColor() %></td>
				<td><%=c.getRemainNum() %></td>
			</tr>
		</table>
	</div>
</body>
</html>