<%-- 
    Document   : edit_records
    Created on : Jun 18, 2017, 3:24:48 PM
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
        <%= (String) session.getAttribute("name") %>
        <h1>Edit Records!</h1>
        <%
        try{
                ResultSet rs= st.executeQuery("select * from details where id='"+(String) session.getAttribute("uid")+"'");
                while(rs.next()) {  %>
                <%=rs.getString(2)%><br>
                <%=rs.getString(3)%><br>
                <%=rs.getString(4)%><br>
                <%=rs.getString(5)%><br>
                <%=rs.getString(6)%><br>
                <%=rs.getString(7)%><br>
                <a href="edit_records1.jsp?did=<%=rs.getString(2)%>">Edit</a><br><br>
        <%
                }       
            con.close();
            }catch(Exception e){   out.print(e);   }   %>
        
    </body>
</html>
