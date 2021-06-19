package servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import classes.Connect;
import classes.Teses;


/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
@MultipartConfig
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private static final String UPLOAD_DIRECTORY = "upload";
	 private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
	 private static final int MAX_FILE_SIZE      = 1024 * 1024 * 5; // 40MB
	 private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 6; // 50MB
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String description = request.getParameter("description"); // Retrieves <input type="text" name="description">
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("confId"));
		int user = (Integer)session.getAttribute("userId"); 
		Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
	    String fileName =(user+"_"+Paths.get(filePart.getSubmittedFileName()).getFileName().toString()); // MSIE fix.
	    File uploads = new File("D:/serverfiles");
	    File file = new File(uploads, fileName);
	    try (InputStream input = filePart.getInputStream()) {
	        Files.copy(input, file.toPath());
	    }
	  
		request.setCharacterEncoding("utf-8");
		Teses tese = new Teses(id,user,fileName,1);
		Connect.insertTese(Connect.getConnect(), tese);
		response.sendRedirect(request.getContextPath()+"/Profile");
	    
	}

}
