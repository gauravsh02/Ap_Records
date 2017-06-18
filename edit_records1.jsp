<%-- 
    Document   : edit_records1
    Created on : Jun 18, 2017, 3:27:16 PM
    Author     : Gaurav Shankar
--%>
<%@ include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
        <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />
    </head>
    <body>
        <%
            try{
            String s1=request.getParameter("did");
            
                ResultSet rs= st.executeQuery("select * from details where did='"+s1+"'");
                if(rs.next()) { 
        %>
             <form action="insert_record.jsp">
                 <input type="hidden" name="did" value="<%= s1 %>">
                 company<input type="text" name="company" placeholder="<%= rs.getString(3) %>">
                 date<input type="date" name="date">
                 Position<input type="text" name="position" placeholder="<%= rs.getString(4) %>">
                 extra<input type="text" name="extra" placeholder="<%= rs.getString(5) %>">
                 Phno<input type="text" name="phno" placeholder="<%= rs.getString(6) %>">
                 email<input type="text" name="email" placeholder="<%= rs.getString(7) %>">
                 <input type="submit">
             </form>
            
            
            
        <% }
            con.close();
            }catch(Exception e){ out.print(e); }
        %>
        
    </body>
</html>
