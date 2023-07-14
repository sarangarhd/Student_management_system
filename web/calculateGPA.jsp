<%@ page language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <title>calculateGPA</title>
        <link rel="stylesheet" href="styles/css/bootstrap.min.css">
        
        <style>
            
            
            
            body {
                background-color: #f1f1f1;
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            .container {
                max-width: 600px;
                margin: 0 auto;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .title {
                font-size: 24px;
                margin-bottom: 20px;
                color: #333;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                display: block;
                font-size: 18px;
                margin-bottom: 5px;
                color: #555;
            }

            .form-group input[type="text"] {
                padding: 8px;
                width: 100%;
                font-size: 16px;
                border-radius: 4px;
                border: 1px solid #ccc;
            }

            .btn-container {
                text-align: right;
            }

            .btn {
                padding: 10px 20px;
                font-size: 16px;
                background-color: #4caf50;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .btn:hover {
                background-color: #45a049;
            }

            /* Table Styling */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }

            th, td {
                padding: 10px;
                border-bottom: 1px solid #ccc;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
            }

            /* Result Styling */
            .result-text {
                font-size: 20px;
                margin-bottom: 10px;
                color: #555;
            }

            .gpa {
                font-weight: bold;
                color: #4caf50;
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                var subjectCount = 1;

                $('#addSubjectBtn').click(function () {
                    if (subjectCount < 10) {
                        subjectCount++;
                        var html = '<div class="form-group">' +
                                '<label for="subjectName' + subjectCount + '">Subject Name</label>' +
                                '<input type="text" id="subjectName' + subjectCount + '" name="subjectName" required>' +
                                '</div>' +
                                '<div class="form-group">' +
                                '<label for="subjectGrade' + subjectCount + '">Subject Grade</label>' +
                                '<input type="text" id="subjectGrade' + subjectCount + '" name="subjectGrade" required>' +
                                '</div>';
                        $('#subjectContainer').append(html);
                    }
                });
            });
        </script>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a class="navbar-brand" href="#">CALCULATE GPA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">

                   
                </ul>
            </div>
        </nav>
        
        <br>
        



        <div class="container">
            <h1 class="title">GPA Calculator</h1>
            <form method="post" action="calculator.jsp">
                <div id="subjectContainer">
                    <div class="form-group">
                        <label for="subjectName">Subject Name</label>
                        <input type="text" id="subjectName" name="subjectName" required>
                    </div>
                    <div class="form-group">
                        <label for="subjectGrade">Subject Grade</label>
                        <input type="text" id="subjectGrade" name="subjectGrade" required>
                    </div>
                </div>
                <div class="btn-container">
                    <button id="addSubjectBtn" class="btn">Add Subject</button>
                </div>
                <br>
                <input class="btn" type="submit" value="Calculate GPA">
            </form>
        </div>
    </body>
</html>
