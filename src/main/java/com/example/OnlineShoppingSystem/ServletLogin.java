package com.example.OnlineShoppingSystem;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletLogin", value = "/ServletLogin")
public class ServletLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User u = new UserService().userLogin(request.getParameter("id"),request.getParameter("name"),request.getParameter("status"),request.getParameter("email"), request.getParameter("password"));
        if(u != null) {
            HttpSession session = request.getSession();
            if (u.getStatus().equals("admin")) {
                session.setAttribute("admin", u);
                response.sendRedirect("Admin.jsp");
            } else if (u.getStatus().equals("seller")) {
                session.setAttribute("seller", u);
                response.sendRedirect("Seller.jsp");
            } else if (u.getStatus().equals("customer")) {
                session.setAttribute("customer", u);
                response.sendRedirect("Customer.jsp");
            }
        }else {
            response.sendRedirect("./login.jsp");
        }
    }
}
