<%@ page import="com.example.OnlineShoppingSystem.Database.UserDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="com.example.OnlineShoppingSystem.Entity.Users"></jsp:useBean>
<jsp:setProperty property="id" name="user" value='<%=Integer.parseInt(request.getParameter("id"))%>'/>
<jsp:setProperty property="name" name="user" value='<%=request.getParameter("name")%>'/>
<jsp:setProperty property="email" name="user" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty property="password" name="user" value='<%=request.getParameter("password")%>'/>
<jsp:setProperty property="role" name="user" value='<%=request.getParameter("role")%>'/>
<%
    UserDAO service = new UserDAO();
    if (service.save(user) == 1) {
        request.getRequestDispatcher("successfulPage.jsp").forward(request, response);
    }
%>