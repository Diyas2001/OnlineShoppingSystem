<%@ page import="com.example.OnlineShoppingSystem.Database.ProductDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="product" class="com.example.OnlineShoppingSystem.Entity.Products">
    <jsp:setProperty property="id" name="product" value='<%=Integer.parseInt(request.getParameter("id"))%>'/>
    <jsp:setProperty property="name" name="product" value='<%=request.getParameter("name")%>'/>
    <jsp:setProperty property="price" name="product" value='<%=Integer.parseInt(request.getParameter("price"))%>'/>
    <jsp:setProperty property="quantity" name="product" value='<%=Integer.parseInt(request.getParameter("quantity"))%>'/>
</jsp:useBean>
<%
    ProductDAO service = new ProductDAO();
    if (service.delete(product.getId()) == 1) {
        request.getRequestDispatcher("Products.jsp").forward(request, response);
    }
%>