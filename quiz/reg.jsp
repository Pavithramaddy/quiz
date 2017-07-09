<%@page import="java.sql.*"%>
<html>
<body>
<% String s1=request.getParameter("FIRST_NAME");
	String s2=request.getParameter("LAST_NAME");
	String s3=request.getParameter("DOB");
	String s4=request.getParameter("AGE");
	String s5=request.getParameter("GENDER");
	String s6=request.getParameter("STATE");
	String s7=request.getParameter("PIN_CODE");
	String s8=request.getParameter("MOBILE_NO");
	String s9=request.getParameter("EMAIL_ID");
	String s10=request.getParameter("USERNAME");
	String s11=request.getParameter("PASSWORD");
	try {
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root"); 
		Statement s=con.createStatement();
		int r=s.executeUpdate("insert into reg values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"')");
        if (r>0)
		{
        out.println("Data saved successfully");
		}
    } catch (Exception e) {
        out.println(e);
    } 
%>
