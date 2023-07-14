<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            max-width: 500px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: 500;
        }

        .btn-register {
            width: 100%;
        }
    </style>
</head>

<body>
     <nav class="navbar navbar-expand-lg navbar-light  bg-primary">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
            </div>
        </nav>
        <br>

    <div class="container">
        <form method="POST" action="../addUsers">
            <div class="mb-4">
                <label for="formName" class="form-label">Your Name</label>
                <input type="text" id="formName" class="form-control" name="fname" required>
            </div>
            <div class="mb-4">
                <label for="formEmail" class="form-label">Your Email</label>
                <input type="email" id="formEmail" class="form-control" name="email" required>
            </div>
            <div class="mb-4">
                <label for="formPassword" class="form-label">Password</label>
                <input type="password" id="formPassword" class="form-control" name="pwd" disabled>
            </div>
            <div class="mb-4">
                <label for="formConfirmPassword" class="form-label">Confirm Password</label>
                <input type="password" id="formConfirmPassword" class="form-control" disabled>
            </div>
            <div class="form-check mb-4">
                <input class="form-check-input" type="checkbox" id="formAgreeTerms" required>
                <label class="form-check-label" for="formAgreeTerms">
                    I agree to the <a href="#!">Terms of Service</a>
                </label>
            </div>
            <button type="submit" class="btn btn-primary btn-register">Register</button>
            <a href="index.jsp" class="btn btn-link">Login</a>
        </form>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
</body>

</html>
