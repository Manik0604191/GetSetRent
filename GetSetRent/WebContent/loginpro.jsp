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
  
    String username = request.getParameter("uname");    
    String password = request.getParameter("password");
    try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "manager");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from uregistration where username='" + username + "' and password='" + password + "'");
    if (rs.next()) {
        session.setAttribute("username", username);
        response.sendRedirect("home1.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
    }
    catch(Exception e){
    	e.printStackTrace();
    }
%>
</body>
</body>
</html>