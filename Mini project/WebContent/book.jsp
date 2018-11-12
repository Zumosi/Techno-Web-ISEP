<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		if (session.getAttribute("present").equals(true)) {
			out.println("Ton livre est présent dans notre liste");
		} else {
			out.println("Ton livre n'est pas présent dans notre liste");
		}
	%>
</br>
	<%=session.getAttribute("livre")%>
</br>
	<%String book1= session.getAttribute("book").toString();%>
<p>Souhaitez-vous réserver ce livre ?</p>
	<form action="ResServlet" method="post">

		<div>
			 <input type="radio" name="vouloir" id="oui" value="oui"/> <label for="oui"> Oui</label>
			 <input type="radio" name="vouloir" id="non" value="non"/> <label for="non"> Non</label>
			<input type="hidden" name="nom" id="nom" value="<%= book1 %>" />
		</div>
		<input type="submit" value="Envoyer" />
	</form>

	<p>Vous voulez faire une autre recherche ?</p>
	<form action="ResServlet" method="post">

		<div>
			<label> Book : </label> <input type="text" name="book" id="book" />
		</div>
	</form>
<p>Pour quitter votre session </p>
<a href="http://localhost:8085/Mini_project/AuthServlet?session=non">Clicker ici</a>

	
</body>
</html>