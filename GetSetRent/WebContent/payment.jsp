<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>  
function validateForm(){  
	var cvv = document.myform.cvv.value;
	var cardnumber = document.myform.cardnumber.value;
if(cvv.length != 3){  
  alert("cvv should be 3 digit.");  
  return false;  
  } 
if(isNaN(cvv))
{
alert("Enter the valid  Number(Like : 956)");
document.myform.cvv.focus();
return false;
}
if(cardnumber.length != 16){  
	  alert("card no should be 16 digit.");  
	  return false;  
	  } 
	if(isNaN(cardnumber))
	{
	alert("Enter the valid  Number(Like : 182345672349563)");
	document.myform.cardnumber.focus();
	return false;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Page</title>

</head>
<body style="background-image:url(images/texture7.bmp)">
<center><h1>Please make your payment here</h1></center>

<form name="myform" method="post"  action="success.jsp" onSubmit="return validateForm();">
            <center>
            <table border="1" width="30%" cellpadding="5">
                
                <tbody>
                    
                    <tr>
                        <td>Card Number</td>
                        <td><input type="text" name="cardnumber" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td><input type="date" name="date" value=""required/></td>
                    </tr>
                    <tr>
                        <td>CVV</td>
                        <td><input type="password" name="cvv" value="" required /></td>
                    </tr>
                    
                        <td><input type="submit" value="Pay" /></td>
                       
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
</html>

</div>
</table>
</center>

</body>
</html>