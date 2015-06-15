<%@page import="com.tiancai.bean.Order"%>
<%@page import="com.tiancai.util.BeanFactory"%>
<%@page import="com.tiancai.util.Constant"%>
<%@page import="com.tiancai.bean.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%@page import="com.tiancai.util.DBConnector"%>
<%
	int pageOrderNum = Constant.ORDER_PAGE_SHOW_NUM;
	//��ȡҳ��
	int pageNum = Integer.parseInt(request.getParameter("pageNum"));
	//��ȡ��ʼ��
	int startNo = ( pageNum - 1 ) * pageOrderNum;
	//��ȡ�û�����
	String numSql = "select count(*) from tc_order";
	int orderNum = JdbcTemplate.queryForInt(numSql);
	orderNum = orderNum % 3 == 0 && orderNum != 0 ? orderNum-- : orderNum ;
	int totalPageNum = orderNum / pageOrderNum + 1;
	
	String sql = "SELECT o.`orderCode`,o.`itemNum`,o.`username`,o.`orderDate`,u.`tel`,a.`receiveName`,a.`addrName`,a.`mailNo`,i.`itemTitle`,i.`price`"+
			" FROM tc_order o "+
			" LEFT JOIN `user` u ON o.`username`=u.`username`"+
			" LEFT JOIN tc_addr a ON o.`addrId`=a.`addrId`"+
			" LEFT JOIN item i ON o.`itemCode`=i.`itemCode` order by o.orderCode desc limit " + startNo + "," + pageOrderNum ;
System.out.println("select sql is:" + sql);
	ResultSet rs = JdbcTemplate.excuteQuery(sql);
	List<Order> orderList = BeanFactory.buildOrderList(rs);
%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>��������</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
</head>
<body>
	
   <div id="wrapper">

    <jsp:include page="./sideBar.jsp"></jsp:include>

      <div id="page-wrapper">

        <div class="row">
          <div class="col-lg-12">
            <h1>�������� <small>����Ա:<%=session.getAttribute("username") %></small></h1>
            <ol class="breadcrumb">
              <li><a href="default.jsp"><i class="fa fa-dashboard"></i> ��ҳDashboard</a></li>
              <li class="active"><i class="fa fa-table"></i> ��������</li>
            </ol>
            <div class="alert alert-info alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              ����������������� <a class="alert-link" href="#">ɾ��</a> ���������Ĳ������ܴ������صĸ���Ӱ�죡
            </div>
          </div>
        </div><!-- /.row -->

        <div class="row">
          <div class="col-lg-12">
            <h2>�����б�</h2>
            <div class="table-responsive">
              <table class="table table-bordered table-hover tablesorter">
                <thead>
                  <tr>
                    <th>������ <i class="fa fa-sort"></i></th>
                    <th>��Ʒ����<i class="fa fa-sort"></i></th>
                    <th>�û��� <i class="fa fa-sort"></i></th>
                    <th>�µ�����<i class="fa fa-sort"></i></th>
                    <th>�û��ֻ���<i class="fa fa-sort"></i></th>
                    <th>�ջ���<i class="fa fa-sort"></i></th>
                    <th>�ջ���ַ<i class="fa fa-sort"></i></th>
                    <th>�ʱ�<i class="fa fa-sort"></i></th>
                    <th>��Ʒ����<i class="fa fa-sort"></i></th>
                    <th>��Ʒ����<i class="fa fa-sort"></i></th>
                  </tr>
                </thead>
                <tbody>
                  <%
                  	for(Order o : orderList){
                  		%>
                  			<tr>
                  				<td><%=o.getOrderCode() %></td>
                  				<td><%=o.getItemNum() %></td>
                  				<td><%=o.getUsername() %></td>
                  				<td><%=o.getOrderDate() %></td>
                  				<td><%=o.getTel() %></td>
                  				<td><%=o.getReceiveName() %></td>
                  				<td><%=o.getAddrName() %></td>
                  				<td><%=o.getMailNo() %></td>
                  				<td><%=o.getItemTitle()%></td>
                  				<td><%=o.getPrice() %></td>   
                  			</tr>
                  		<% 
                  	}
                  %>
                </tbody>
              </table>
            </div>
          </div>
          
          <!-- �û���ҳ -->
          <div class="col-lg-12">
          	<div class="bs-example">
              <ul class="pagination">
                <li <% if ( pageNum == 1 ) { %>class="disabled" <%}%>><a href="orderManage.jsp?pageNum=<%=pageNum - 1%>">�0�0</a></li>
                <!--  <li class="active"><a href="orderManage.jsp?pageNum=1">1</a></li> -->
                <%for(int i=1;i<=totalPageNum;i++){ %>
                	<%if(i == pageNum) {%>
                		<li class="active"><a href="orderManage.jsp?pageNum=<%=i%>">i</a></li>
                	<%} else {%>
                		<li><a href="orderManage.jsp?pageNum=<%=i%>"><%=i%></a></li>
                	<%} %>                	
                <%} %>                        
                <li <% if ( pageNum == totalPageNum ) { %>class="disabled" <%}%>><a href="orderManage.jsp?pageNum=<%=pageNum+1%>">�0�3</a></li>
              </ul>             
            </div>
          </div>       
         
        </div><!-- /.row -->

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

    <!-- Page Specific Plugins -->
    <script src="js/tablesorter/jquery.tablesorter.js"></script>
    <script src="js/tablesorter/tables.js"></script>


</body>
</html>