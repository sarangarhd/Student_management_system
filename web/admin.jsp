<%-- 
    Document   : teacherDashboard
    Created on : Apr 14, 2023, 10:31:47 AM
    Author     : Ravi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ADMIN DASHBOARD</title>
        <link rel="stylesheet" href="styles/css/bootstrap.min.css">
        <style>
            body {
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }

            .content {
                flex: 1;
            }

            .card-title {
                font-weight: bold;
            }

            .card-text {
                margin-bottom: 1.5rem;
            }

            .card-link {
                color: #fff;
            }

            .card-link:hover {
                text-decoration: none;
            }

            .footer {
                background-color: #28a745;
                color: #fff;
                padding: 1rem;
                text-align: center;
            }

            .card-header {
                background-color: #001aff;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a class="navbar-brand" href="#">ADMIN DASHBOARD</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">LOG OUT<span class="sr-only">(current)</span></a>
                    </li>

                </ul>
            </div>
        </nav>
        <br>

        <div class="content">
            <div class="card text-center">
                <div class="card-header">
                    ADMIN DASHBOARD
                </div>
                <div class="card-body">

                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">ENROLL STUDENTS</h5>
                                    <p class="card-text">Add new students, degrees, and registration numbers.</p>
                                    <a href="ManageStudents.jsp" class="btn btn-primary card-link">ADD</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">ADD DEGREES</h5>
                                    <p class="card-text">View grades</p>



                                    <a href="addDegree.jsp" class="btn btn-primary card-link">ADD DEGREES</a>



                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">VIEW DEGREES</h5>
                                    <p class="card-text">View marks</p>
                                    <form action="viewDegree" method="POST"> 


                                        <button type="submit" class="btn btn-primary card-link">VIEW DEGREE</button>

                                    </form>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

                <br>


                <div class="card-body">

                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">VIEW USERS</h5>
                                    <p class="card-text">Add new students, degrees, and registration numbers.</p>

                                    <form action="viewUsers" method="POST"> 


                                        <button type="submit" class="btn btn-primary card-link">VIEW USERS</button>

                                    </form>

                                </div>
                            </div>
                        </div>
                        
                        
                        
                        
                        <!--  
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">ADD DEGREES</h5>
                                    <p class="card-text">View grades</p>



                                    <a href="addDegree.jsp" class="btn btn-primary card-link">ADD DEGREES</a>


                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">VIEW DEGREES</h5>
                                    <p class="card-text">View marks</p>
                                    <form action="viewDegree" method="POST"> 


                                        <button type="submit" class="btn btn-primary card-link">VIEW DEGREE</button>

                                    </form>
                                </div>


                            </div>
                        </div>
                        -->
                        
                        
                        
                        
                        
                    </div>
                </div>





            </div>
            <br>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <h6>Concept, Design and Development by Group A</h6>
        </div>
    </footer>

    <script src="js/bootstrap.min.js"></script>
</body>
</html>

