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
        <jsp:include page="userpage.jsp"/>
     
        <%

String name=(String)session.getAttribute("hname");            
String phone=(String)session.getAttribute("phone");
String status=(String)session.getAttribute("status");
String location=(String)session.getAttribute("location");
//String email=(String)session.getAttribute("email");

//Set Attribute for phone and name
      
//session.setAttribute("hname",name);  
//session.setAttribute("email",email);  
//session.setAttribute("hname",name);  
        
%><center>
   
<h3 style="color:orangered;font-family: Comic Sans MS;">
             Hello, <%=name %><br>
            Phone: <%=phone%></br>
            Status : <%=status%></br>
            Location: <%=location%><br>
    
          
           
</h3>
 </center>
   

    </body>
</html>
