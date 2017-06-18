<%-- 
    Document   : insert_record
    Created on : Jun 18, 2017, 3:55:17 PM
    Author     : Gaurav Shankar
--%>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Edit Page</title>
        <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>Edit!</h1>
        <% 
         try{
            String did=request.getParameter("did");
            String company=request.getParameter("company");
            String date=request.getParameter("date");
            String position=request.getParameter("position");
            String extra=request.getParameter("extra");
            String phno=request.getParameter("phno");
            String email=request.getParameter("email");
            
            st.executeUpdate("update details set company='"+company+"', date='"+date+"', position='"+position+"', extra='"+extra+"', phno='"+phno+"', emailid='"+email+"' where did='"+did+"'  ");
            out.print("<font color=green size=2>Changed Successfully.</font>");
        %>
        
        
        <% 
            con.close();
            }catch(Exception e){ out.print(e); }
        %>
        
    </body>
</html>
