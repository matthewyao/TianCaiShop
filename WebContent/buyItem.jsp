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
System.out.println(">>>>commoditySql:" + commodifySql);
	Commodity c = new Commodity();
	ResultSet rs = JdbcTemplate.excuteQuery(commodifySql);
	c = BeanFactory.buildCommodity(rs);
	//TODO:要删除
	String userName = "";
	try{
		userName = session.getAttribute("username").toString();
	} catch (Exception e){
		userName = "yk";
	}
	
	String addrSql = "SELECT * FROM tc_addr WHERE userName='"+userName+"'";
System.out.println(">>>>addrSql:" + addrSql);

	rs = JdbcTemplate.excuteQuery(addrSql);
	List<Address> addrList = BeanFactory.buildAddressList(rs);
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