<%-- 
    Document   : 
studentDashboard
    Created on : Apr 14, 2023, 10:31:47 AM
    Author     : Ravi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="styles/css/bootstrap.min.css">
        <script src="js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light  bg-primary">
            <a class="navbar-brand" href="#"> STUDENT DASHBOARD </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"> LOGOUT <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="calculateGPA.jsp"> CALCULATE GPA <span class="sr-only">(current)</span></a>
                    </li>

                </ul>
            </div>
        </nav>
        <br>

        <div class="card text-center">
            <div class="card-header">
                SUBJECTS
            </div>
            <div class="card-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">DATA SCIENCE</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">MATHEMATICS</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">JAVA</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <!-- comment -->

            <div class="card-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">QUALITY ASSURANCE</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">CLOUD COMPUTING</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">DATA BASE</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- comment -->

            <!-- comment -->

            <div class="card-body">

                <div class="row">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">WEB DEVELOPMENT</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"> ARDUINO </h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">MACHINE LEARNING</h5>
                                <p class="card-text"> </p>
                                <a href="#" class="btn btn-primary">Go Class room</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><!-- comment -->
            <br>
            <br>

            <!-- comment -->

            <div class="card-footer text-muted" style="  background-color: green; opacity: 1;">
                <h6 style="color:#ffffff;">  Concept, Design and Development  by Group A</h6>
            </div>
        </div>
    </body>
</html>
