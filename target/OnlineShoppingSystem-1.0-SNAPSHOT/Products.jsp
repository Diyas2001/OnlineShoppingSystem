<%@ page import="com.example.OnlineShoppingSystem.Database.ProductDAO" %>
<%@ page import="com.example.OnlineShoppingSystem.Entity.Products" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="Navbar.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <ul class="nav md-pills nav-justified">
        <li class="nav-item">
            <a class="nav-link" href="Products.jsp">Product list</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="AddProduct.jsp">Add product</a>
        </li>
    </ul>
</div>
<%
    ProductDAO s = new ProductDAO();
    List<Products> list = s.view();
%>
<% for (Products product : list) { %>
<div class="container">
        <div class="card text-center" class>
    <div class="card-header"><%= product.getId()%></div>
    <div class="card-body">
        <h5 class="card-title"><%= product.getName()%></h5>
        <p class="card-text">Price (KZT): <%= product.getPrice()%>
        </p>
        <p class="card-text">Quantity: <%= product.getQuantity()%>
        </p>
        <a href="#" class="btn btn-primary">By</a>
    </div>
</div>
</div>
<% } %>
<br><br><br><br><br><br>
</body>
<%@include file="Footer.jsp"%>
</html>
