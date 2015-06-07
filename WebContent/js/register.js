$(document).ready(function(){
		var checkMail = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
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
		//检查邮箱输入是否正确
		$("#mailbox").blur(function(){
			var mailbox = $("#mailbox").val();
			if( ! checkMail.test(mailbox)) {
				$("#check_mailbox").text("邮箱格式不正确");
				$("#mailbox").focus();
			}
		});
		$("#mailbox").keydown(function(){
			$("#check_mailbox").text("");
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