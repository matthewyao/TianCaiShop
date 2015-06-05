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
		//���绰����
		$("#tel").blur(function(){
			var tel = $("#tel").val();
			if(isMobile(tel) == 0){
				$("#check_tel").text("��������ȷ�ĵ绰����");
				$("#tel").focus();
			} else {
				$("#check_tel").text("");
			}			
		});
		$("#tel").keydown(function(){
			$("#check_tel").text("");
		});
		//������볤��
		$("#pass").blur(function(){
			var pass = $("#pass").val();
			if(pass.length <=6) {
				$("#check_pass").text("����̫��");
				$("#pass").focus();
			} else if (pass.length >=15) {
				$("#check_pass").text("����̫��");
				$("#pass").focus();
			} else {
				$("#check_pass").text("");
			}
		});
		$("#pass").keydown(function(){
			$("#check_pass").text("");
		});
		//���ȷ������
		$("#confirmPass").blur(function(){
			var pass = $("#pass").val();
			var confirmPass = $("#confirmPass").val();
			if(pass != confirmPass) {
				$("#check_confirm_pass").text("�������벻һ��");
				$("#confirmPass").focus();
			}
		});
		$("#confirmPass").keydown(function(){
			$("#check_confirm_pass").text("");
		});
	});
	
	//�ж�text�����Ƿ����ֻ���ʽ
	//����ֵΪ0�������ֻ���ʽ
	//����ֵΪ1�������ƶ��ֻ�����
	//����ֵΪ2��������ͨ�ֻ�����
	//����ֵΪ3�����ǵ����ֻ�����
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
	</div>
</body>
</html>