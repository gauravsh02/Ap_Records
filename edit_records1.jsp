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
                       <li class="active"><a href="#">Edit</a></li>
                       <li><a href="about.jsp">About</a></li>
                       <li><a href="logout.jsp">Logout</a></li>
                    </ul>
                </div>
        </div> 
    </div>                
        
                 <div class="text-center"><br><br>   
        <h2>Welcome <%= (String) session.getAttribute("name") %> </h2>
        <h4>Edit Records.</h4></div>
        
        
        <%
            try{
            String s1=request.getParameter("did");
            
                ResultSet rs= st.executeQuery("select * from details where did='"+s1+"'");
                if(rs.next()) { 
        %>
        <div class="well">
             <form class="form-inline" action="insert_record.jsp">
                 <input type="hidden" name="did" value="<%= s1 %>">
                 <div class="row"><br>
                     <div class="col-xs-4  col-xs-offset-2"> 
                         <div class=" form-group"><label>company &nbsp;</label><input class="form-control" type="text" name="company" placeholder="<%= rs.getString(3) %>"></div>
                     </div>
                     <div class="col-xs-3>">
                         <div class=" form-group"><label>date &nbsp;</label><input class="form-control" type="date" name="date"></div>
                     </div>    
                 </div>
                     
                     <div class="row"><br>
                     <div class="col-xs-4  col-xs-offset-2"> 
                  
                         <div class=" form-group"><label>Position &nbsp;&nbsp;</label><input class="form-control" type="text" name="position" placeholder="<%= rs.getString(5) %>"></div>
                     </div>
                      <div class="col-xs-3>">
                          <div class=" form-group"><label>extra &nbsp;</label><input class="form-control" type="text" name="extra" placeholder="<%= rs.getString(6) %>"></div>
                      </div>   
                 </div>
                      <div class="row"><br>
                     <div class="col-xs-4  col-xs-offset-2">
                  
                         <div class=" form-group"><label>Phone no.&nbsp;</label><input class="form-control"  type="text" name="phno" placeholder="<%= rs.getString(7) %>"></div>
                     </div>
                      <div class="col-xs-3>">
                         <div class=" form-group"><label>email &nbsp;</label><input class="form-control" type="text" name="email" placeholder="<%= rs.getString(8) %>"></div>
                      </div>   
                  </div>
                      <div class="row">
                          <br><br><Button class="col-xs-offset-2 btn btn-primary " type="submit">SAVE</button>
                      </div>
             </form>
            
            
        </div>
        <% }
            con.close();
            }catch(Exception e){ out.print(e); }
        %>
        </div>    
    </body>
</html>
