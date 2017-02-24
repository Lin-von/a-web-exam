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
<title>招聘网站首页</title>
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
		<div class="top-nav">
			<ul class="right-icons">
				
				
<% String name = (String)session.getAttribute("name"); 
   if(name==null){%>
<li><a  href="login.jsp"><i class="glyphicon glyphicon-user"> </i>登陆</a></li>
<%}else{ 
response.sendRedirect("loged.jsp");

} %> 				
			</ul>
		</div>
		
	</div>	
</div>


<!--//-->	

<div class=" header-right">
		<div class=" banner">
			 <div class="slider">
			    <div class="callbacks_container">
			      <ul class="rslides" id="slider">		       
					 <li>
			          	 <div class="banner1">
			           		<div class="caption">
					          	<h3><span>在线</span>招聘</h3>
					          	<p>属于您的线上求职、招聘一体化平台</p>
			          		</div>
			          	</div>
			         </li>
					 <li>
			          	 <div class="banner2">
			           		<div class="caption">
					          	<h3><span>在线</span>招聘</h3>
					          	<p>属于您的线上求职、招聘一体化平台</p>
			          		</div>
			          	</div>
			         </li>
			         <li>
			          	 <div class="banner3">
			           		<div class="caption">
					          	<h3><span>在线</span>招聘</h3>
					          	<p>属于您的线上求职、招聘一体化平台</p>
			          		</div>
			          	</div>
			         </li>		
			      </ul>
			  </div>
			</div>
		</div>
	</div>
	<!--header-bottom-->
	<div class="banner-bottom-top">
			<div class="container">
			<div class="bottom-header">
				<div class="header-bottom">
					
				
					
					<div class=" bottom-head">
						<a href="position.jsp">
							<div class="buy-media">
							<i class="sell"> </i>
							<h6>查看职位</h6>
							</div>
						</a>
					</div>
				
					<div class=" bottom-head">
						<a href="company.jsp">
							<div class="buy-media">
							<i class="apart"> </i>
							<h6>查看企业信息</h6>
							</div>
						</a>
					</div>
				
					<div class="clearfix"> </div>
				</div>
			</div>
	</div>
	</div>
			<!--//-->
				
	<!--//header-bottom-->
	<!--content-->
<div class="content">
	<div class="content-grid">
		<div class="container">
			<h3>平台展示</h3>
				<div class="col-md-4 box_2">
			     	 <a href="single.html" class="mask">
			     	   	<img class="img-responsive zoom-img" src="images/pc4.jpg" alt="">
			     	   	
			     	 </a>
			     	   <div class="most-1">
			     	   	 <h5><a href="single.html">展示图片</a></h5>
			     	    	<p>展示图片</p>
			     	   </div>
			 </div>
			  <div class="col-md-4 box_2">
		     	 <a href="single.html" class="mask">
			     	   	<img class="img-responsive zoom-img" src="images/pc5.jpg" alt="">
			     	   	
			     	 </a>
		     	   <div class="most-1">
			     	   	<h5><a href="single.html">展示图片</a></h5>
			     	    	<p>展示图片</p>
			     	   </div>
		     	
		      </div>
			  <div class="col-md-4 box_2">
		     	 <a href="single.html" class="mask">
			     	   	<img class="img-responsive zoom-img" src="images/pc3.jpg" alt="" >
			     	  
			     	 </a>
		     	   <div class="most-1">
			     	   	 <h5><a href="single.html">展示图片</a></h5>
			     	    	<p>展示图片</p>
			     	   </div>
		     	
		      </div>
		 	<div class="clearfix"> </div>
		</div>
	</div>
</div>	
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