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
<title>企业信息</title>
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
	<h3>企业信息</h3> 
	</div>
</div>
<!--//header-->
<!--Dealers-->
<div class="dealers">
<div class="container">
	<h3>企业信息展示</h3>
	
	<div class="dealer-top">
		<h4>已发布的企业信息</h4>
			<div class="deal-top-top">
				<div class="top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称1</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司1&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de1.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称2</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司2&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de2.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称3</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司3&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class=" top-deal-top ">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de3.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称4</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司4&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			<div class="clearfix"> </div>
		</div>		
		<div class="deal-top-top">
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de4.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称5</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司5&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de5.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称6</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司6&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de6.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称7</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司7&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de7.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称8</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司8&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			<div class="clearfix"> </div>
		</div>		
		<div class="deal-top-top">
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de8.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称9</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司9&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de9.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称10</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司10&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de10.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称11</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司11&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class=" top-deal-top">
					<div class=" top-deal">
						<a href="single.html" class="mask"><img src="images/de11.jpg" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href=""> 公司名称12</a></h5>
								<p>招聘职位</p>
								<p>公司地址</p>
							</div>
							<div class="top-deal2">
								<a href="appinput.jsp?cname=公司12&position=职位" class="hvr-sweep-to-right more">我要申请</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			<div class="clearfix"> </div>
		</div>		
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