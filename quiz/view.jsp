<%@ page import="java.sql.*"%>
<html>
<body bgcolor=#FFDA33>
<head>
    <title>PROFILE</title>
    <link href="style3.css" rel="stylesheet" type="text/css" />
</head>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
    Statement s=c.createStatement();
    ResultSet r=s.executeQuery("select * from reg");
    %>
	<div class="img">
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

  
    <% while(r.next())
    {
        %>
		<div class="pro">
        <tr>
<td>FIRST NAME:				<%=r.getString("FIRST_NAME")%></td><br>
<td>LAST_NAME:				<%=r.getString("LAST_NAME")%></td><br>
<td>DATE OF BIRTH:			<%=r.getString("DOB")%></td><br>
<td>AGE:					<%=r.getString("AGE")%></td><br>
<td>GENDER:					<%=r.getString("GENDER")%></td><br>
<td>STATE:					<%=r.getString("STATE")%></td><br>
<td>PIN_CODE:				<%=r.getString("PIN_CODE")%></td><br>
<td>MOBILE_NO:				<%=r.getString("MOBILE_NO")%></td><br>
<td>EMAIL_ID:				<%=r.getString("EMAIL_ID")%></td><br>
<td>USERNAME:				<%=r.getString("USERNAME")%></td><br>
<td>PASSWORD:				<%=r.getString("PASSWORD")%></td><br> 
</tr><br>
</div>

<div class="bu"> 
<form action="design.jsp">
<td  align="center"><input type="submit" value="back to home page" /><td>
</form>
</div>		

        <%
    }
}
catch(Exception e)
{
    out.print(e);
}
%>

</body>
</html>
