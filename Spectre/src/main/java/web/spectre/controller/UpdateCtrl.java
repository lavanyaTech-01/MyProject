package web.spectre.controller;

import java.io.IOException;
import java.util.ArrayList;

import com.spectre.dto.UserDto;
import com.spectre.model.UserDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCtrl")
public class UpdateCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		UserDao ud1 = new UserDao();
		UserDto al = ud1.getUserDetails(id);
		RequestDispatcher rd = request.getRequestDispatcher("UpdateList.jsp");
		request.setAttribute("Update", al);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String fullname = request.getParameter("fullname");
		int age =Integer.parseInt(request.getParameter("age")); 
		String gender = request.getParameter("gender");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserDto us = new UserDto(fullname, age, gender, username, password);
		us.setUid(id);
		
		UserDao ud = new UserDao();
		int i = ud.getUpdate(us);
		ArrayList<UserDto> al = ud.getDetails();
		
		RequestDispatcher rd = request.getRequestDispatcher("accSettings.jsp");
		request.setAttribute("List", al);
		if(i!=0) {
			request.setAttribute("msg", "Patient Record Updated");
		} else {
			request.setAttribute("msg", "Patient Record Not Update");
		}
		rd.forward(request, response);
		
		
	}

}
