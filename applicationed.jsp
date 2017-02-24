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
<title>已申请职位</title>
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
	<h3>已申请职位</h3> 
	</div>
</div>
<!--//header-->
<!--blog-->
<div class="blog">
<div class="container">
   <div class="col-md-9 blog-head">
	   
		 <!---->
			<div class="single-grid">
				
				
				
				
				<%
List nlist = new ArrayList();

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost/pingtai?user=root&password=");
	Statement stmt = con.createStatement();
	String str = "select * from applications where applications.uname="+name+" ";
	
	ResultSet rs = stmt.executeQuery(str);
	while(rs.next()){
		String news = rs.getInt("aid")+"_"+rs.getString("cname")+"_"+rs.getString("position");
		      nlist.add(news);
		}

}
catch (Exception e) {
	e.printStackTrace();
}

%>
<hr/>
<% if(nlist.size()==0) {%> <h5>您还没有申请过任何职位</h5>

<%} else {%>

    	<h5>您申请过的职位</h5>
	<%
for(int i=0;i<nlist.size();i++){
  String[] ninfo = ((String)nlist.get(i)).split("_");
   %>

			    <div class="media">
		          <div class="media-left">
		            <a href="#">
		            	<img class="media-object" src="images/av.png" alt="" />
		            </a>
		          </div>
		          
		          <div class="media-body">
		            <h4 class="media-heading"><%=ninfo[1] %></h4>
		              <p> <%=ninfo[2] %></p>
		          </div>
		          <div class="media-body">
		            <div class="blog-list2"><ul>
				
				   <li><a href="delete.jsp?aid=<%= (String)ninfo[0] %>">取消申请</a></li>	</ul> </div>
		         
		          </div>
		          
		        </div>
      <%} %>
   <%} %>
		        <div class="create">
				
				<a class="hvr-sweep-to-right" href="index.jsp">&nbsp;&nbsp;返回首页&nbsp;&nbsp;</a>
				<div class="clearfix"> </div>
			</div>
		     
		 	 
		</div>
		<!---->
		
	</div>
	
	 
</div>
</div>
<!--//blog-->
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