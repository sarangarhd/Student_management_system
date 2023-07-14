<%-- 
    Document   : teacherDashboard
    Created on : Apr 14, 2023, 10:31:47 AM
    Author     : Ravi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Teacher Dashboard</title>
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
            <a class="navbar-brand" href="#">TEACHER DASHBOARD</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">LOG OUT <span class="sr-only">(current)</span></a>
                    </li>
                    
                </ul>
            </div>
        </nav>
        <br>

        <div class="content">
            <div class="card text-center">
                <div class="card-header">
                    TEACHER DASHBOARD
                </div>
                <div class="card-body">
                    <h5 class="card-title">SUBJECTS</h5>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">ENROLL STUDENTS</h5>
                                    <p class="card-text">Add new students, degrees, and registration numbers.</p>
                                    <a href="ManageStudentsByTeacher.jsp" class="btn btn-primary card-link">ADD</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">GRADES</h5>
                                    <p class="card-text">View grades</p>



                                    <a href="addMarks.jsp" class="btn btn-primary card-link">ADD MARKS</a>



                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">MARKS</h5>
                                    <p class="card-text">View marks</p>
                                    <form action="viewmarks" method="POST"> 


                                        <button type="submit" class="btn btn-primary card-link">VIEW MARKS</button>

                                    </form>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

                <br>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">CALCULATE GPA</h5>
                                <p class="card-text">Add new students, degrees, and registration numbers.</p>
                                <a href="calculateGPA.jsp" class="btn btn-primary card-link">ADD</a>
                            </div>
                        </div>
                    </div>
                    <!--  
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">mmmm</h5>
                                <p class="card-text">View grades and calculate GPA.</p>
                                <a href="" class="btn btn-primary card-link">GRADES</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">SUBJECTS</h5>
                                <p class="card-text">View subjects.</p>
                                <a href="#" class="btn btn-primary card-link">SUBJECTS</a>
                            </div>
                        </div>
                    </div>
                    -->
                    
                    
                    
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
