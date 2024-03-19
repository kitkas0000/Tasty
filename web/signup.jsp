
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tasty</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
        </script>
        <script src="script.js"></script>
    </head>

    <body>
        <div class="container">

            <div class="card register">
                <div class="card-body">
                    <nav class="nav">
                        <a class="nav-link " href="login">Sign in</a>
                        <a class="nav-link active" href="signup">Sign up</a>

                    </nav>

                    <div class="card-body">
                        <h2 class="card-title">Register a new account</h2>
                        <form action="signup" method="post">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Full Name">
                            </div>
                            <div class="form-group">
                                <label>Phone number</label>
                                <input type="text" name="phone" class="form-control" placeholder="Phone Number">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Repeat Password</label>
                                <input type="password" name="repassword" class="form-control" id="exampleInputPassword1" placeholder="Repeat Password">
                            </div>
                            <input type="submit" class="btn btn-primary" value="Register">
                            <p class="text-danger">${mess}</p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>