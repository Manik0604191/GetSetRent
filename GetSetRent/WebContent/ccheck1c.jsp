<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/lib/w3.css">
<style>
.mySlides {
display:none;
height:450px;
width:800px;
}
.left, .right, .bad {cursor:pointer}
.bad {height:13px;width:13px;padding:0}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #684da2;
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
<body style="background-image:url(images/back.jpg)">
<h1>GetSetRent</h1>
<ul><li class="dropdown">
    <a href="home.jsp" class="dropbtn">Home</a>
    <div class="dropdown-content">
      
    </div>
  </li>

    <li class="dropdown">
    <a href="faq.jsp" class="dropbtn">FAQ</a>
    
  </li>
  <li><a href="contact.jsp">Contact Us</a></li>
 

<li class="log"><a href="logout.jsp">Logout</a></li></ul>
<br>

<center>
<h3><u>House Details</u></h3>
<div class="do" >
  <img class="mySlides" src="images/bd6.jpg" >
  <img class="mySlides" src="images/image2.jpg" >
  <img class="mySlides" src="images/k8.jpg" >

    <table>
    <tr>
    <td class="left" onclick="plusDivs(-1)">&#10094;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="right" onclick="plusDivs(1)">&#10095;</td></tr>
    </table>
    <span class="bad" onclick="currentDiv(1)"></span>
    <span class="bad" onclick="currentDiv(2)"></span>
    <span class="bad" onclick="currentDiv(3)"></span>
</center>
</div> 
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>
<h2><u>Features</u></h2>
<p style="font-size:24px">Bed Facility : No <br>
Wifi : Yes <br>
Furnished : No <br>
Electronic Energy Meter : Yes <br>
AC : No </p>
<form action="regidpro.jsp">
  Enter your REGD ID:<input type="text" name="regid" value="" required/>  <br><br>
    Owner: <select name="owner">
<option value="G" />G </option></select><br><br>
    Location: <select name="location"><option  value="Chandini Chowk" />Chandini Nagar</option></select>  <br><br>
  PPM: <select name="ppm"> <option value="Rs.17500" />Rs.17500</option></select><br><br>
<input type="submit" value="BOOK NOW!"   />
</form>
</body>
</html> 