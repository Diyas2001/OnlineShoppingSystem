<%@include file="Header.jsp"%>
<html>
<head>
    <title>Add Seller Page</title>
</head>
<body>
<div class="container">
    <ul class="nav md-pills nav-justified">
        <li class="nav-item">
            <a class="nav-link" href="ListSellers.jsp">Sellers list</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="AddSeller.jsp">Add Seller</a>
        </li>
    </ul>
</div>
<div class="container" style="width: 500px">
    <form method="post" action="/ServletLogin">
        <!-- 2 column grid layout with text inputs for the first and last names -->
        <div class="row mb-4">
            <div class="col">
                <div class="form-outline">
                    <input type="text" id="form3Example1" class="form-control" />
                    <label class="form-label" for="form3Example1" name="id">ID</label>
                </div>
            </div>
            <div class="col">
                <div class="form-outline">
                    <input type="text" id="form3Example2" class="form-control" />
                    <label class="form-label" for="form3Example2" name="name">Name</label>
                </div>
            </div>
        </div>

        <!-- Email input -->
        <div class="form-outline mb-4">
            <input type="email" id="form3Example3" class="form-control" />
            <label class="form-label" for="form3Example3" name="email">Email address</label>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <input type="password" id="form3Example4" class="form-control" />
            <label class="form-label" for="form3Example4" name="password">Password</label>
        </div>

        <div class="form-outline mb-4">
            <select class="browser-default custom-select" name="role">
                <option selected value="seller">Seller</option>
            </select>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Sign up</button>

    </form>
</div>
</body>
<%@include file="Footer.jsp"%>
</html>
