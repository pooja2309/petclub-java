<%-- 
    Document   : Services
    Created on : 22 Sep, 2019, 7:52:57 PM
    Author     : pooja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="styleheader.css">
        <style>
        body  {
            background-image: url("icon2.png");
            background-color: white;
            background-repeat: repeat;
            background-size: 2000px 2500px;
            background-blend-mode:transparent;
            font-family: "Comic Sans MS";
            font-size: 18px;
          
}
</style>
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}


.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}


.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}


.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}


@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#more {display: none;}
</style>
</head>
<body style="font-family:Comic Sans MS;font-size:150%;color:orangered;">
    
  
  
<p>
    
        
<p>

<p style="font-family:Comic Sans MS;font-size:160%;color:orange;">
<header>
     <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="logo.png" alt=""></a> </h1>
 
    <div class="menu_block">
        
   <h3 style="color:orangered;text-decoration: underline;">Services we provide</h3>       
<a href="index.html">
<span style="color:whitesmoke;text-shadow:2px 2px 5px orange;"><b>
Home</a>
&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="Login.jsp">
<style="color:blue;margin-left:30px;">
<span style="color:whitesmoke;text-shadow:2px 2px 5px orange;"><b>
Click here to login </a>
&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Signup.jsp">
<style="color:blue;margin-left:30px;">
<span style="color:whitesmoke;text-shadow:2px 2px 5px orange;"><b>
Click here to register </a>
&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Aboutus.html">
<style="color:blue;margin-left:30px;">
<span style="color:whitesmoke;text-shadow:2px 2px 5px orange;"><b>
About Us </a>
&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>       <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</header>


<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div><center>
  <img src="bgpic1.jpg" style= "width=100%"height="365" width="400">
</center>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div><center>
  <img src="bgpic2.jpg" style="width=100%"height="365" width="800">
  </center>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="ss3.jpg" style="width:100%" height="365" width="100">

</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div></style>

All pet parents know how difficult it is to travel. There are tons of 
arrangements to be made for the pooch or kitty. For starters, you cannot take them along with you on most journeys. 
<span id="dots">...</span><span id="more">
    And leaving them behind requires a whole lot of planning and scouting for suitable pet stays and pet hostels {not to mention the huge expenses}. Well, what if we told you that these pet sitter services will help you find a pet sitter that will watch and care for your pet and check in on them in their very own home while you are away on holiday. You would not have to worry about them getting used to new environments, other pet,their medication and their daily routine would go on as usual. Would take a load off your mind now, would not it?
We have stringent adoption procedures in place to ensure that the new homes the dogs are going to are safe and appropriate for them. Adopters may be required to make several visits to get used to the dog and vice versa.  Adoptions are allowed only if the dog is compatible with the owner and the environment. Follow up procedures are also in place with post-adoption updates coming in from adopters.
</span>

</p>

<button onclick="myFunction()" id="myBtn">Read more</button>

<script>
function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more"; 
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less"; 
    moreText.style.display = "inline";
  }
}
</script>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<p>
<image src="1.png" alt="Img not found" width="500" height="500"/>
<image src="icon1.png" alt="Img not found" width="500" height="500"/>

</p>
<h5>
    1. Adopt Pets from different Localities <br>
    2. Advertise homeless pets<br>
    3. Volunteer to look after pets while owners are away - Passive Adoption <br>
    4. Ask out Pet lovers to look after your pet while on trips. <br>
</h5>
</body>
</html>
