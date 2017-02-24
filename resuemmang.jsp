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
<title>简历管理</title>
<link href="css/newstyle.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

</head>
<body >
<!--header-->

<% 
String name = (String)session.getAttribute("name"); 
%>
<div class="header">
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="index.jsp">招聘平台</a></h1>
			</div>
		<!--//logo-->
			<div class="top-nav">
			<ul class="right-icons">
				<li> <a  href="logout.jsp">退出</a></li>
			</ul>
		</div>
		<div class="top-nav">
			<ul class="right-icons">
				<li><a  href=""><i class="glyphicon glyphicon-user"> </i> <%=name%></a></li>
			</ul>
		</div>
		
	</div>	
</div>
<!--//-->	
<div class=" banner-buying">
	<div class=" container" >
	<h3>简历管理</h3> 
	</div>
</div>
<!--//header-->
<div class="about">	

	<!---->
	<div class="choose-us" style="margin-bottom:80px;">
		<div class="container">
			<h3>简历管理</h3>
			<div style="position:relative" class="us-choose">
				<div style="position:absolute;" class="col-md-6 why-choose">
					
					<div class="ser-top beautiful"> 
						<a href="resuemview.jsp"><h5>查看简历</h5></a>
						<label>您可以在这里查看您的简历</label>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div style="position:absolute;left:55%" class="col-md-6 why-choose">
					
					<div class="ser-top beautiful"> 
						<a href="resuemupdate.jsp"><h5>修改简历</h5></a>
						<label>您可以在此修改您的简历</label>
					</div>
					<div class="clearfix"> </div>
				</div>
			
			</div>
			
				
			</div>
		</div>
	<!---->
	<!---->
	<div class="about-bottom"></div>
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