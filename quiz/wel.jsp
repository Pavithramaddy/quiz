<%@ page language="java" import="java.sql.*"%>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="style.css">	
	</head>	
	
<body >
<% if((String)session.getAttribute("user")!=null)
{%>
	<div id="top">
		<%="Welcome "+(String)session.getAttribute("user")+" "%><a href="logout.jsp">LogOut</a>
	</div>
<%}
else
{%>
				
<div id="top">
	<%=""%>
</div>
<%}%>
	
<div id="menu">
	<div class="menu-content" id="home"><a href="wel.jsp">Home</a></div>
	<div class="menu-content" id="quiz"><a href="ret101.jsp">Take Quiz</a></div>
	<div class="menu-content" id="quiz_report"><a href="result.jsp">Quiz Report</a></div>
   	<div class="menu-content" id="profile"><a href="view.jsp">My profile</a><div>
</div>
<div  id="bdcontent">
	<div id="img1">
	<img src="images/1.png" alt="1" width="100" height="200"/></div>
	<div id="home-content" style="padding:10px;"><br>
	<h2>WELCOME</h2>
	<p>The tech sector is booming. If you've used a smartphone or logged on to a computer at least once in the last few years, you've probably noticed this.</p>
	<p>As a result, coding skills are in high demand, with programming jobs paying significantly more than the average position. Even beyond the tech world, an understanding of at least one programming language makes an impressive addition to any resume.</p>
	</div>
	</div>
						
</div>
</body>
</html>