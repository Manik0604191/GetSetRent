<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Random rand = new Random();
int n = rand.nextInt(90000) + 10000;
System.out.println(n);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GET SET RENT</title>
<link type="text/css" rel="stylesheet" href="home.css"/>
</head>
<body style="background-image:url(images/perfback.jpg)">
<div class="container darkcolor">

<div class="wrapper" id="topheightdiv">

<div id="emailtopleft">Email:getsetrent@gmail.com</div>
<div id="mobiletopright">Mobile:7873124146</div>
<div id="clear"></div>
</div>
</div>
<div class="container lightcolor">
<div class="wrapper">
<div id="logoleft">

<img src="images/Untitled-1.png" height="100px" />
</div>

<div id="clear"><marquee>

<%
String s1=(String)session.getAttribute("username");
%>
<h2><font color="#684da2"> Welcome to GetSetRent <%= s1 %></font></h2>
</marquee>
Please note that your REGISTRATION ID is : <input type="text" name="book_id" value="<%=n%>" disabled/> that will help you for booking.
</div>
</div>
</div>
<div class="container darkcolor">
<div class="wrapper">
<ul>
<li><a href="home.jsp">HOME</a></li>
<li><a href="bookdetails.jsp">BOOKING DETAILS</a></li>
<li><a href="#">SEARCH BY CITY</a>
<ul>
<li><a href="bbsr.jsp">BHUBANESWAR</a>
</li>
<li><a href="ctc.jsp">CUTTACK</a></li>
</ul>

<li><a href="logout.jsp">LOGOUT</a></li>
</div>
</div>
<div class="container">
<div class="wrapper">
<div id="slider_image">
<img src="images/HUHU.png"/></div>
</div>
</div><br />

<div class="container">
<div class="wrapper">
<div id="textimage"><img src="images/for_rent-128.png" /></div>
<h3>Welcome To Our Website</h3>
<p>
The aim of this website is to create an online web portal for the convenience of people who are in the search of houses 
to stay at a particular city without buying a house for themselves. It basically reduces the effort and saves the
 time of the non-localites who often face problems while shifting from one city to another.</p>
<div id="div_text">
<h3>our services</h3>
<div id="textimage"><img src="images/AAEAAQAAAAAAAAc_AAAAJGYyMTlkMjE5LTUwY2YtNDY0ZS04NDNlLWQ3NWE0NWNiNmEwYQ.jpg" height="100px"/></div>
<p>
Just at a click, the user can browse across all the houses that are available for rental purposes including the details
 about the owner , attached facilities and total amount of rent to be paid
</p>
</div>
<div id="div_text">
<h3>our services</h3>
<div id="textimage"><img src="images/AAEAAQAAAAAAAAc_AAAAJGYyMTlkMjE5LTUwY2YtNDY0ZS04NDNlLWQ3NWE0NWNiNmEwYQ.jpg" height="100px;"/></div>

<p>
We provide high class, furnished houses with the maximum possible facilities at the lowest possible cost. The owner of
the houses are all verified and trust worthy
</p>
</div>
<div id="div_text">
<h3>our services</h3>
<div id="textimage"><img src="images/AAEAAQAAAAAAAAc_AAAAJGYyMTlkMjE5LTUwY2YtNDY0ZS04NDNlLWQ3NWE0NWNiNmEwYQ.jpg" height="100px"/></div>

<p>
Register yourself today to shift into the house which is exactly the perfect on for you within the twin city of
Bhubaneswar and Cuttack. Cancellation of orders are accepted too.
</p>
</div>
</div>
</div>
<div class="container darkcolor">
<div class="wrapper">
copyrights © "BADRI , ARPITA , BHANUPRIYA"
</div>
</div>

</body>
</html>