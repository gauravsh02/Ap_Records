<%-- 
    Document   : index
    Created on : Jun 18, 2017, 2:23:33 PM
    Author     : Gaurav Shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applied !</title>
      <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />  
        
    </head>
    <body>
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
        
        <div class="container" style="padding-top: 10%;" >
        <div class="well">
        <div class="row">
            <h1 class="text-center">Applied !</h1><br>
        <form action="login.jsp" >
            <div class="row"> 
                <div class="col-xs-offset-4 col-xs-3"><label>User Id </label><input class="form-control" type="text" name="id" placeholder="Username"></div>
            
            <div class="col-xs-offset-4 col-xs-3"><label>Password </label><input class="form-control" type="password" name="password" placeholder="Password"></div>
            <br>
            <div class="col-xs-offset-4 col-xs-3"><br><button class="btn btn-default btn-primary" type="submit">Submit</button></div>
           </div>
        </form>
        </div>
        </div></div>
    </body>
</html>
