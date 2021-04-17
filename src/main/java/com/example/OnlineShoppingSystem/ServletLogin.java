package com.example.OnlineShoppingSystem;

import com.example.OnlineShoppingSystem.Database.UserDAO;
import com.example.OnlineShoppingSystem.Entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

public class ServletLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users u = new UserDAO().authenticate(request.getParameter("email"), request.getParameter("password"), request.getParameter("role"));
        if(u != null) {
            HttpSession session = request.getSession();
            if (u.getRole().equals("admin")) {
                session.setAttribute("admin", u);
                response.sendRedirect("Admin.jsp");
            } else if (u.getRole().equals("seller")) {
                session.setAttribute("seller", u);
                response.sendRedirect("Seller.jsp");
            } else if (u.getRole().equals("customer")) {
                session.setAttribute("customer", u);
                response.sendRedirect("Customer.jsp");
            }
        }

    }
}
