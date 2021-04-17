<%--
  Created by IntelliJ IDEA.
  User: diyastursunkali
  Date: 15.03.2021
  Time: 04:32
  To change this template use File | Settings | File Templates.
--%>
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
<body>
<br>
<br>
<div class="container" style="width: 500px">
    <form method="post" action="ServletRegistration">
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
            <input type="email" id="form3Example3" class="form-control" name="email"/>
            <label class="form-label" for="form3Example3" >Email address</label>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
            <input type="password" id="form3Example4" class="form-control" name="password"/>
            <label class="form-label" for="form3Example4" >Password</label>
        </div>

        <div class="form-outline mb-4">
            <select class="browser-default custom-select" name="role">
                <option selected value="customer">Customer</option>
            </select>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-block mb-4">Sing up</button>

    </form>
</div>
</body>
<%@include file="Footer.jsp"%>>
</html>
