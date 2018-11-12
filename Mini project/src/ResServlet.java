import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResServlet
 */
@WebServlet("/ResServlet")
public class ResServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ResServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		

		String book, book1, test;
		boolean pres;

		test = request.getParameter("vouloir");
		book = request.getParameter("book");
		request.getSession().setAttribute("book", book);
		Reservation reservation = new Reservation();
		if (test != null) {
			book1 = request.getParameter("nom");
			request.getSession().setAttribute("book1", book1);
			request.getSession().setAttribute("test", test);
			response.sendRedirect("confirmation.jsp");
			

		} else {
			reservation.addlivre();
			pres = reservation.cherchLivre(book);

			request.getSession().setAttribute("livre", reservation.getLivre());
			if (pres == true) {
				request.getSession().setAttribute("present", true);
			} else {
				request.getSession().setAttribute("present", false);
			}
			response.sendRedirect("book.jsp");
		}

	}

}
