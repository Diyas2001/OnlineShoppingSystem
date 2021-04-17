package com.example.OnlineShoppingSystem;

import com.example.OnlineShoppingSystem.Database.UserDAO;
import com.example.OnlineShoppingSystem.Entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletRegistration", value = "/ServletRegistration")
public class ServletRegistration extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        Users customer = new Users (id, name, email, password, role);
        UserDAO.save(customer);
        response.sendRedirect("Login.jsp");

    }
}
