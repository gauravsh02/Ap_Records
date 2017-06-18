<%-- 
    Document   : add_records
    Created on : Jun 18, 2017, 6:11:27 PM
    Author     : Gaurav Shankar
--%>
<%@ include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            try{
            String s1=request.getParameter("did");
             
        %>
             <form action="add_record1.jsp">
                 
                 company<input type="text" name="company" placeholder="Compsny Name">
                 date<input type="date" name="date" >
                 Position<input type="text" name="position" placeholder="Position">
                 extra<input type="text" name="extra" placeholder="Extra Info">
                 Phno<input type="text" name="phno" placeholder="Phone no.">
                 email<input type="text" name="email" placeholder="Email id.">
                 <input type="submit">
             </form>
            
            
            
        <% 
            con.close();
            }catch(Exception e){ out.print(e); }
        %>
        
    </body>
</html>
