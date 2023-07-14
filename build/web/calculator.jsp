<%@ page language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <title>GPA Calculation Result</title>
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

            .table {
                width: 100%;
                margin-bottom: 20px;
                border-collapse: collapse;
            }

            .table th,
            .table td {
                padding: 10px;
                border-bottom: 1px solid #ccc;
            }

            .table th {
                background-color: #f2f2f2;
            }

            .result-text {
                font-size: 20px;
                margin-bottom: 10px;
            }

            .gpa {
                font-weight: bold;
                color: #4caf50;
            }
        </style>
    </head>
    <body>


        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a class="navbar-brand" href="#">GPA  CALCULATOR</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="ManageStudents.jsp">Add Students<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Grades</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Subjects</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>


        <div class="container">
            <h1 class="title">GPA Calculation Result</h1>
            <%
                // Get the subject names and grades from the form
                String[] subjectNames = request.getParameterValues("subjectName");
                String[] subjectGrades = request.getParameterValues("subjectGrade");

                // Calculate the GPA
                double totalPoints = 0;
                double totalCredits = 0;

                List<String> errorMessages = new ArrayList<>();

                for (int i = 0; i < subjectGrades.length; i++) {
                    String grade = subjectGrades[i];
                    double points = 0;
                    double credits = 0;

                    // GPA Calculation logic based on grade
                    if (grade.equalsIgnoreCase("A+")) {
                        points = 4.0;
                    } else if (grade.equalsIgnoreCase("A")) {
                        points = 3.7;
                    } else if (grade.equalsIgnoreCase("A-")) {
                        points = 3.3;
                    } else if (grade.equalsIgnoreCase("B+")) {
                        points = 3.0;
                    } else if (grade.equalsIgnoreCase("B")) {
                        points = 2.7;
                    } else if (grade.equalsIgnoreCase("B-")) {
                        points = 2.3;
                    } else if (grade.equalsIgnoreCase("C+")) {
                        points = 2.0;
                    } else if (grade.equalsIgnoreCase("C")) {
                        points = 1.7;
                    } else if (grade.equalsIgnoreCase("C-")) {
                        points = 1.3;
                    } else if (grade.equalsIgnoreCase("D+")) {
                        points = 1.0;
                    } else if (grade.equalsIgnoreCase("D")) {
                        points = 0.7;
                    } else if (grade.equalsIgnoreCase("D-")) {
                        points = 0.3;
                    } else if (grade.equalsIgnoreCase("F")) {
                        points = 0.0;
                    } else {
                        // Handle invalid grade
                        errorMessages.add("Invalid grade: " + grade);
                    }

                    // Calculate subject credits
                    // You may need to adjust this logic based on your requirements
                    credits = 3.0; // Assuming all subjects have 3 credits

                    totalPoints += points * credits;
                    totalCredits += credits;
                }

                // Calculate the GPA
                double gpa = totalPoints / totalCredits;

            %>
            <table class="table">
                <tr>
                    <th>Subject</th>
                    <th>Grade</th>
                </tr>
                <% for (int i = 0; i < subjectNames.length; i++) {%>
                <tr>
                    <td><%= subjectNames[i]%></td>
                    <td><%= subjectGrades[i]%></td>
                </tr>
                <% } %>
            </table>

            <% if (!errorMessages.isEmpty()) { %>
            <div class="result-text">
                <span class="gpa">GPA Calculation Error:</span>
                <% for (String errorMessage : errorMessages) {%>
                <p><%= errorMessage%></p>
                <% } %>
            </div>
            <% } else {%>
            <div class="result-text">
                <span class="gpa">GPA:</span> <%= String.format("%.2f", gpa)%>
            </div>
            <% }%>

            <p><a href="calculateGPA.jsp">Back to Calculator</a></p>
        </div>
    </body>
</html>
