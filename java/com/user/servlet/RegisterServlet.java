package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBCon;

import java.io.IOException;


import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
//			String check = req.getParameter("check");

			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);

			HttpSession session = req.getSession();

//			if (check != null) {				
				UserDAOImpl dao = new UserDAOImpl(DBCon.getConnection());
				boolean f = dao.userRegister(us);

				
				if (f) {
				    // Registration success
				    System.out.println("User Register Success..");
				    session.setAttribute("succMsg", "Registration Successfully..");
				    resp.sendRedirect("/webapp/admin/home.jsp");
				} else {
				    // Registration failure
				    System.out.println("Something wrong on server..");
				    session.setAttribute("failedMsg", "Something wrong on server..");
				    resp.sendRedirect("register.jsp");
				}


		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}