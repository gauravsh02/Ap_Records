<%-- 
    Document   : view_records
    Created on : Jun 18, 2017, 2:18:15 PM
    Author     : Gaurav Shankar
--%>
<%@ include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record Details</title>
        <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />
    </head>
    <body>
        
        <% 
        String z=(String) session.getAttribute("uid");
        if(z==null){
        %>
        <jsp:forward page="index.jsp"  />
        <%
            }
         %>
        
        <div class="container">
        <div class=' navbar navbar-default navbar-fixed-top'>
        <div class="container">
           <div class="navbar-header">
                <button type='button' class="navbar-toggle" data-toggle='collapse' data-target='.navbar-collapse'>
                <span class='sr-only'>Toggle Navigation</span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
                <span class='icon-bar'></span>
                </button>
                <a href ="view_records.jsp" class='navbar-brand'>Applied !</a>
            </div>    
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                       <li class="active"><a href="view_records.jsp">Home</a></li>
                       <li><a style="color : #269abc" href="add_records.jsp">Add New Record</a></li>
                       <li><a href="about.jsp">About</a></li>
                       <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
        </div> 
    </div>
                  
        
        
        
        
        
        
       
            <br><br>
            <div class="text-center">   
        <h2>Welcome <%= (String) session.getAttribute("name") %> </h2>
        <h4>List of Companies Applied to.</h4></div>
        <div class="well">        
            <table class="table-responsive table table-striped">
            <tr>
                <th>Company</th>
                <th>Date</th>
                <th>Position</th>
                <th>Extra</th>
                <th>Phone No.</th>
                <th>Email id</th>
            </tr>
        <%
        try{
                ResultSet rs= st.executeQuery("select * from details where id='"+(String) session.getAttribute("uid")+"'");
                while(rs.next()) {  %>
                <tr>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                </tr>
        <%
                }       
            con.close();
            }catch(Exception e){   out.print(e);   }   %>
        </table>
        </div>
        <div class="row">
            <div class="col-xs-offset-2">
                <div class="col-xs-4">
                    <a href="edit_records.jsp">
                    <button class="btn btn-default btn-block btn-primary">Edit</button>
                    </a>
                 </div>
                <div class="col-xs-4">
                    <a href="del_records.jsp">
                    <button class="btn btn-default btn-block btn-danger">Delete</button>
                    </a>
                 </div>
        </div>
        </div>
        </div>
    </body>
</html>
