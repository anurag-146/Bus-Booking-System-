package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Loginform")
public class Login extends HttpServlet 
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	resp.setContentType("text/html");
	PrintWriter out = resp.getWriter();
	String myemail = req.getParameter("email1");
	String mypass = req.getParameter("pass1");
	HttpSession session = req.getSession();
	
	
	
	
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yt_demo", "root", "Password");
		
		PreparedStatement ps = con.prepareStatement("select * from registers where email=? and password=?");
		
		ps.setString(1, myemail);
		ps.setString(2, mypass);
		
		ResultSet rs = ps.executeQuery();
		if (rs.next()) 
		{
			req.setAttribute("status", "success");
			RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
		}
		else
		{
		
			out.print("<h3 style ='color:red'> Email id and Password didn't match </h3>");
			req.setAttribute("status", "failed");
			RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
			rd.include(req, resp);
			
			
		}
	} 
	catch (Exception e) 
	{
		e.printStackTrace();
		
		out.print("<h3 style ='color:red'>"+e.getMessage()+"</h3>");
		req.setAttribute("status", "failed");
		RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
		rd.include(req, resp);
	}
}
}
