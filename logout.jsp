<%-- 
    Document   : logout
    Created on : Jun 18, 2017, 7:12:44 PM
    Author     : Gaurav Shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Logout!</h1>
        <%
        session.invalidate();
        %>
        <jsp:forward page="index.jsp" />
    </body>
</html>
