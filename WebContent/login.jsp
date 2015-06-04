<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<style type="text/css">
	#loginDiv {
		width:400px;
		height:300px;
		margin:200px auto 0 auto;
		border:solid 1px red;
	}
	.submit {
		width: 70px;
		font-size: 16px;
	}
	td{
		padding:5px;
	}
</style>
<title>天彩服装超市-登录</title>
</head>
<body>
	<form action="./checkLogin.jsp" method="post">
		<div id="loginDiv">
			<table>
				<tr>
					<td style="text-align: right;">用户名：</td>
					<td><input id="username" name="username" type="text" /></td>
				</tr>
				<tr>
					<td style="text-align: right;">密码：</td>
					<td><input id="password" name="password" type="password"/></td>
				</tr>
				<tr>
					<td colspan="2"><input class="submit" value="登录" type="submit" /><a href="./register.jsp">还没有账号？赶紧注册</a></td>
				</tr>
		</div>
	</form>
</body>
</html>