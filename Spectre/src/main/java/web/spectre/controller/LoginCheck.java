package web.spectre.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.spectre.model.UserDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String user = request.getParameter("uname"); // request -> and it contains all the information sent by the
														// client (browser) to the server.
		String pwd = request.getParameter("pwd");

		UserDao us = new UserDao();
		int x = us.checkLogin(user, pwd);
		if (x != 0) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			response.sendRedirect("AdminSuccess.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			request.setAttribute("msg", "Incorrect Username or Password!");
			rd.forward(request, response);
		}
	}
}
//		
//		if(user.equals("Lb123") && pwd.equals("lavaweb")) {
//			//out.println("Login Successful!");
//			response.sendRedirect("AdminSuccess.jsp");//response -> it is used to send the server's response back to the client.
//		}else if(user == "" && pwd == "") {
//			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
//			request.setAttribute("msg", "Please Enter Username or Password");
//			rd.forward(request, response);
//		}
//		else {
//			//out.println("Login Failed!");
//			//response.sendRedirect("failed.jsp");
//		RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
//			request.setAttribute("msg", "Incorrect Username or Password");
//			rd.forward(request, response);
//		}
//		//doGet(request, response);
//	}


