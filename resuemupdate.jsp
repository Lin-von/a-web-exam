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
<title>简历修改</title>
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
	<h3>简历修改</h3> 
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
<!---->

<div class="loan_single">

	<div class="container" style="height:1500px;">
	<form style="height:100%" name="form5" method="post" action="resuemin2.jsp">
		<div class="loan-col" style="height:100%;">
			<h3>修改简历</h3>
			<h4>您可以在这里修改您的简历！</h4>
			
			<div class="col-loan" style="float:left; width:600px">
				<ul class="loan-col1" style="width:100%">
					<li ><span>姓名 </span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name="uname" value="<%=ninfo[2] %>" placeholder="" required=""></li>
				</ul>
				<ul class="loan-col1">
					<li ><span>性别</span> </li><label>:</label>
					<li class="loan-list-top"><select name="usex" class="drop-select" >
							<option selected="selected" ><%=ninfo[3] %></option>
							<option>男</option>
							<option>女</option>
							
						</select>
					</li>
				</ul>
				
				<ul class="loan-col1">
					<li ><span>出生日期</span> </li><label>:</label>
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option selected="selected"><%=ninfo[4] %></option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option selected="selected"><%=ninfo[5] %></option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option selected="selected"><%=ninfo[6] %></option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
				</ul>
				
				
				<ul class="loan-col1">
					<li ><span>学历</span> </li><label>:</label>
					<li class="loan-list-top"><select name="edu" class="drop-select">
							<option selected="selected"><%=ninfo[7] %></option>
							<option>无</option>
							<option>小学</option>
							<option>初中</option>
							<option>高中</option>
							<option>专科</option>
							<option>本科</option>
							<option>硕士</option>
							<option>博士</option>
						</select>
					</li>
				</ul>
				<ul class="loan-col1">
					<li ><span>专业 </span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name="umajor" value="<%=ninfo[8] %>" placeholder="" required=""></li>
				</ul>
				<ul class="loan-col1">
					<li ><span>联系电话 </span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name="utel" value="<%=ninfo[9] %>" placeholder="" required=""></li>
				</ul>
				
				<ul class="loan-col1">
					<li ><span>邮箱地址</span></li><label>:</label>
					<li class="loan-list-top"><input type="text" name="other" value="<%=ninfo[10] %>" placeholder="" required=""></li>
				</ul>
				
			</div>
			<div class="picup" style="float:left;width: 440px;height: 354px;position:relative">
				<h4>简历照片上传</h4>
				<img class="img-responsive" style="position:absolute; left:15%;border: 4px solid #A3A3A3;height:200px;width:200px" src="images/<%=ninfo[11] %>" alt="">
				<br><br>
				<script>
                function openWin(url,width,height){
                var phxWin=window.open(url,'','width='+width+',height='+height+',left='+(screen.width-width)/2+',top='+(screen.height-height)/2+'');
                }
				</script>
				<input style="position:absolute; left:25%;top:290px;" type="button" value="点击修改照片" onClick="openWin('fileupl.jsp',400,300)" />
				
			</div>
			<!---->
			
			
			<!---->
			
			
			<div class="sub" style="width:200px;position:relative;">
					<label style="height:50px;width:200px;position:relative;left:750px" class="hvr-sweep-to-right"><input type="submit" value="提交" placeholder="" ></label>
			</div>
			</form>
			<form name="form5" method="post" action="resuemin.jsp">	
			<div class="xiangxi" style="float:left;height:250px;width:100%;top:50px;position:relative">
				
				<h3 style="font-size:1em;">受教育经历简述</h3>
				<ul class="loan-col2" style="width:100%">
					<li style="width:7%;"><span>就读学校</span></li>
					<li style="width:20%;"><input type="text" name="uname" value="无" placeholder="" required=""></li>
					<li style="width:7%;"><span>就读时间</span></li>
					:
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					-
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					
				</ul>
				
				<ul class="loan-col2" style="width:100%">
					<li style="width:7%;"><span>就读学校</span></li>
					<li style="width:20%;"><input type="text" name="uname" value="无" placeholder="" required=""></li>
					<li style="width:7%;"><span>就读时间</span></li>
					:
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					-
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					
				</ul>
				
				<ul class="loan-col2" style="width:100%">
					<li style="width:7%;"><span>就读学校</span></li>
					<li style="width:20%;"><input type="text" name="uname" value="无" placeholder="" required=""></li>
					<li style="width:7%;"><span>就读时间</span></li>
					:
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					-
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					
				</ul>
				
				<ul class="loan-col2" style="width:100%">
					<li style="width:7%;"><span>就读学校</span></li>
					<li style="width:20%;"><input type="text" name="uname" value="无" placeholder="" required=""></li>
					<li style="width:7%;"><span>就读时间</span></li>
					:
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					-
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					
				</ul>
				
			</div>
			
			
			<div class="xiangxi" style="float:left;height:200px;width:100%;top:150px;position:relative">
				
				<h3 style="font-size:1em">工作经历简述</h3>
				<ul class="loan-col2" style="width:100%">
					<li style="width:7%;"><span>工作单位</span></li>
					<li style="width:20%;"><input type="text" name="uname" value="无" placeholder="" required=""></li>
					<li style="width:7%;"><span>就职时间</span></li>
					:
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					-
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					
				</ul>
				<ul class="loan-col2" style="width:100%">
					<li style="width:7%;"><span>工作单位</span></li>
					<li style="width:20%;"><input type="text" name="uname" value="无" placeholder="" required=""></li>
					<li style="width:7%;"><span>就职时间</span></li>
					:
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					-
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					
				</ul>
				<ul class="loan-col2" style="width:100%">
					<li style="width:7%;"><span>工作单位</span></li>
					<li style="width:20%;"><input type="text" name="uname" value="无" placeholder="" required=""></li>
					<li style="width:7%;"><span>就职时间</span></li>
					:
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					-
					<li class="loan-list-top">
						<select style="float:left;"name="ubirthday" class="drop-select1">
							<option value="" disabled selected hidden> 日</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
							<option>21</option>
							<option>22</option>
							<option>23</option>
							<option>24</option>
							<option>25</option>
							<option>26</option>
							<option>27</option>
							<option>28</option>
							<option>29</option>
							<option>30</option>
							<option>31</option>
						</select>
						<select name="ubirthmon" class="drop-select1">
							<option value="" disabled selected hidden> 月</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
						<select name="ubirthyear" class="drop-select1">
							<option value="" disabled selected hidden> 年</option>
							<option>1992</option>
							<option>1991</option>
							<option>1990</option>
							<option>1989</option>
							<option>1988</option>
							<option>1987</option>
							<option>1986</option>
							<option>1985</option>
							<option>1984</option>
							<option>1983</option>
							<option>1982</option>
							<option>1981</option>
							<option>1980</option>
							<option>1979</option>
							<option>1978</option>
							<option>1977</option>
							<option>1976</option>
							<option>1975</option>
							<option>1974</option>
							<option>1973</option>
							<option>1972</option>
							<option>1971</option>
							<option>1970</option>
							<option>1969</option>
							<option>1968</option>
							<option>1967</option>
							<option>1966</option>
							<option>1965</option>
							<option>1964</option>
							<option>1963</option>
							<option>1962</option>
							<option>1961</option>
							<option>1960</option>
						</select>
					</li>
					
				</ul>
			</div>
			
			<div class="sub" style="width:200px;position:relative;top:300px">
					<label style="height:50px;width:200px;position:relative;left:750px" class="hvr-sweep-to-right"><input type="submit" value="提交" placeholder="" ></label>
			</div>
		</form>	
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