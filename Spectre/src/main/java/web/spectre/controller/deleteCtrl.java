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

@WebServlet("/deleteCtrl")
public class deleteCtrl extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		UserDao ud = new UserDao();
		int i = ud.deleteRecord(id);
		ArrayList<UserDto> al = ud.getDetails();
		
		RequestDispatcher rd = request.getRequestDispatcher("accSettings.jsp");
		if(i != 0) {
		   request.setAttribute("msg", "Record Deleted Successfuly!");
		   request.setAttribute("List", al);
		}else {
			 request.setAttribute("msg", "Record Not Deleted");
			 request.setAttribute("List", al);
		}
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
