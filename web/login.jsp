
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Tasty</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

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
            <div class="card login" >
                <div class="card-body">
                    <nav class="nav">
                        <a class="nav-link active" href="login">Sign in</a>
                        <a class="nav-link" href="signup">Sign up</a>

                    </nav>

                    <div class="card-body">
                        <h2 class="card-title">Login with your email</h2>
                        <form action="login" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <div class="alert hide alert-danger" role="alert">
                                    Please enter a valid email address.
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <input type="submit" class="btn btn-primary submitform" value="Login">
                            <p class="text-danger">${mess}</p>
                        </form>
                        <button type="button" class="btn btn-link">Forgot password ?</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>