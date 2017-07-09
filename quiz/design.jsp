<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>TOP CODER</title>
<link rel="stylesheet" href="style1.css" type="text/css"/>
</head>
	
<div class="wrapper">


<div class="heading">
<h1>
</h1>
</div>
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

<div class="navigation">

	<p><a href="welhome.jsp">Home</a>
	<a href="ret101.jsp">TakeQuiz</a>
	<a href="result.jsp">QuizReport</a>
   	<a href="view.jsp">Myprofile</a>

</div>


<div class="content">
</head>
<body>

<h1>welcome!!!</h1>
<p>The tech sector is booming. If you've used a smartphone or logged on to a computer at least once in the last few years, you've probably noticed this.</p>
	<p>As a result, coding skills are in high demand, with programming jobs paying significantly more than the average position. Even beyond the tech world, an understanding of at least one programming language makes an impressive addition to any resume.</p>
</body>
</div>


<div class="sidebar">

</div>


<div class="footer">
@developed by sandiya,santhiya,pavithra.
</div>
</div>
</body>
</html>