<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    <%@ page import ="oracle.jdbc.driver.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    
    String s1 = request.getParameter("regid");
    String s2 = request.getParameter("owner");
    String s3 = request.getParameter("location");
    String s4 = request.getParameter("ppm");    
   
    int k=0;
    try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = null;
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "manager");
    PreparedStatement ps=con.prepareStatement("insert into hdetails values(?,?,?,?)"); 
    ps.setString(1,s1);
    ps.setString(2,s2);
    ps.setString(3,s3);
    ps.setString(4,s4);
    

    k=ps.executeUpdate();
							
	if (k > 0) {
    	   response.sendRedirect("payment.jsp");
    } 
   else{
        response.sendRedirect("payment.jsp");}
    }
catch(Exception e){e.printStackTrace();}
%>
</body>
</html>