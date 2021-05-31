package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.Connect;
import classes.User;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String login=request.getParameter("login");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		User check=Connect.getUser(Connect.getConnect(), login);
		if(check==null) {
		User user = new User(login,pass,name,email);
		Connect.insertUser(Connect.getConnect(), user);
		session.setAttribute("msg", "Успішно зареєстровано");
		}else {
			session.setAttribute("msg", "Даний логін вже занято");
		}
		response.sendRedirect(request.getContextPath()+"/signup.jsp");
	}

}
