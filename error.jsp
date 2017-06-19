<%-- 
    Document   : error
    Created on : Jun 18, 2017, 2:46:26 PM
    Author     : Gaurav Shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />
        <style>
            .asdf{
                line-height: 20px;
            }
        </style>
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
            </div>    
                <a href ="" class='navbar-brand'>Applied !</a> 
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                       <li class="active"><a href="">Home</a></li>
                       
                       <li><a href="">About</a></li>
                    </ul>
                </div>
            
        </div> 
    </div>
            
        </div>
        <div class="asdf text-center">
            <br><br><h3>Sorry! Error occurred. Click home LogIn.</h3>
            </div>
        
    </body>
</html>
