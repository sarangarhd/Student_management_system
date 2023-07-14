<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Teacher Dashboard</title>
    <link rel="stylesheet" href="styles/css/bootstrap.min.css">
    <style>
        /* Custom styles can be added here */
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
                    <a class="nav-link" href="teacherDashboard.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <br>
    <!-- Add your content here -->

    <!-- Example content for demonstration purposes -->
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Add Marks</h5>
            </div>
            <div class="card-body">
                <form method="POST" action="marksController">
                    <div class="form-group">
                        <label for="studentid">Student ID</label>
                        <input type="text" class="form-control" id="studentid" placeholder="BSC../../.." name="std_id">
                    </div>
                    

                    
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <select class="form-control" id="subject" name="sub_id">
                            <option value="sub1">Subject 1</option>
                            <option value="sub2">Subject 2</option>
                            <option value="sub3">Subject 3</option>
                            <option value="sub4">Subject 4</option>
                            <option value="sub5">Subject 5</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="marks">Marks</label>
                        <input type="text" class="form-control" id="marks" placeholder="Enter marks" name="marks">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End of example content -->

    <script src="js/bootstrap.min.js"></script>
</body>
</html>
