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
                       <li class="active"><a href="edit_records.jsp">Edit</a></li>
                       <li><a href="about.jsp">About</a></li>
                       <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
        </div> 
    </div>                
        
                 <div class="text-center"><br><br>   
        <h2>Welcome <%= (String) session.getAttribute("name") %> </h2>
        <h4>Edit Records.</h4></div>
        
                
        <div class="well">
        
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
            out.print("<h2 >Changed Successfully.<br>Press Home.</h2>");
        %>
          
      <jsp:forward page="view_records.jsp"  />
        
        
        <% 
            con.close();
            }catch(Exception e){ out.print(e); }
        %>
        
        </div>
        </div> 
    </body>
</html>
