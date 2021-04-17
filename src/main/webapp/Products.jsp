<%@ page import="com.example.OnlineShoppingSystem.Database.ProductDAO" %>
<%@ page import="com.example.OnlineShoppingSystem.Entity.Products" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: diyastursunkali
  Date: 15.03.2021
  Time: 04:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ProductDAO s = new ProductDAO();
    List<Products> list = s.view();
%>
<% for (Products product : list) { %>
<div class="card text-center" class>
    <div class="card-header"><%= product.getId()%></div>
    <div class="card-body">
        <h5 class="card-title"><%= product.getName()%></h5>
        <p class="card-text"><%= product.getQuantity()%>
        </p>
        <p class="card-text"><%= product.getPrice()%>
        </p>
        <a href="#" class="btn btn-primary">By</a>
    </div>
</div>
<% } %>
</body>
</html>
