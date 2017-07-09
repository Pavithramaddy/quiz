

<html>
    <head>

        <title>Login</title>
    </head>
	<div style="float:left;height:150px;width:30%;margin-left:35%;margin-top: 20%;margin-bottom: 2%;border-radius:20px 20px 20px 20px;">
    <body bgcolor="pink">
        <form method="post" action="validate.jsp">
            <center>
            <table border="5" cellpadding="10" cellspacing="10">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="user" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" />
                          
                            <input type="reset" value="Reset" />
							<a href ="signup.html">New user??click here to register</a>
                        </td>                        
                    </tr>                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>