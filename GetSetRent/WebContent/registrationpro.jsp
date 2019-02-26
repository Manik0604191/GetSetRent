<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    <%@ page import ="oracle.jdbc.driver.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
    
    String s1 = request.getParameter("fname");
    String s2 = request.getParameter("lname");
    String s3 = request.getParameter("email");
    String s4 = request.getParameter("occupation");    
    String s5 = request.getParameter("townandcity");
    String s6 = request.getParameter("address");    
    String s7 = request.getParameter("mobile");
    String s8 = request.getParameter("gender"); 
    String s9 = request.getParameter("uname");    
    String s10 = request.getParameter("password");
  
    int k=0;
    try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = null;
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "manager");
    PreparedStatement ps=con.prepareStatement("insert into uregistration values(?,?,?,?,?,?,?,?,?,?)"); 
    ps.setString(1,s1);
    ps.setString(2,s2);
    ps.setString(3,s3);
    ps.setString(4,s4);
    ps.setString(5,s5);
    ps.setString(6,s6);
    ps.setString(7,s7);
    ps.setString(8,s8);
    ps.setString(9,s9);
    ps.setString(10,s10);

    k=ps.executeUpdate();
							
	if (k > 0) {
    	   response.sendRedirect("welcome.jsp");
    } 
   else{
        response.sendRedirect("login.jsp");}
    }
catcatch(Exception e){e.printStackTrace();}
%>
</body>
</html>