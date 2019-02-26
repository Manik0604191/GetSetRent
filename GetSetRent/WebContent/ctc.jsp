<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.mySlides {
display:none;
height:450px;
width:800px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #8B0A50;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: blue;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}
#content{
height:400px;
}
footer{
    length:150px;
    text-align:right;
    background-color:#8B0A50;


</style>

</head>
<body style="background-image:url(images/back.jpg)">
<h1>GetSetRent</h1>
<marquee>

<%
String s1=(String)session.getAttribute("username");
%>
<h2><font color="#684da2"> WELCOME TO CUTTACK <%= s1 %></font></h2>
</marquee><br>
<ul><li class="dropdown">
    <a href="home.jsp" class="dropbtn">Home</a>
    <div class="dropdown-content">
      
    </div>
  </li>

<li class="dropdown">
    <a href="#" class="dropbtn">Categories</a>
    <div class="dropdown-content">
      <a href="c1bhk.jsp">1BHK</a>
      <a href="c2bhk.jsp">2BHK</a>
      <a href="c3bhk.jsp">3BHK</a>
      
    </div>
  </li>

    <li class="dropdown">
    <a href="faq.jsp" class="dropbtn">FAQ</a>
    
  </li>
  <li><a href="contact.jsp">Contact Us</a></li>

<li  style="float:right;"><a href="logout.jsp">Logout</a></li></ul>
<br>
 <table>
	<center>
	<div class="trial">

  <img alt="error" class="mySlides" src="images/image1.jpg"  >
  <img alt="error" class="mySlides" src="images/image2.jpg"  >
  <img alt="error" class="mySlides" src="images/image3.jpg"  >
	<img alt="error" class="mySlides" src="images/image.jpg"  >
	<img alt="error" class="mySlides" src="images/image4.jpg" >
  <img alt="error" class="mySlides" src="images/image5.jpg" >

</div>

<script>
var myIndex = 0;
anim();

function anim() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(anim, 2000);
}
</script>
</center>

</body>
</html>
