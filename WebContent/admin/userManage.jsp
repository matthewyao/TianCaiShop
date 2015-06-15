<%@page import="com.tiancai.util.BeanFactory"%>
<%@page import="com.tiancai.util.Constant"%>
<%@page import="com.tiancai.bean.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%@page import="com.tiancai.util.DBConnector"%>
<%
	int pageUserNum = Constant.USER_PAGE_SHOW_NUM;
	//��ȡҳ��
	int pageNum = Integer.parseInt(request.getParameter("pageNum"));
	//��ȡ��ʼ��
	int startNo = ( pageNum - 1 ) * pageUserNum;
	//��ȡ�û�����
	String numSql = "select count(*) from user";
	int userNum = JdbcTemplate.queryForInt(numSql);
	userNum = userNum % 3 == 0 && userNum != 0 ? userNum-- : userNum ;
	int totalPageNum = userNum / pageUserNum + 1;
	
	String sql = "select * from user limit " + startNo + "," + pageUserNum;
System.out.println("select sql is:" + sql);
	ResultSet rs = JdbcTemplate.excuteQuery(sql);
	List<User> userList = BeanFactory.buildUserList(rs);	
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

    <title>�û�����</title>

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
            <h1>�û����� <small>����Ա:<%=session.getAttribute("username") %></small></h1>
            <ol class="breadcrumb">
              <li><a href="default.jsp"><i class="fa fa-dashboard"></i> ��ҳDashboard</a></li>
              <li class="active"><i class="fa fa-table"></i> �û�����</li>
            </ol>
            <div class="alert alert-info alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              ����������������� <a class="alert-link" href="#">ɾ��</a> ���������Ĳ������ܴ������صĸ���Ӱ�죡
            </div>
          </div>
        </div><!-- /.row -->

        <div class="row">
          <div class="col-lg-12">
            <h2>�û��б�</h2>
            <div class="table-responsive">
              <table class="table table-bordered table-hover tablesorter">
                <thead>
                  <tr>
                    <th>�û��� <i class="fa fa-sort"></i></th>
                    <th>�ֻ���<i class="fa fa-sort"></i></th>
                    <th>���� <i class="fa fa-sort"></i></th>
                    <th>�Ƿ񱻽�<i class="fa fa-sort"></i></th>
                    <th>�Ƿ���������֤<i class="fa fa-sort"></i></th>
                    <th>����<i class="fa fa-sort"></i></th>
                  </tr>
                </thead>
                <tbody>
                  <%
                  	for(User u : userList){
                  		%>
                  			<tr>
                  				<td><%=u.getUsername() %></td>
                  				<td><%=u.getTel() %></td>
                  				<td><%=u.getEmail() %></td>
                  				<td>
                  					<span>
                  						<% if(u.getDisabled() == 0) { %>
                  							<font color="green">δ����</font>
                  						<% } else { %>
                  							<font color="red">�ѱ���</font>
                  						<% } %>
                  					</span>
                  				</td>
                  				<td>
                  					<span>
                  						<% if(u.getValid() == 1) { %>
                  							<font color="green">����֤</font>
                  						<% } else { %>
                  							<font color="red">δ��֤</font>
                  						<% } %>
                  					</span>
                  				</td>
                  				<td>
               						<% if(u.getDisabled() == 0) { %>
               							<a href="./disableUser.jsp?type=1&username=<%=u.getUsername() %>">���</a>
               						<% } else { %>
               							<a href="./disableUser.jsp?type=0&username=<%=u.getUsername() %>">���</a>
               						<% } %>                  					
               						<a href="./deleteUser.jsp?username=<%=u.getUsername() %>">ɾ��</a>
                  				</td>
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
                <li <% if ( pageNum == 1 ) { %>class="disabled" <%}%>><a href="userManage.jsp?pageNum=<%=pageNum - 1%>">�0�0</a></li>
                <%for(int i=1;i<=totalPageNum;i++){ %>
                	<%if(i == pageNum) {%>
                		<li class="active"><a href="userManager.jsp?pageNum=<%=i%>">i</a></li>
                	<%} else {%>
                		<li><a href="userManager.jsp?pageNum=<%=i%>"><%=i%></a></li>
                	<%} %>                	
                <%} %>                                     
                <li <% if ( pageNum == totalPageNum ) { %>class="disabled" <%}%>><a href="userManage.jsp?pageNum=<%=pageNum+1%>">�0�3</a></li>
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