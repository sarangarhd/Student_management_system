<%-- 
    Document   : viewUsers
    Created on : May 25, 2023, 2:39:18 AM
    Author     : rhdsa
--%>

<%-- 
    Document   : viewMarks
    Created on : May 23, 2023, 12:48:19 PM
    Author     : rhdsa
--%>

<%@page import="Controllers.users"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher Dashboard</title>
        <link rel="stylesheet" href="styles/css/bootstrap.min.css">
        <style>
            body {
                padding-top: 0px;
            }
            .navbar {
                background-color: #007bff;
                padding: 1rem;
            }
            .navbar-brand {
                color: #fff;
                font-weight: bold;
                font-size: 1.5rem;
            }
            .card {
                margin: 20px;
                border: none;
                box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.3);
            }
            .card-header {
                background-color: #007bff;
                color: #fff;
                font-weight: bold;
                padding: 0.75rem;
            }
            .card-body {
                padding: 1rem;
            }
            .table {
                color: #fff;
                margin-bottom: 0;
            }
            .table th,
            .table td {
                border: none;
                vertical-align: middle;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
            <a class="navbar-brand" href="#">VIEW USERS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="admin.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>
        <div class="card">
            <h5 class="card-header"> USERS </h5>
            <div class="card-body">


                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">NAME</th>
                            <th scope="col">EMAIL</th>
                            <th scope="col">ROLE</th>
                            <th scope="col">ID</th>
                            <th scope="col">OPERATIONS</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            // Retrieve the studentList from the request attribute
                            List<users> userList = (List<users>) request.getAttribute("userList");

                            // Iterate over the studentList and display the records in the table
                            for (users newuser : userList) {
                        %>
                        <tr>
                            <td><%= newuser.getName()%></td>
                            <td><%= newuser.getEmail()%></td>
                            <td><%= newuser.getRole()%></td>
                            <td><%= newuser.getId()%></td>

                            <td>  
                                <button type="button" class="btn btn-info">EDIT</button> 
                                <form action="DeleteServlet" method="post">
                                    <input type="hidden" name="id" value="<%=id%>">
                                    <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                </form>


                            </td>

                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>

            </div>
        </div>
        <script src="styles/js/bootstrap.min.js"></script>
    </body>
</html>
