<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="UTF-8"%>
<%@ page import="javax.naming.Context"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.naming.NamingException"%>
<%@ page import="javax.sql.DataSource"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.jbit.news.bean.*" %>
<%@ page import="org.jdit.news.bean.bl.*" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>注册界面</title>
<link href="css/newstyle.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

</head>
<body>
<!--header-->


<div class="header">
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="index.jsp">招聘平台</a></h1>
			</div>
		<!--//logo-->
		<div class="top-nav">
			<ul class="right-icons">
					<li><a  href="index.jsp"><i class="glyphicon glyphicon-user"> </i>返回首页</a></li>
					
			</ul>
				
		</div>	
		</div>
</div>
<!--//-->	
<div class=" banner-buying">
	<div class=" container">
	<h3>欢迎注册</h3> 
	</div>
</div>
<!--//header-->
<!--contact-->
<div class="login-right">
	<div class="container">
		<h3>注册</h3>
		<div class="login-top">
					<div class="form-info">
					<form name="form1" method="post" action="control.jsp">
						
						<input type="text"   placeholder="请填入账户名（不能带有符号）" name="uaddress" required="" >
						<input type="password"  placeholder="请填入密码 " name="upassword" required="">
						
						 <label class="hvr-sweep-to-right">
				           	<input type="submit" value="注册">
				           </label>
					</form>
					<p>已有账户？ <a href="login.jsp">登陆</a></p>
				</div>
			
	</div>
</div>
</div>
<!--//contact-->
<!--footer-->
<div class="footer">
	<div class="container">
		<div class="footer-top-at">
			<div class="col-md-15 amet-sed">
				<h4>我们的公司</h4>
				<ul class="nav-bottom">
					<li><a href="">关于我们</a></li>
					<li><a href="">联系我们</a></li>
				
					
				</ul>	
			</div>
			
			
		<div class="clearfix"> </div>
		</div>
	</div>
	
</div>
<!--//footer-->
</body>
</html>