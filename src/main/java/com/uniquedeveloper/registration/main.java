package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class main
 */
@WebServlet("/index")
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
		String clgName = request.getParameter("dropdown1");
		String clgpass = request.getParameter("password");
		String hosNo = request.getParameter("dropdown2");
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root",
					"Abinash@2001");

			PreparedStatement pst = con
					.prepareStatement("select * from college where clgName = ? and clgpass = ? and hosNo = ?");

			pst.setString(1, clgName);
			pst.setString(2, clgpass);
			pst.setString(3, hosNo);

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				request.setAttribute("status", "success");
				RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("status", "failed");
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
}

}
