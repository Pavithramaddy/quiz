<%@ page import="java.sql.*"%>
<html>
<body bgcolor="pink">
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
    Statement s=c.createStatement();
    ResultSet r=s.executeQuery("select * from quiz");
    %>
    
    <% while(r.next())
    {
        %>
        <tr>
	<td><%=r.getString("q_no")%></td>
	<td><%=r.getString("question")%></td>
        <td><%=r.getString("option1")%></td>
        <td><%=r.getString("option2")%></td>
        <td><%=r.getString("option3")%></td>
        <td><%=r.getString("option4")%></td>
	</tr>
        <%
    }
}
catch(Exception e)
{
    out.print(e);
}
%>
</table></center>
</body>
</html>
