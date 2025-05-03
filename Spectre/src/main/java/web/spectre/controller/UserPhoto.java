package web.spectre.controller;

import java.io.IOException;

import com.spectre.model.UserDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/UserPhoto")
public class UserPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		
		UserDao model = new UserDao();
		byte[] photo = model.getphoto(id);
		ServletOutputStream sos = null;
		sos = response.getOutputStream();
		sos.write(photo);
	}

	

}
