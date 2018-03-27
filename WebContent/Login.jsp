<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%!private static final int BUFFER_SIZE = 4096;%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	PreparedStatement ps = null;
	Connection con = null;
	Blob bl = null;
	int bytesRead = -1;
	int id = 0;
	String name = null;
	String email = request.getParameter("userName");
	String pwd = request.getParameter("password");
	int js = 1;

	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/Kvmaths", "root", "");
	System.out.println("Connection established           " + con);
try{
	ps = con.prepareStatement("select * from registration where email=? AND password=?");
	ps.setString(1, email);
	ps.setString(2, pwd);
	ResultSet rs = ps.executeQuery();

	System.out.println(" resultset   actual ===+++===========" + rs);

	rs.next();

	id = rs.getInt("id");
	name = rs.getString("name");

	System.out.println(" resultset    ==============" + rs);
	System.out.println(" id is    ==============" + id);
}
catch(Exception e){
	js=0;
	System.out.println("regiatration failed");
	
}
if(js==0){
	response.setContentType("text/plain");
	response.setCharacterEncoding("UTF-8");
	response.getWriter().write("regiatration failed");
}
%>
