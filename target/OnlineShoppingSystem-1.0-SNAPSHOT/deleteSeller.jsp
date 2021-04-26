<%@ page import="com.example.OnlineShoppingSystem.Database.UserDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="com.example.OnlineShoppingSystem.Entity.Users">
<jsp:setProperty property="id" name="user" value='<%=Integer.parseInt(request.getParameter("id"))%>'/>
<jsp:setProperty property="name" name="user" value='<%=request.getParameter("name")%>'/>
<jsp:setProperty property="email" name="user" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty property="password" name="user" value='<%=request.getParameter("password")%>'/>
</jsp:useBean>
<%
    UserDAO service1 = new UserDAO();
    if (service1.delete(user.getId()) == 1) {
        request.getRequestDispatcher("ListSellers.jsp").forward(request, response);
    }
%>