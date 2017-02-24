<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=utf-8"  pageEncoding="UTF-8"%>
<%@ page import="javax.naming.Context"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.naming.NamingException"%>
<%@ page import="javax.sql.DataSource"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.jbit.news.bean.*" %>
<%@ page import="org.jdit.news.bean.bl.*" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name = (String)session.getAttribute("name"); 
if(name==null) response.sendRedirect("tip.jsp");
else {
String cname = request.getParameter("cname");
String pos = request.getParameter("position");
//String oth = request.getParameter("other");

int validate = 0;
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost/pingtai?user=root&password=&userUnicode=true&characterEncoding=utf-8");
	Statement stmt = con.createStatement();
	String str = "select max(aid) from applications";
	int maxid =0;
	ResultSet rs = stmt.executeQuery(str);
	if(rs.next())
		maxid = rs.getInt(1)+1;	//获取新的用户编号
	String sql = "insert into applications values("+maxid+",'"+name+"','"+cname+"','"+pos+"')";
	validate = stmt.executeUpdate(sql);
}
catch (Exception e) {
	e.printStackTrace();
}

if(validate == 1)
	response.sendRedirect("success1.jsp");
else
	response.sendRedirect("failure.jsp");
}
%>
</body>
</html>