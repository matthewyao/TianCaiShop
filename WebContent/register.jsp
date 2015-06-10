<%@page import="java.util.Date"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%@page import="com.tiancai.util.Mail"%>
<%
	String tel = request.getParameter("tel");
	String pass = request.getParameter("pass");
	String mail = request.getParameter("mailbox");
	
	//非第一次进入
	if( ! ( "".equals(mail) || mail == null )){
		if( mail.toUpperCase().contains("QQ.COM") ){
			//response.sendRedirect("http://mail.qq.com");
		} else if( mail.toUpperCase().contains("163.COM") ){
			response.sendRedirect("http://mail.163.com");
		} else if( mail.toUpperCase().contains("GOOGLE.COM") ){
			response.sendRedirect("http://mail.google.com");
		} else if( mail.toUpperCase().contains("126.COM") ){
			response.sendRedirect("http://mail.126.com");
		}  else if( mail.toUpperCase().contains("HOTMAIL.COM") ){
		response.sendRedirect("http://www.hotmail.com");
		} 
		String checkSql = "select username from user where username='" + tel +"'";
		String user = JdbcTemplate.queryForString(checkSql); 
		if( (user.equals("") || user == null) ){
			String sql = "INSERT INTO `tiancai`.`user`(`username`,`password`,`nickname`,`email`) " +
					"VALUES ('"+tel+"','"+pass+"','"+tel+"','"+mail+"')";
			JdbcTemplate.excute(sql);
			System.out.println(">>>>>>>>>>start to send mail to :"+mail + " At " + new Date().toString() );
			Mail.sendMail(mail,"please check your account", "感谢注册天彩服装超市会员，我们将竭诚为您服务<br/><a href=\"http://localhost:8888/TianCaiShop/valid.jsp?tel='"+tel+"'\">点我验证账户！</a>");
			System.out.println(">>>>>>>>>>send mail end At " + new Date().toString() );
		} else {
			//用户已经注册
			response.getWriter().write("<script>alert('用户名已被占用！请更换用户名重试')<script>");
		}
	}	
%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
	#register {
		width:500px;
		height:300px;
		margin:200px auto 0 auto;
		border:solid 1px red;
	}
	.submit {
		width: 70px;
		font-size: 16px;
	}
	.td_title{
		text-align:right;
	}
	td{
		padding:5px;
	}
	.check{
		font-size:12px;
		color:red;
	}
</style>
<script type="text/javascript" src="./js/register.js" charset="utf-8"></script>
<title>注册</title>
</head>
<body>
	<div id="register">
		<form action="./register.jsp" method="post">
			<table>
			<tr>
				<td class="td_title">手机号：</td>
				<td><input type="text" name="tel" id="tel"/></td>
				<td><span id="check_tel" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title" >密码：</td>
				<td><input maxlength="15" type="password" name="pass" id="pass"/></td>
				<td><span id="check_pass" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">确认密码：</td>
				<td><input maxlength="15" type="password" name="confirmPass" id="confirmPass"/></td>
				<td><span id="check_confirm_pass" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">邮箱：</td>
				<td><input type="text" name="mailbox" id="mailbox"/></td>
				<td><span id="check_mailbox" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">验证码：</td>
				<td>
					<label>我就是验证码</label>
				</td>
				<td><span id="check_tel" class="check"></span></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="submit" class="submit" value="注册"/>
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>