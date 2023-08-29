package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/contact-submit")
public class ContactSubmitServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String message = req.getParameter("message");

            // You can now process the submitted data as needed, such as sending an email to the contact email address, 
            // storing the message in a database, etc.

            // For now, let's print the received data to the console
            System.out.println("Name: " + name);
            System.out.println("Email: " + email);
            System.out.println("Message: " + message);

            // Assuming successful submission, you can redirect the user to a confirmation page
            req.getSession().setAttribute("successMsg", "Thank you for contacting us! We will get back to you soon.");
            resp.sendRedirect("contact.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMsg", "An error occurred while submitting the form.");
            req.getRequestDispatcher("contact.jsp").forward(req, resp);
        }
    }
}
