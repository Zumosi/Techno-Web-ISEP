<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>
<body>

	<form action="AuthServlet" method="post">
			
			<div>
			<label > Username: </label> 
			<input type="text" name="login" id="login" />    
			</div>
			
			<div>
				<label >Password: </label> 
				<input type="password" name="mdp" id="mdp" />
			</div>
		</fieldset>
		
		<input type="submit" id="bouton" value="Login in"/>
	</form>
</body>
</html>