<%-- 
    Document   : add_records
    Created on : Jun 18, 2017, 6:11:27 PM
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
               <a href ="" class='navbar-brand'>Applied !</a>
            </div>    
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                       <li><a href="view_records.jsp">Home</a></li>
                       <li  class="active"><a href="add_records.jsp">Add New Record</a></li>
                       <li><a href="about.jsp">About</a></li>
                       <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
        </div> 
    </div>        
        
            <br><br>
            <div class="text-center">   
        <h2>Welcome <%= (String) session.getAttribute("name") %> </h2>
        <h4>Add Details of Companies Applied to.</h4></div>
        
        
        <div class="well">
            
        <%
            try{
            String s1=request.getParameter("uid");
            //out.print(s1);
             
        %>
             <form class="form-inline" action="add_record1.jsp">
                 
                 <div class="row"><br>
                     <div class="col-xs-4  col-xs-offset-2"> 
                         <div class=" form-group"><label>company &nbsp;</label><input class="form-control" type="text" name="company" placeholder="Compsny Name" required ></div>
                     </div>
                     <div class="col-xs-3>">
                         <div class=" form-group"><label>date &nbsp;</label><input class="form-control" type="date" name="date" required ></div>
                     </div>    
                 </div>
                     
                     <div class="row"><br>
                     <div class="col-xs-4  col-xs-offset-2"> 
                  
                         <div class=" form-group"><label>Position &nbsp;&nbsp;<input class="form-control" type="text" name="position" placeholder="Position" required ></div>
                     </div>
                      <div class="col-xs-3>">
                          <div class=" form-group"><label>extra &nbsp;</label><input class="form-control" type="text" name="extra" placeholder="Extra Info" required ></div>
                      </div>   
                 </div>
                      <div class="row"><br>
                     <div class="col-xs-4  col-xs-offset-2">
                  
                         <div class=" form-group"><label>Phone no.&nbsp;</label><input class="form-control" type="text" name="phno" placeholder="Phone no." required pattern="(?=.*\d).{10,10}" ></div>
                     </div>
                      <div class="col-xs-3>">
                          <div class=" form-group"><label>email &nbsp;</label><input class="form-control" type="email" name="email" placeholder="Email id." required ></div>
                      </div>   
                  </div>
                      <div class="row">
                          <br><br><Button class="col-xs-offset-2 btn btn-primary " type="submit">SAVE</button>
                      </div>

             </form>
            
            
            
        <% 
            con.close();
            }catch(Exception e){ out.print(e); }
        %>
        </div>
        </div>   
    </body>
</html>
