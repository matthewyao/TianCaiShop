<%@page import="com.tiancai.util.Constant"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
	String itemCode = request.getParameter("itemCode");
	int itemNum = Integer.parseInt(request.getParameter("itemNum"));
	String userName = request.getParameter("userName");
	String addrId = request.getParameter("chooseAddr");
	
	String orderCode = generateOrderCode();
System.out.println(">>>>>>>>orderCode="+orderCode);
	String orderSql = "INSERT INTO tc_order(orderCode,itemCode,itemNum,username,orderDate,addrId) "+
			"VALUES('"+orderCode+"','"+itemCode+"',"+itemNum+",'"+userName+"',NOW(),'"+addrId+"')";
System.out.println(">>>>>>>>orderSql="+orderSql);
	JdbcTemplate.excute(orderSql);
%>
<%!
	private String generateOrderCode() {
		//��ȡyyyyMMdd��ʽ�������ַ���
		String dateString = new SimpleDateFormat("yyyyMMdd").format(new Date());
		String queryMaxOrderCodeSql = "SELECT MAX(orderCode) FROM tc_order";
		String maxOrderCode;
		//���������û�����ݣ��򷵻�Ĭ�϶������
		try{
			maxOrderCode = JdbcTemplate.queryForString(queryMaxOrderCodeSql);
		} catch (Exception e){
			return Constant.ORDER_CODE_PREFIX + dateString + "00001";
		}
		int maxOrderNum = Integer.parseInt(maxOrderCode.substring(maxOrderCode.length() - 5, maxOrderCode.length()));
		String newOrderNum = String.valueOf(maxOrderNum + 1);
		//��������� : O2015061500015
		String newOrderCode = Constant.ORDER_CODE_PREFIX + dateString + prefixOfOrderCode(5 - newOrderNum.length()) +newOrderNum;
		return newOrderCode;
	}

	private String prefixOfOrderCode(int loop){
		String prefixStr = "";
		for(int i=0;i<loop;i++) {
			prefixStr += "0";
		}
		return prefixStr;
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