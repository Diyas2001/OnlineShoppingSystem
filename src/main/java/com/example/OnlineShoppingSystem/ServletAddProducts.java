package com.example.OnlineShoppingSystem;

import com.example.OnlineShoppingSystem.Database.ProductDAO;
import com.example.OnlineShoppingSystem.Database.UserDAO;
import com.example.OnlineShoppingSystem.Entity.Products;
import com.example.OnlineShoppingSystem.Entity.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletAddProducts", value = "/ServletAddProducts")
public class ServletAddProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Products products = new Products (id, name, price, quantity);
        ProductDAO.save(products);
        response.sendRedirect("Products.jsp");
    }
}
