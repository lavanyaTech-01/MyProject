package web.spectre.controller;

import java.io.IOException;
import java.io.InputStream;

import com.spectre.dto.UserDto;
import com.spectre.model.UserDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/Registration")
@MultipartConfig(maxFileSize = 2000000)
public class Registration extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("fullname");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String avatar = request.getParameter("avatar");
		Part photo = request.getPart("photo");
        
		
		InputStream istr = null;

		if (photo.getSize() > 0) {
			istr = photo.getInputStream();
		}
		UserDto ud = new UserDto(name, age, gender, uname, pwd);
		UserDao user = new UserDao();
		int x = user.insertRecord(ud, istr);
		if (x != 0) {
			request.getSession().setAttribute("user", uname);
			response.sendRedirect("AdminSuccess.jsp");
		}
		else {
	        // If insertion fails, forward to registration page with an error message
	        request.setAttribute("msg", "Registration failed. Please try again.");
	        RequestDispatcher rm = request.getRequestDispatcher("reg.jsp");
	        rm.forward(request, response);
	    }
//		else {
//			RequestDispatcher rm = request.getRequestDispatcher("reg.jsp");
//			rm.forward(request, response);
//		}
//		else if (name == "" && gender == "" && uname == "" && pwd == "") {
//			RequestDispatcher rm = request.getRequestDispatcher("reg.jsp");
//			request.setAttribute("msg", "Enter all fields");
//			rm.forward(request, response);
//		}
	
	}

}
