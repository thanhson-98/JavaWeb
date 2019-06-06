<%@ page import="entity.Student" %><%--
  Created by IntelliJ IDEA.
  User: VTA
  Date: 6/4/2019
  Time: 5:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Student student = (Student)request.getAttribute("student");
    if(student == null){
        student = new Student();
    }
%>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.1/css/mdb.min.css" rel="stylesheet">
</head>
<body>

<!-- Material form register -->

<div class="container">
    <div class="row d-flex justify-content-center">
        <div class="col-5">
            <div class="card">
                <h5 class="card-header info-color white-text text-center py-4">
                    <strong>Sign Up</strong>
                </h5>
                <!--Card content-->
                <div class="card-body px-lg-5 pt-2">

                    <!-- Form -->
                    <form action="/member/register" method="post" class="text-center" style="color: #757575;">

                        <div class="form-row">
                            <div class="col">
                                <!-- First name -->
                                <div class="md-form">
                                    <%--                                    <input type="text" id="mdfFirstName" class="form-control" placeholder="First Name" name="<%=student.getFirstName()%>">--%>
                                    <input type="text" id="mdfFirstName" class="form-control" placeholder="First Name" name="FirstName" value="<%=student.getFirstName()%>">
                                </div>
                            </div>
                            <div class="col">
                                <!-- Last name -->
                                <div class="md-form">
                                    <input type="text" id="mdfLastName" class="form-control" placeholder="Last Name" name="LastName" value="<%=student.getLastName()%>">
                                </div>
                            </div>
                        </div>

                        <div class="md-form mt-2 mb-2">
                            <input type="text" id="mdfUsername" class="form-control" placeholder="Username" name="Username" value="<%=student.getUsername()%>">

                        </div>

                        <!-- Password -->
                        <div class="md-form">
                            <input type="password" id="mdfPass" class="form-control" aria-describedby="mdfPasshl" placeholder="Password" name="Password" value="<%=student.getPassword()%>">
                            <small id="mdfPasshl" class="form-text text-muted mb-4">
                                At least 8 characters and 1 digit
                            </small>
                        </div>

                        <!-- E-mail -->
                        <div class="md-form mt-2 mb-2">
                            <input type="email" id="mdfEmail" class="form-control" placeholder="Email" name="Email" value="<%=student.getEmail()%>">

                        </div>
                        <!-- Phone number -->
                        <div class="md-form">
                            <input type="text" id="mdfPhone" class="form-control" aria-describedby="mdfPhonehl" placeholder="Phone number" name="Phone" value="<%=student.getPhone()%>">
                            <small id="mdfPhonehl" class="form-text text-muted mb-4">
                                Optional - for two step authentication
                            </small>
                        </div>

                        <!-- Newsletter -->
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="mdfCheck" name="check_form">
                            <label class="form-check-label" for="mdfCheck">Subscribe to our newsletter</label>
                        </div>

                        <!-- Sign up button -->
                        <button class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0" type="submit" value="Submit">Sign up</button>

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
                        <em>Register</em> a new account
                        <a href="/member/register" target="_blank">Sign up</a>

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
