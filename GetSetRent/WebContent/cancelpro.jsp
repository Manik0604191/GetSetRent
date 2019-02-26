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

String id=request.getParameter("regid");


try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = null;
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
	        "system", "manager");
Statement st = con.createStatement();
st.executeUpdate("DELETE FROM hdetails WHERE regid = '"+id+"'" );
response.sendRedirect("deleted.jsp");

}
catch(Exception e){}
%>
</body>
</html>