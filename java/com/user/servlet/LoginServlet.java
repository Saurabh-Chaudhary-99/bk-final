package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDAO;
import com.DAO.UserDAOImpl;
import com.DB.DBCon;
import com.entity.User;
import com.util.DBConnection;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAOImpl(DBConnection.getConn());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	UserDAOImpl dao=new UserDAOImpl(DBCon.getConnection());
        	
        	HttpSession session=req.getSession();
        	
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            
            if("admin@gmail.com".equals(username)&& "admin".equals(password)) {
            	User us= new User();
            	session.setAttribute("userobj",us);
            	response.sendRedirect("admin/home.jsp");
            }else {
            	
            	User us=dao.Login(username, password);
            	if(us!=null)
            	{
            		session.setAttribute("userobj", us);
            		response.sendRedirect("home.jsp");
            	}else {
            		session.setAttribute("failedMsg","username or password invalid");
            		response.sendRedirect("login.jsp");
            	}
            	response.sendRedirect("home.jsp");
            	}
       
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
