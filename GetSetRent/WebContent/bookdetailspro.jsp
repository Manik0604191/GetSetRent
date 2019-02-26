<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.sql.*"%>
    <%@ page import ="oracle.jdbc.driver.*"%>

<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

   <body style="background-image:url(images/perfback.jpg)">
      

        <H1>Your booking details are : </H1>

        <% 
        int x;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = null;
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
                    "system", "manager");

            Statement statement = con.createStatement();

            String id = request.getParameter("regid");  
            ResultSet rs = 
                statement.executeQuery("select * from hdetails where regid = '" + id + "'") ; 

            if(!rs.next()) {
                out.println("Sorry, could not find any data. ");
            }
            else {
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               <TH>Owner</TH>
               <TH>Location</TH>
               <TH>PPM</TH>
               
           </TR>
           <TR>
               <TD> <%= rs.getString(1) %> </TD>
               <TD> <%= rs.getString(2) %> </TD>
               <TD> <%= rs.getString(3) %> </TD>
               <TD> <%= rs.getString(4) %> </TD>
               
           </TR>
       </TABLE>
       <BR>
       <input type="button" value="Cancel Order" onclick="location.href='cancel.jsp';" />
        <input type="button" value="Back Home" onclick="location.href='home1.jsp';" />
       <% 
      
           } 
        }
            catch(Exception e){e.printStackTrace();}
     %>  
</HTML>
