<%
	String tel = request.getParameter("tel");
	String pass = request.getParameter("pass");
	String mail = request.getParameter("mailbox");
	System.out.println(tel+"_"+pass+"_"+mail);

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
<title>ע��</title>
</head>
<body>
	<div id="register">
		<form action="./register.jsp" method="post">
			<table>
			<tr>
				<td class="td_title">�ֻ��ţ�</td>
				<td><input type="text" name="tel" id="tel"/></td>
				<td><span id="check_tel" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">���룺</td>
				<td><input type="password" name="pass" id="pass"/></td>
				<td><span id="check_pass" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">ȷ�����룺</td>
				<td><input type="password" name="confirmPass" id="confirmPass"/></td>
				<td><span id="check_confirm_pass" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">���䣺</td>
				<td><input type="text" name="mailbox" id="mailbox"/></td>
				<td><span id="check_mailbox" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">��֤�룺</td>
				<td>
					<label>�Ҿ�����֤��</label>
				</td>
				<td><span id="check_tel" class="check"></span></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="submit" class="submit" value="ע��"/>
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>