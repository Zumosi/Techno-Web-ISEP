<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>

<%
	if(session.getAttribute("session")==null){
	response.sendRedirect("index.jsp");
} else {
		String connect = session.getAttribute("session").toString();
		if (connect.equals("false") == true) {
			response.sendRedirect("index.jsp");
		}
	}
%>
	<form action="ResServlet" method="post">

		<div>
			<label> Book : </label> 
			<input type="text" name="book" id="book" />
		</div>
	</form>
	
	<p>Pour quitter votre session </p>
	<a href="http://localhost:8085/Mini_project/AuthServlet?session=non">Clicker ici</a>
	
</body>
</html>