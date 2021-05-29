<%-- 
    Document   : Login
    Created on : 21 Sep, 2019, 10:55:50 PM
    Author     : pooja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style> 
            body  {
            background-image: url("bgpic1.jpg");
            background-color: black;
            background-repeat: no-repeat;
            background-size: 1450px,2500px;
            background-blend-mode:transparent;
            }
          </style>
              
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="form.css" >
        <script src="form.js"></script>
    </head>

    <body>
        <image src="logo.png" alt="Img not found"/>

 
 
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" id="form_container">
                    <h2>Login Here</h2> 
                   
                    <form  method="post" action="LoginController" >
                        
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="name"> Your Name:</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="email"> Email:</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="password"> Password:</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="phone"> Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <button type="submit" class="btn btn-lg btn-default pull-right" >Send &rarr;</button>
                            </div>
                            
                        </div>
                        <a href="index.html">Home</a> &nbsp;&nbsp;
                        <a href="Signup.jsp">Click here if you don't have an account</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="forgot.jsp">Forgot password ?</a> 
                    </form>
                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Posted your message successfully!</h3> </div>
                    <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
                </div>
            </div>
        </div>
    </body>
</html>



