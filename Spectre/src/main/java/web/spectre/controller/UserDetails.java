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


@WebServlet("/UserDetails")
public class UserDetails extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		UserDao user = new UserDao();
		ArrayList<UserDto> al = user.getDetails();
		RequestDispatcher rd = req.getRequestDispatcher("accSettings.jsp");
		req.setAttribute("List", al);
		rd.forward(req, res);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
