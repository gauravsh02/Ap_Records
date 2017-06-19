<%-- 
    Document   : add_record1.jsp
    Created on : Jun 18, 2017, 6:17:42 PM
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
                   <div class="well">
        <% 
         try{
             ResultSet rs=st.executeQuery("select max(did) from details");
             int did=0;
             if(rs.next()){
             did=Integer.parseInt(rs.getString(1));
             
             did+=1;
             } 
            String id=(String)session.getAttribute("uid");
            String company=request.getParameter("company");
            String date=request.getParameter("date");
            String position=request.getParameter("position");
            String extra=request.getParameter("extra");
            String phno=request.getParameter("phno");
            String email=request.getParameter("email");
            
            st.executeUpdate("insert into details value ( '"+id+"','"+did+"', '"+company+"', '"+date+"', '"+position+"', '"+extra+"', '"+phno+"', '"+email+"' ) ");
            out.print("<br><br><h2>Added Successfully, Go Back Home.</h2>");
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
