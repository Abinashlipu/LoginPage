package com.uniquedeveloper.registration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class LoginServlet1
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uemail = request.getParameter("email");
		String upass = request.getParameter("pass");
		HttpSession session = request.getSession();

		if (uemail == null || uemail.equals("")) {
			request.setAttribute("status1", "invalidEmail");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}

		if (upass == null || upass.equals("")) {
			request.setAttribute("status2", "invalidPassword");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?useSSL=false", "root",
					"Abinash@2001");
			PreparedStatement pst = con.prepareStatement("select * from customer where uemail = ? and upass = ?");

			pst.setString(1, uemail);
			pst.setString(2, upass);

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("email", rs.getString("uemail"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("status3", "faileds");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
