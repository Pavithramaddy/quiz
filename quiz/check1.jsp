<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>checking Page</title>
         <%@page import="java.sql.*;" %>


    </head>
    <body>

        <%
        String op = request.getParameter("option");
		if(op!=null)
		{
       try
               {
           Class.forName("com.mysql.jdbc.Driver");
             Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
                          Statement s =c.createStatement();
         ResultSet r=s.executeQuery("select answer from quiz where q_no=1");
        while(r.next())
         {
         String ans=r.getString("answer");
		
		if(op.equals(ans))
             { 
				 String score=score+1;
			 }
			 else
			 { %>
				 <jsp:forward page="ret2.jsp"/>
			 <% }
		}
        }
                  
       catch(Exception e)
               {
           out.println(e);
           }
		}
		   <jsp:forward page="ret2.jsp"/>
       %>

        </body>
</html>
