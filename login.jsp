<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�û���¼</title>

<link href="css/login.css" type="text/css" rel="stylesheet" />

</head>
<body id="userlogin_body">
<form name="loginForm" method="post" action="LoginServlet">
<div id="user_login">
	<dl>
		<dd id="user_top">
			<ul>
				<li class="user_top_l"></li>
				<li class="user_top_c"></li>
				<li class="user_top_r"></li>
			</ul>
		</dd>
		<dd id="user_main">
			<ul>
				<li class="user_main_l"></li>
				<li class="user_main_c">
					<div class="user_main_box">
						<ul>
							<li class="user_main_text">�û����� </li>
							<li class="user_main_input"><input name="id" maxlength="20" id="TxtUserName" > </li>
						</ul>
						<ul>
							<li class="user_main_text">�� �룺 </li>
							<li ><input name="password"  type="password"  > </li>
						</ul>
						<ul>
						<li class="user_main_text">��֤�룺 </li>
						<input name="validate" type="text" size="13" /> <img
								name="imgValidate" src="validate.jsp" onclick="refresh()"></li>
					    </ul>
						<ul>
						<li class="user_main_text">��ݣ� </li>
						 <select style="WIDTH: 185px"
									name="leixing" id="shenfen">
										<option name="leixing" value="xitongguanliyuan">ϵͳ����Ա</option>
										<option name="leixing" value="suyuanqiye" selected="selected">��Դ��ҵ</option>
										<option name="leixing" value="jianguanbumen">��ܲ���</option>
<!-- 										
				
 -->
								</select>
						</ul>
						
					</div>
				</li>
				<li class="user_main_r"><input type="submit" name="denglu" src="img/user_botton.gif" class="ibtnentercssclass"onclick="login()"></li>
			</ul>
		</dd>
		<dd id="user_bottom">
			<ul>
				<li class="user_bottom_l"></li>
				<li class="user_bottom_c"></li>
				<li class="user_bottom_r"></li>
			</ul>
		</dd>
	</dl>
</div>

</form>
</body>
</html>