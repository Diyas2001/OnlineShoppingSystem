<%@ page import="com.example.OnlineShoppingSystem.Database.UserDAO" %>
<%@ page import="com.example.OnlineShoppingSystem.Entity.Users" %>
<%@ page import="java.util.List" %>
<%@include file="Header.jsp"%>
<html>
<head>
    <title>List Sellers</title>
</head>
<body>
<div class="container">
    <ul class="nav md-pills nav-justified">
        <li class="nav-item">
            <a class="nav-link active" href="ListSellers.jsp">Sellers list</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="AddSeller.jsp">Add Seller</a>
        </li>
    </ul>
</div>
<%
    UserDAO s = new UserDAO();
    List<Users> list = s.view();
%>
<div class="container">
<table class="table">
    <thead class="black white-text">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Password</th>
        <th scope="col">Delete</th>

    </tr>
    </thead>
    <tbody>
    <% for (Users user : list) {
        if  (user.getRole().equals("seller")) { %>
    <form action="deleteSeller.jsp" method="post">

    <tr>
        <th scope="row"><input readonly name="id" value="<%= user.getId() %>"></input></th>
        <td><input readonly name="name" value="<%= user.getName() %>"></input></td>
        <td><input readonly name="email" value="<%= user.getEmail() %>"></input></td>
        <td><input readonly name="password" value="<%= user.getPassword() %>"></input></td>
        <td><button type="button" class="btn btn-outline-danger waves-effect">Delete</button>
        </td>
    </tr>
    </form>
    <% }} %>
    </tbody>
</table>
</div>
</body>
<%@include file="Footer.jsp"%>
</html>
