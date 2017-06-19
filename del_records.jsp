<%-- 
    Document   : del_records
    Created on : Jun 18, 2017, 3:04:59 PM
    Author     : Gaurav Shankar
--%>
<%@ include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Records</title>
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
                       <li><a href="view_records.jsp">Home</a></li>
                       <li class="active"><a href="del_records.jsp">Delete</a></li>
                       <li><a href="about.jsp">About</a></li>
                       <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
        </div> 
    </div>        
        
        
        
        
        
            <div class="text-center"><br><br>   
        <h2>Welcome <%= (String) session.getAttribute("name") %> </h2>
        <h4>Delete Records.</h4></div>
        
         <div class="well">        
            <table class="table-responsive table table-striped">
            <tr>
                <th>Company</th>
                <th>Date</th>
                <th>Position</th>
                <th>Extra</th>
                <th>Phone No.</th>
                <th>Email id</th>
                <th>Option</th>
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
                <td><a href="del_records1.jsp?did=<%=rs.getString(2)%>"><button class="btn btn-danger" >Delete</button></a></td>
                </tr>
        <%
                }       
            con.close();
            }catch(Exception e){   out.print(e);   }   %>
         </table>
        </div>
        
        </div>
        
        
    </body>
</html>
