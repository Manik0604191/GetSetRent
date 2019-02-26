<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.main{
	clear: none;
	height: 350px;
	width: 1450px;
	margin:0;
	padding:0;
}
.middle{
	clear: none;
	float: left;
	height: 350px;
	width: 450px;
}
.left{
	clear: none;
	float: left;
	height: 350px;
	width: 450px;
	padding-left:40px;
}
.right{
	clear: none;
	float: left;
	height: 350px;
	width: 450px;
}
</style>
</head>
<body style="background-image:url(images/perfback.jpg)">
<h1>GetSetRent</h1>
<center><h4>Please select 3bhk houses in Bhubaneswar</h4></center>
<div class="main"> 
    <div class="left">
  
  <img alt="error" class="mySlides" src="images/img2.jpg" height="300" width="350" ><br><br>
   
  Owner: A<br><br>
  Location: Barmunda  <br><br>
 PPM: Rs.18000<br><br>
<input type="submit" value="CHECK NOW!" onclick="location.href='bcheck3a.jsp';"/>

</div>
   <div class="middle">

<img alt="error" class="mySlides" src="images/img1.jpg" height="300" width="350"  ><br><br>
   
   Owner: B<br><br>
  Location: Jaydev Vihar<br><br>
  PPM: Rs.17000<br><br>
   <input type="submit" value="CHECK NOW!" onclick="location.href='bcheck3b.jsp';" />
   
  </div>
  <div class="right">

  <img alt="error" class="mySlides" src="images/img3.jpg"  height="300" width="350"><br><br>
    
    Owner: C<br><br>
 Location: Kalinga Vihar<br><br>
  PPM: Rs.16500 <br><br>
   <input type="submit" value="CHECK NOW!" onclick="location.href='bcheck3c.jsp';" />
 
</div>

</div>

</body>
</html>
