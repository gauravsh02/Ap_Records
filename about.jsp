<%-- 
    Document   : about
    Created on : Jun 19, 2017, 2:31:49 PM
    Author     : Gaurav Shankar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Page</title>
        <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />
        <style>
            .la{
                font-size: 20px;
            }
            .las{
                font-size: 15px;
            }
        </style>
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
               <a href ="index.jsp" class='navbar-brand'>Applied !</a>
            </div>     
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                       <li><a href="index.jsp">Home</a></li>
                       <li class="active"><a href="about.jsp">About</a></li>
                    </ul>
                </div>
            
        </div> 
    </div>
        </div><br><br><br><br>
        <div class="container text-center  well">
            <div class="row">
             <div class="col-xs-offset-1 col-xs-2">
            <img class="img-responsive img-circle" src="pic/pic.jpg" alt="Profile">
             </div>
             <div class="col-xs-offset-1 col-xs-6">   
            <span class="la" >Gaurav Shankar</span>
            <p class="las">The Applied WebApp is developed Gaurav Shankar. The Project was developed to keep a track of job applied for different company, and store relevant information. 
                Improvements are still to be made. Feel free to share it with all files attached.<br><br><div class="la"> Peace Out.</div></p>
             </div></div> <br><br><br><br>
                <div class="row">
                    <div class="la col-xs-4 col-xs-offset-2">Feel Free to Contact me.</div>
                    <div class="col-xs-2">
                        <a href="mailto:gauravshankar.bk@gmail.com">
                        <button class="btn btn-primary"><i class="glyphicon glyphicon-envelope">Email Me</i></button>
                        </a>
                    </div>
                    <div class="col-xs-2">
                        <a href="https://github.com/gauravsh02">
                        <button class="btn btn-primary"><i class="glyphicon glyphicon-user">GitHub</i></button>
                        </a>
                    </div>
                </div> 
               
        </div>
        
        
        
    </body>
</html>
