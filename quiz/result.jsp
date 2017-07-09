<html>
<body bgcolor=#33E6FF>
<title>RESULT</title>
<link rel="stylesheet" href="style3.css" type="text/css"/>
</head>
Your score is... 
<%
{
    int m=(Integer)session.getAttribute("mark");
	out.println(m);
}
%>
<div class="bu1">
<form action="design.jsp">
<td align="center"><input type="submit" value="back to home page" /><td>
</form>
</div>
</body>
</html>