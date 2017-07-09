<%@ page import="java.sql.*"%>
<html>
<body bgcolor="pink">
<form action="Evaluate.jsp" method="post">
<%
try
{
    int q=(Integer)session.getAttribute("q_no");
	Class.forName("com.mysql.jdbc.Driver");
    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
    Statement s=c.createStatement();
	ResultSet r=s.executeQuery("select q_no,question,option1,option2,option3,option4  from quiz where q_no="+q);
	
	while(r.next())
    {
		String qs1 = r.getString("q_no");
		String qs2 = r.getString("question");
		String qo1 = r.getString("option1");
		String qo2 = r.getString("option2");
		String qo3 = r.getString("option3");
		String qo4 = r.getString("option4");
%>
		
        <tr>
	<td><%=qs1%></td>
	<td><%=qs2%></td><br>
		
        <td><input name="opt1" value="1" type="radio"/><%=qo1%></td><br>
        <td><input name="opt1" value="2" type="radio"/><%=qo2%></td><br>	
		<td><input name="opt1" value="3" type="radio"/><%=qo3%></td><br>
		<td><input name="opt1" value="4" type="radio"/><%=qo4%></td><br>
		</tr><br>
		<tr>
		<td align="right"><input type="submit" value="next" /></td>
			
	</tr>
		
		
        <%
    
	}
			
}
catch(Exception e)
{
    out.print(e);
}
%>

</form>
</body>
</html>
