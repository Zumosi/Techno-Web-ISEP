<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="re.Reservation"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<%
		if (session.getAttribute("session") == null) {
			response.sendRedirect("index.jsp");
		} else {
			String connect = session.getAttribute("session").toString();
			if (connect.equals("false") == true) {
				response.sendRedirect("index.jsp");
			}
		}
	%>

	<%=session.getAttribute("test")%>
	</br>
	<%
		Reservation reservation = new Reservation();

		String book2 = session.getAttribute("book1").toString();
		String valeur = session.getAttribute("test").toString();
		if (valeur.equals("non") == true) {
			reservation.addlivre();
			out.println("Ton livre n'a pas été ajouté");
			out.println("</br>");
			out.println(reservation.getLivre());

		} else {
			reservation.addlivre();
			reservation.reserver(book2);
			out.println("Ton livre a été ajouté");
			out.println("</br>");
			out.println(reservation.getLivre());
		}
	%>
	</br>
	<%
		String book1 = session.getAttribute("book1").toString();
	%>
	</br>
<p>Pour quitter votre session </p>
<a href="http://localhost:8085/Mini_project/AuthServlet?session=non">Clicker ici</a>
</body>
</html>