<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    <%@ page import ="oracle.jdbc.driver.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>  
function validateForm(){  
 
var password=document.myform.password.value;  
var email=document.myform.email.value;
var password = document.myform.password.value;
var cpassword = document.myform.cpassword.value;
var mobile = document.myform.mobile.value;

if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }else if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(document.myform.email.value))  
  {  
	    alert("You have entered an invalid email address!") ; 
	    return false;   
	  } 


  else if(cpassword!= password)
  {
	  alert("passwords must be same");
	  return false;
   }
		  
 else if(mobile.length != 10){  
  alert("ph no should be 10 digit.");  
  return false;  
  } 
if(isNaN(mobile))
{
alert("Enter the valid Mobile Number(Like : 9566137117)");
document.myform.mobile.focus();
return false;
}
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image:url(images/perfback.jpg)">
<form name="myform" method="post"  action="registrationpro.jsp" onSubmit="return validateForm();">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><h2>Registration Form</h2></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" value=""required/></td>
                    </tr>
                    <tr>
                        <td>Occupation</td>
                        <td><input type="text" name="occupation" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Town/City</td> 
                        <td><input type="text" name="townandcity" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Mobile</td>
                        <td><input type="text" name="mobile" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td> <input type="radio" name="gender" value="male"> Male<br>
  <input type="radio" name="gender" value="female"required> Female<br>
  <input type="radio" name="gender" value="other"required> Other</td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required/></td>
                    </tr>
                      <tr>
                        <td> Confim Password</td>
                        <td><input type="password" name="cpassword" value="" required/></td>
                    </tr>
                    <tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered? <a href="login.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
</html>