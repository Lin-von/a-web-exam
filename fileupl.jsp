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
<title>修改简历照片</title>
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
	<h3>修改简历照片</h3> 
	</div>
</div>
<!--//header-->
				
<!---->
<div style="width:100%">
	<form name="form5" method="post" action="fileup.jsp">
	<input style="position:absolute;left:20%;top:330px" type="file" name="upic" value="" placeholder="" required="">
		
	<label style="position:absolute;left:40%;top:400px" class="hvr-sweep-to-right"><input type="submit" value="提交" placeholder="" ></label>
	
		
		
	</form>
	
</div>

</body>
</html>