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
<title>查看简历</title>
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
	<h3>查看简历</h3> 
	</div>
</div>
<!--//header-->
				<%
List nlist = new ArrayList();

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost/pingtai?user=root&password=");
	Statement stmt = con.createStatement();
	String str = "select * from resuem where resuem.ruser="+name+" ";
	
	ResultSet rs = stmt.executeQuery(str);
	if(rs.next()){
		String news = rs.getInt("rid")+"_"+rs.getString("ruser")+"_"+rs.getString("name")+
				"_"+rs.getString("sex")+"_"+rs.getString("birthday")+"_"+rs.getString("birthmon")
				+"_"+rs.getString("birthyear")+"_"+rs.getString("edu")+"_"+rs.getString("major")
				+"_"+rs.getString("tel")+"_"+rs.getString("other")+"_"+rs.getString("file");
		nlist.add(news);
		}

}
catch (Exception e) {
	e.printStackTrace();
}
String[] ninfo = ((String)nlist.get(0)).split("_");
%>
<div class="about">	

	<!---->
	<div class="choose-us chos" style="">
		<div class="container" style="">
			<div class="ll" style="float:left;width:30%">
		 <div class="sidebar_top">
			 <h1><%=ninfo[2] %></h1> 
			 <img style="margin-top:50px; margin-bottom:50px;width:300px" src="images/<%=ninfo[11] %>" alt=""/>
		 </div>
		<div class="details">
			 <h2>联系电话</h2>
			 <p style="margin-top:20px;"><%=ninfo[9] %></p>  	 
			 <h2 style="margin-top:50px;">EMAIL</h2>
			 <p style="margin-top:20px;"><a href="mailto@example.com"><%=ninfo[10] %></a></p>
			
			 
		</div>
		<div class="clearfix"></div>
</div>
<!---->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!---//pop-up-box---->			
<div class="rr" style="float:left;width:70%" >
	 <div class="content">
		 <div style="margin-bottom: 50px;" class="details_header">
			 <ul>
				 <li style="float:right;"><a href="resuemmang.jsp"><span class="glyphicon glyphicon-file" aria-hidden="true"></span>返回简历管理</a></li>
				 <li><a href="#"><span class="glyphicon glyphicon-print" aria-hidden="true"></span>打印简历</a></li>
				
			
			 </ul>
		 </div>
		 <div class="company">
			 <h3 class="clr1">个人信息</h3>
			 <ul style="width:500px;margin-left:100px;margin-top:50px;" >
			 	<li> <h4 style="width:250px;float:left;">姓名  </h4><h4 style="width:250px;float:right;">：&nbsp;&nbsp;&nbsp;<%=ninfo[2] %>  </h4> </li>
			 	<li> <h4 style="width:250px;float:left;">性别 </h4><h4 style="width:250px;float:right;">：&nbsp;&nbsp;&nbsp;<%=ninfo[3] %>  </h4> </li>
			 	<li> <h4 style="width:250px;float:left;">出生日期  </h4><h4 style="width:250px;float:right;">：&nbsp;&nbsp;&nbsp;<%=ninfo[6] %>-<%=ninfo[5] %>-<%=ninfo[4] %>  </h4> </li>
			 	<li> <h4 style="width:250px;float:left;">学历  </h4><h4 style="width:250px;float:right;">：&nbsp;&nbsp;&nbsp;<%=ninfo[7] %>  </h4> </li>
			 	<li> <h4 style="width:250px;float:left;">专业 </h4><h4 style="width:250px;float:right;">：&nbsp;&nbsp;&nbsp;<%=ninfo[8] %> </h4> </li>
			 
		
			 </ul>
			
				 
			
		 </div>
		 <div style="margin-top:200px;height:500px;" class="skills">
			 <h3 class="clr2">受教育经历</h3>
			 <div style="margin-left:50px;" class="education_details">
				 <h5 style="margin-bottom:40px;">个人受教育经历简述</h5>
				 
				 
			 </div>
		 </div>
        	 <div style="height:500px;" class="education">
			 <h3 class="clr3">工作经历</h3>
			 <div style="margin-left:50px;" class="education_details">
				 <h5 style="margin-bottom:40px;">个人工作经历简述</h5>
				 
				 
			 </div>
			
		 </div>
		
	 </div>
</div>
			
				
			</div>
		</div>
	<!---->
	<!---->
	<div class="about-bottom">
		
		<!---->
		
		<!---->

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