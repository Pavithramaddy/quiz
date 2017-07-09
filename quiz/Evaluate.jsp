<%@ page import="java.sql.*"%>
<html>
<body>
<%
try
{
	String a1=request.getParameter("opt1");
    int q1=(Integer)session.getAttribute("q_no");
	int m1=(Integer)session.getAttribute("mark");
		
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
    Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select answer from quiz where q_no="+q1); 
    
	if(rs.next())
	{
		String ans=rs.getString("answer");
		out.println(ans);
		out.println(a1);
	
		
		if(ans.equals(a1))
		{
			m1++;
		}
		out.println(m1);
	}
	session.setAttribute("mark",m1);
	session.setAttribute("q_no",q1+1);
	if(q1<10)
	{
	%>
	
	<%@ include file="ret101.jsp"%>
<%
	}
	else
	{
	%>	
	<jsp:forward page="result.jsp"/>
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
