package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public void Init(ServletConfig config) throws ServletException{
    	super.init(config);
    	ServletContext ctx=config.getServletContext();
    	String name=ctx.getInitParameter("user");
    	System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@          "+name);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}

}
