<%@include file="Header.jsp" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js" integrity="sha512-Bbn2GxMX2ePx4if/heU6eS4avbu2ac+V1q2jb4mlh1WofyrKV/vm6/mMWmuzgoHQlxvgg7dPuyTtTZSX/Zgk3Q==" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.css" integrity="sha512-aQX0wElRuvqZ1bVvsknO9jDXwvVI71vwYLuEDZ8QqMJxPozZPPCCmylpHx4ngmeIz7Bg6FfE4Ay+CfDVFqjy+A==" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.rtl.min.css" integrity="sha512-1jEHno00Q8OCRLTUdV5W9iRZg2OqH/KHF1OUlC++jaz4x3S010/dZEZE4tVMnV5GbSLKxf86qbLxLbKdAhJ56w==" crossorigin="anonymous" />
    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.css"
            rel="stylesheet"
    />
</head>
<br><br>
<body>
<div class="container" style="width: 500px">
<form method="post" action="ServletLogin">

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

    <!-- Role input -->

    <div class="form-outline mb-4">
    <select class="browser-default custom-select" name="role">
        <option selected>Open this select menu</option>
        <option value="admin">Admin</option>
        <option value="seller">Seller</option>
        <option value="customer">Customer</option>
    </select>
    </div>
    <!-- Checkbox -->
    <div class="form-check d-flex justify-content-center mb-4">
        <input
                class="form-check-input me-2"
                type="checkbox"
                value=""
                id="form2Example3"
                checked
        />
        <label class="form-check-label" for="form2Example3">
            Subscribe to our newsletter
        </label>
    </div>

    <!-- Submit button -->
    <button type="submit" class="btn btn-primary btn-block mb-4">Sign up</button>

    <!-- Register buttons -->
    <div class="text-center">
        <p>or sign up with:</p>
        <button type="button" class="btn btn-primary btn-floating mx-1">
            <i class="fab fa-facebook-f"></i>
        </button>

        <button type="button" class="btn btn-primary btn-floating mx-1">
            <i class="fab fa-google"></i>
        </button>

        <button type="button" class="btn btn-primary btn-floating mx-1">
            <i class="fab fa-twitter"></i>
        </button>

        <button type="button" class="btn btn-primary btn-floating mx-1">
            <i class="fab fa-github"></i>
        </button>
    </div>
</form>
</div>
</body>
<%@include file="Footer.jsp"%>>
</html>
