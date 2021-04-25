<%@include file="Navbar.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="container" style="width: 500px">
    <form method="post" action="ServletAddProducts">
        <!-- 2 column grid layout with text inputs for the first and last names -->
        <div class="row mb-4">
            <div class="col">
                <div class="form-outline">
                    <input type="text" id="form3Example1" class="form-control" name="id"/>
                    <label class="form-label" for="form3Example1" >ID</label>
                </div>
            </div>
            <div class="col">
                <div class="form-outline">
                    <input type="text" id="form3Example2" class="form-control" name="name"/>
                    <label class="form-label" for="form3Example2" >Name</label>
                </div>
            </div>
        </div>

        <!-- Email input -->
        <div class="form-outline mb-4">
            <input type="text" id="form3Example3" class="form-control" name="price"/>
            <label class="form-label" for="form3Example3" >Price</label>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <input type="text" id="form3Example4" class="form-control" name="quantity"/>
            <label class="form-label" for="form3Example4" >Quantity</label>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Add product∆¥</button>

    </form>
</div>

</body>
<%@include file="Footer.jsp"%>
</html>
