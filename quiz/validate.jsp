<%@ page import ="java.sql.*" %>
<%
    try{
        String user = request.getParameter("user");   
        String pass= request.getParameter("pass");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");    
		PreparedStatement ps = conn.prepareStatement("Select user,pass from login where user=? and pass=?");
		ps.setString(1,user);
		ps.setString(2,pass);
		
		int q=1;
		int m=0;
		ResultSet r= ps.executeQuery();                        	
        if(r.next())  
		{
	
			session.setAttribute("user",user);
			session.setAttribute("q_no",q);
			session.setAttribute("mark",m);
				
				response.sendRedirect("design.jsp");
		}

			else
			{
				response.sendRedirect("login.jsp");
			}
				
		}
   catch(Exception e)
   {       
       out.println("Something went wrong !! Please try again");       
   }      
%>
