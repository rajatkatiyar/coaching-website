package dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadException;
import javazoom.upload.UploadParameters;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Vector;

//   TABLE NAME   registration

/*#	Name	     Type	      Collation	Attributes	Null	Default	   Comments	            Extra
 * 
 * 
 1	name	     text	      latin1_swedish_ci		No	    None		
 2	email	     varchar(40)  latin1_swedish_ci		No	    None		
 3	password	 varchar(20)  latin1_swedish_ci		No	    None		
 4	image	     blob		                        No	    None		
 5	idPrimary	 int(3)		                        No	    None		                     AUTO_INCREMENT*/

@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/registrations")
public class registraions extends HttpServlet {

	
	Connection con;
	PreparedStatement ps = null;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			InputStream inputStream = null;

			String name = request.getParameter("Name");
			String email = request.getParameter("emailId");
			String pwd = request.getParameter("password");
			Part filePart = request.getPart("img");
			if (filePart != null) {

				System.out.println(filePart.getName());
				System.out.println(filePart.getSize());
				System.out.println(filePart.getContentType());

				// obtains input stream of the upload file
				// the InputStream will point to a stream that contains
				// the contents of the file

				inputStream = filePart.getInputStream();
			}
			/*
			 * System.out.println("     name     " + name);
			 * System.out.println("     email    " + email);
			 * System.out.println("     passeord    " + pwd);
			 */

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/KVmaths", "root", "");
			System.out.println("Connection established           " + con);
			System.out.println("======================================  ");

			ps = con.prepareStatement("insert into registration(name,email,password,image) values (?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pwd);

			if (inputStream != null) {

				ps.setBlob(4, inputStream, (int) filePart.getSize());
			}

			int count = ps.executeUpdate();
			System.out.println("        count   " + count);
			if (count == 1) {
				System.out.println("registration successful       ");
			} else {
				System.out.println("registration unsuccessful       ");
			}// else

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("NewFile.jsp");
		rd.include(request, response);

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
