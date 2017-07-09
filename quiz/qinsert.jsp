<%@page import="java.sql.*"%>
<html>
<body bgcolor="pink">
<%String s1=request.getParameter("q_no");
String s2=request.getParameter("question");
String s3=request.getParameter("option1");
String s4=request.getParameter("option2");
String s5=request.getParameter("option3");
String s6=request.getParameter("option4");
String s7=request.getParameter("answer");

if((s1!=null)&&(s2!=null)&&(s3!=null)&&(s4!=null)&&(s5!=null)&&(s6!=null)&&(s7!=null))
{
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
        Statement s=c.createStatement();
        int r=s.executeUpdate("insert into quiz values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
        if(r>0)
        {
            out.print("values inserted");
        }
    }
    catch(Exception e)
    {
        out.print(e);
    }
}
else
{
    response.sendRedirect("ret.jsp");
}
%>
</body>
</html>
