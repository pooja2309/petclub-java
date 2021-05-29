<%-- 
    Document   : addpet
    Created on : 22 Sep, 2019, 5:50:57 PM
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
            background-repeat: repeat;
            background-size: 250px,250px;
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
        <jsp:include page="Login.jsp"/>

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" id="form_container">
                    <h2>Set your password</h2>
                   
                    <form method="post" action="setpwd.jsp">
                        
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="phone"> Phone number</label>
                                <input type="text" class="form-control" id="phone" name="phone" required>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="email"> Email:</label>
                               <input type="text" class="form-control" id="email" name="email" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="password">Set New Password</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <button type="submit" class="btn btn-lg btn-default pull-right" >Send &rarr;</button>
                            </div>
                            
                        </div>
                    </form>
                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Posted your message successfully!</h3> </div>
                    <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
                </div>
            </div>
        </div>  
    </body>
</html>
