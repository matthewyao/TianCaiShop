<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
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
<script type="text/javascript">
	$(document).ready(function(){
		$("#tel").focus();
		//检查电话号码
		$("#tel").blur(function(){
			var tel = $("#tel").val();
			if(isMobile(tel) == 0){
				$("#check_tel").text("请输入正确的电话号码");
				$("#tel").focus();
			} else {
				$("#check_tel").text("");
			}			
		});
		$("#tel").keydown(function(){
			$("#check_tel").text("");
		});
		//检查密码长度
		$("#pass").blur(function(){
			var pass = $("#pass").val();
			if(pass.length <=6) {
				$("#check_pass").text("密码太短");
				$("#pass").focus();
			} else if (pass.length >=15) {
				$("#check_pass").text("密码太长");
				$("#pass").focus();
			} else {
				$("#check_pass").text("");
			}
		});
		$("#pass").keydown(function(){
			$("#check_pass").text("");
		});
		//检查确认密码
		$("#confirmPass").blur(function(){
			var pass = $("#pass").val();
			var confirmPass = $("#confirmPass").val();
			if(pass != confirmPass) {
				$("#check_confirm_pass").text("两次密码不一致");
				$("#confirmPass").focus();
			}
		});
		$("#confirmPass").keydown(function(){
			$("#check_confirm_pass").text("");
		});
	});
	
	//判断text参数是否是手机格式
	//返回值为0，则不是手机格式
	//返回值为1，则是移动手机号码
	//返回值为2，则是联通手机号码
	//返回值为3，则是电信手机号码
	function  isMobile(tel){
	    var _emp=/^\s*|\s*$/g;
	    tel=tel.replace(_emp,"");
	    var _d=/^1[3578][01379]\d{8}$/g;
	    var _l=/^1[34578][01256]\d{8}$/g;
	    var _y=/^(134[012345678]\d{7}|1[34578][012356789]\d{8})$/g;
	    if(_d.test(tel)){
	    return 3;
	   } else if(_l.test(tel)){
	   return 2;
	  }else if(_y.test(tel)){
	  return 1;
	 }
	 return 0;
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="register">
		<table>
			<tr>
				<td class="td_title">手机号：</td>
				<td><input type="text" name="tel" id="tel"/></td>
				<td><span id="check_tel" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">密码：</td>
				<td><input type="password" name="pass" id="pass"/></td>
				<td><span id="check_pass" class="check"></span></td>
			</tr>
			<tr>
				<td class="td_title">确认密码：</td>
				<td><input type="password" name="confirmPass" id="confirmPass"/></td>
				<td><span id="check_confirm_pass" class="check"></span></td>
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
	</div>
</body>
</html>