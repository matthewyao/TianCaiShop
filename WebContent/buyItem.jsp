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
   <!-- Bootstrap core CSS -->
    <link href="./admin/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="./admin/css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="./admin/font-awesome/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<form action="./order.jsp" method="get">
		<input type="hidden" name="itemCode" value=<%=itemCode %>/>
		<input type="hidden" name="userName" value=<%=userName %>/>
		<div class="row">
		<!-- text-center //让div居中 -->
			<div class="col-lg-8">
				<table class="table table-bordered table-hover tablesorter">
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
			<!-- 选择地址 -->
			<div class="col-lg-8">
				<table class="table table-bordered table-hover tablesorter">
						<tr>
							<th>选用地址</th>
							<th>地址ID</th>
							<th>地址详细</th>
							<th>是否默认</th>
							<th>邮编</th>
							<th>收货人</th>
							<th>用户名</th>
						</tr>
					<%for(Address a : addrList) { %>
						<tr>
							<td><input type="radio" name="chooseAddr"  value="<%=a.getAddrId() %>" <% if(a.getIsDefault() == 1) {%>checked<%}%>/></td>
							<td><%=a.getAddrId() %></td>
							<td><%=a.getAddrName() %></td>
							<td><%=a.getIsDefault() %></td>
							<td><%=a.getMailNo() %></td>
							<td><%=a.getReceiveName() %></td>
							<td><%=a.getUsername() %></td>
						</tr>
					<%} %>
				</table>
			</div>
			<!-- 提交 -->
			<div class="col-lg-8">
				<table class="table table-bordered table-hover tablesorter">
						<tr>
							<td>
								<input type="submit" class="btn btn-primary btn-lg" id="btn_buyCommodity" value="购买" />
							</td>
							<td>
								商品数量：<input type="text" name="itemNum" />
							</td>
						</tr>
				</table>
			</div>
		</div>
	</form>
	<!-- 商品信息 -->
	 <!-- JavaScript -->
    <script src="./admin/js/jquery-1.10.2.js"></script>
	
	<script type="text/javascript">
		$("#btn_buyCommodity").click(function(){
			var addrId = $('input[name="chooseAddr"]:checked ').val();
			alert(addrId);
		});
	</script>
		
</body>
</html>