<%-- 
    Document   : add_record1.jsp
    Created on : Jun 18, 2017, 6:17:42 PM
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
        <h1>Add Records!</h1>
        
        <% 
         try{
             ResultSet rs=st.executeQuery("select max(did) from details");
             int did=0;
             if(rs.next()){
             did=Integer.parseInt(rs.getString(1));
             
             did+=1;
             } 
            String id=(String)session.getAttribute("id");
            String company=request.getParameter("company");
            String date=request.getParameter("date");
            String position=request.getParameter("position");
            String extra=request.getParameter("extra");
            String phno=request.getParameter("phno");
            String email=request.getParameter("email");
            
            st.executeUpdate("insert into details value ( '"+id+"','"+did+"', '"+company+"', '"+date+"', '"+position+"', '"+extra+"', '"+phno+"', '"+email+"' ) ");
            out.print("<font color=green size=2>Added Successfully.</font>");
        %>
        
        
        <% 
            con.close();
            }catch(Exception e){ out.print(e); }
        %>
        
        
        
    </body>
</html>
