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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = (String)session.getAttribute("name"); 

int validate = 0;
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost/pingtai?user=root&password=");
	Statement stmt = con.createStatement();
	String str = "select * from resuem where ruser='"+name+"'";
	
	ResultSet rs = stmt.executeQuery(str);
	if(rs.next())
	{
		//request.getSession().setAttribute("name",add);
		response.sendRedirect("resuemmang.jsp");
	}
	 	//    response.sendRedirect("loged.jsp?add="+add);
	else 	response.sendRedirect("newresuem.jsp");
}
catch (Exception e) {
	e.printStackTrace();
}



%>
</body>
</html>