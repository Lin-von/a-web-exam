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
<title>职位信息</title>
<link href="css/newstyle.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />


</head>
<body >
<!--header-->


<div class="header">
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="index.jsp">招聘平台</a></h1>
			</div>
		<!--//logo-->
<% String name = (String)session.getAttribute("name"); 
   if(name==null){%>
		<div class="top-nav">
			<ul class="right-icons">
			<li><a  href="login.jsp"><i class="glyphicon glyphicon-user"> </i>登陆</a></li>
			</ul>
		</div>
<%}else{ %>
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
		<%			

} %> 
			
		</div>
		
	
</div>
<!--//-->	
<div class=" banner-buying">
	<div class=" container">
	<h3>职位信息</h3> 
	</div>
</div>
<!--//header-->
<!---->
<div class="single">
	

<!---->
<div class="container">
	
	<div class="buy-single">
		<h3>已发布的职位信息</h3>
		<div class="box-col">
			<div class=" col-sm-7 left-side ">
				<a href=" "> <img class="img-responsive" src="images/sb.jpg" alt=""></a>
			</div>
			<div class="middle-side">
				<h4>招聘职位: 职位A</h4>
				<p><span class="bath3">工作范围 </span>: <span class="two">编程</span></p>
				<p><span class="bath3">薪资范围 </span>: <span class="two">1W-2W</span></p>
				<p><span class="bath3">招聘单位</span>: <span class="two">公司A</span></p>
				<p><span class="bath3">联系方式 </span>:<span class="two"> 01000000</span></p>
				<p><span class="bath3">公司地址</span> : <span class="two">csu</span></p>
				<p><span class="bath3">邮政编码 </span>:<span class="two"> 410083</span></p>				 
				<div class="   right-side">
					<a href="appinput.jsp?cname=公司A&position=职位A" class="hvr-sweep-to-right more" >立即申请</a>     
				</div>
			</div>
		</div>
		
		
		<div class="box-col">
			<div class=" col-sm-7 left-side ">
				<a href=" "> <img class="img-responsive" src="images/sb.jpg" alt=""></a>
			</div>
			<div class="middle-side">
				<h4>招聘职位: 职位A</h4>
				<p><span class="bath3">工作范围 </span>: <span class="two">编程</span></p>
				<p><span class="bath3">薪资范围 </span>: <span class="two">1W-2W</span></p>
				<p><span class="bath3">招聘单位</span>: <span class="two">公司A</span></p>
				<p><span class="bath3">联系方式 </span>:<span class="two"> 01000000</span></p>
				<p><span class="bath3">公司地址</span> : <span class="two">csu</span></p>
				<p><span class="bath3">邮政编码 </span>:<span class="two"> 410083</span></p>				 
				<div class="   right-side">
					<a href="appinput.jsp?cname=公司A&position=职位A" class="hvr-sweep-to-right more" >立即申请</a>     
				</div>
			</div>
		</div>
			
		<div class="box-col">
			<div class=" col-sm-7 left-side ">
				<a href=" "> <img class="img-responsive" src="images/sb.jpg" alt=""></a>
			</div>
		<div class="middle-side">
			<h4>招聘职位: 职位A</h4>
			<p><span class="bath3">工作范围 </span>: <span class="two">编程</span></p>
			<p><span class="bath3">薪资范围 </span>: <span class="two">1W-2W</span></p>
			<p><span class="bath3">招聘单位</span>: <span class="two">公司A</span></p>
			<p><span class="bath3">联系方式 </span>:<span class="two"> 01000000</span></p>
			<p><span class="bath3">公司地址</span> : <span class="two">csu</span></p>
			<p><span class="bath3">邮政编码 </span>:<span class="two"> 410083</span></p>				 
			<div class="   right-side">
				<a href="appinput.jsp?cname=公司A&position=职位A" class="hvr-sweep-to-right more" >立即申请</a>     
			</div>
		</div>
		</div>
			<div class="box-col">
		<div class=" col-sm-7 left-side ">
			<a href=" "> <img class="img-responsive" src="images/sb.jpg" alt=""></a>
		</div>
		<div class="middle-side">
			<h4>招聘职位: 职位A</h4>
			<p><span class="bath3">工作范围 </span>: <span class="two">编程</span></p>
			<p><span class="bath3">薪资范围 </span>: <span class="two">1W-2W</span></p>
			<p><span class="bath3">招聘单位</span>: <span class="two">公司A</span></p>
			<p><span class="bath3">联系方式 </span>:<span class="two"> 01000000</span></p>
			<p><span class="bath3">公司地址</span> : <span class="two">csu</span></p>
			<p><span class="bath3">邮政编码 </span>:<span class="two"> 410083</span></p>				 
			<div class="   right-side">
				<a href="appinput.jsp?cname=公司A&position=职位A" class="hvr-sweep-to-right more" >立即申请</a>     
			</div>
		</div>
		</div>
		
				
	</div>
	
</div>
<!---->
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