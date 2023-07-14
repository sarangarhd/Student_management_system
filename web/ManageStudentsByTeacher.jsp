<%-- 
    Document   : 

    Created on : May 25, 2023, 4:03:08 AM
    Author     : rhdsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Manage Students</title>
        <link rel="stylesheet" href="styles/css/bootstrap.min.css">
        <style>
            body {
                background-color: #f8f9fa;
            }

            .card {
                margin-top: 30px;
                border-radius: 0;
            }

            .card-header {
                background-color: #001aff;
                color: #fff;
                font-weight: bold;
            }

            .card-body {
                padding: 30px;
            }

            .form-group label {
                font-weight: bold;
            }

            .form-group button[type="submit"] {
                background-color: #007bff;
                color: #fff;
            }

            .card-footer {
                background-color: #28a745;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a class="navbar-brand" href="#">MANAGE STUDENTS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="teacherDashboard.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>

                </ul>
            </div>
        </nav>
        <br>

        <div class="container">
            <div class="card">
                <div class="card-header">
                    ADD USERS
                </div>
                <div class="card-body">

                    <div class="row justify-content-center">
                        <div class="col-sm-6">
                            <form action="ManageStudentsByTeacherController" method="POST">
                                <div class="form-group">
                                    <label for="std_name">Name </label>
                                    <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
                                </div>

                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" id="email" placeholder="Enter user email" name="email">
                                </div>


                                <div class="form-group">
                                    <label for="pwd">Password</label>
                                    <input type="password" class="form-control" id="pwd" placeholder="Enter user pwd" name="pwd">
                                </div>



                                <div class="form-group">
                                    <label for="d_name">Select role</label>
                                    <select class="form-control" id="role" name="role">
                                        <option>Choose role...</option>
                                        <option value="user">USER</option>
                                        

                                    </select>
                                </div>

                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <br>
            </div>
        </div>



        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

