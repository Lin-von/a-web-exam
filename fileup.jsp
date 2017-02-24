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

String file = request.getParameter("upic");
int validate = 0;
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con =DriverManager.getConnection("jdbc:mysql://localhost/pingtai?user=root&password=&userUnicode=true&characterEncoding=utf-8");
	Statement stmt = con.createStatement();
	String str = "UPDATE `pingtai`.`resuem` SET `file`='"+file+"' WHERE `ruser`='"+name+"' ;";

	validate = stmt.executeUpdate(str);

}
catch (Exception e) {
	e.printStackTrace();
}

if(validate == 1)
	response.sendRedirect("success3.jsp");
else
	response.sendRedirect("failure.jsp");

%>
</body>
</html>