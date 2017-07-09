<%@ page import="java.sql.*"%>
<html>
<body bgcolor="pink">
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
    Statement s=c.createStatement();
    ResultSet r=s.executeQuery("select q_no,question,option1,option2,option3,option4  from quiz where q_no=1");
    %>
    
    <% while(r.next())
    {
        %>
		<form action="sol.jsp">
        <tr>
	<td><%=r.getString("q_no")%>
	<td><%=r.getString("question")%></td><br>

        <td><input name="option"value="<%=r.getString("option1")%>"type="radio"/><%=r.getString("option1")%></td><br>
        <td><input name="option"value="<%=r.getString("option2")%>"type="radio"/><%=r.getString("option2")%></td><br>	
		<td><input name="option"value="<%=r.getString("option3")%>"type="radio"/><%=r.getString("option3")%></td><br>
		<td><input name="option"value="<%=r.getString("option4")%>"type="radio"/><%=r.getString("option4")%></td><br>
		</tr><br>
	
        <%
    }
}
catch(Exception e)
{
    out.print(e);
}
%>
<input type="submit"value="submit"><br>	
</form>
</body>
</html>
