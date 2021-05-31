package servlets;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.Connect;
import classes.Teses;

/**
 * Servlet implementation class CreateTeses
 */
@WebServlet("/CreateTeses")
public class CreateTeses extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateTeses() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("confId"));
		request.setAttribute("confId", id);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("confId"));
		String text =  request.getParameter("teses");
		int user = (Integer)session.getAttribute("userId");
		Teses tese = new Teses(id,user,text,1);
		Connect.insertTese(Connect.getConnect(), tese);
		response.sendRedirect(request.getContextPath()+"/Profile");
		//doGet(request, response);
	}

}
