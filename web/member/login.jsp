<%@ page import="entity.Student" %><%--
  Created by IntelliJ IDEA.
  User: VTA
  Date: 6/4/2019
  Time: 5:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Student student =(Student)request.getAttribute("student");
    if (student == null){
        student = new Student();
    }
%>
<html>
<head>
    <title>Sign In</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.1/css/mdb.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row d-flex justify-content-center align-items-center">
        <div class="col-5">
            <div class="card">
                <h5 class="card-header info-color white-text text-center py-4">
                    <strong>Sign In</strong>
                </h5>
                <!--Card content-->
                <div class="card-body px-lg-5 pt-2">

                    <!-- Form -->
                    <form action="/member/login" method="post" class="text-center" style="color: #757575;">
                        <!-- E-mail -->
                        <div class="md-form mt-2 mb-2">
                            <input type="text" id="mdfUsername" class="form-control" placeholder="Username" name="Username" value="<%=student.getUsername()%>">

                        </div>

                        <!-- Password -->
                        <div class="md-form">
                            <input type="password" id="mdfPass" class="form-control" aria-describedby="mdfPasshl" placeholder="Password" name="Password" value="<%=student.getPassword()%>">
                        </div>

                        <!-- Newsletter -->
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="mdfCheck" name="check_form">
                            <label class="form-check-label" for="mdfCheck">Remember password</label>
                        </div>

                        <!-- Sign up button -->
                        <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" type="submit" value="Submit">Sign In</button>

                        <!-- Social register -->
                        <p>or sign up with:</p>

                        <a type="button" class="btn-floating btn-fb btn-sm">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a type="button" class="btn-floating btn-tw btn-sm">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a type="button" class="btn-floating btn-li btn-sm">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a type="button" class="btn-floating btn-git btn-sm">
                            <i class="fab fa-github"></i>
                        </a>

                        <hr>

                        <!-- Terms of service -->
                        <em>Login</em> account
                        <a href="/member/login" target="_blank">Login</a>

                    </form>
                    <!-- Form -->
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Material form register -->
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.0/js/mdb.min.js"></script>
</body>
</html>
