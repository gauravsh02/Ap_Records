<%@ include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="css/bootstrap.css"  rel="stylesheet" type="text/css" />
    </head>
    
    <body>
        <h1>Hello World!</h1>
        <%!
            String s1="",s2="",name="", uid="";
        %>
        <%
try{
s1=request.getParameter("id");
s2=request.getParameter("password"); 
String qry="select * from users where id='"+s1+"'  and password='"+s2+"'";
System.out.println("login.jsp "+qry);
ResultSet rs=st.executeQuery(qry);
if(rs.next()){
  uid=rs.getString("id");
  name=rs.getString("name");
  //session.removeAttribute("uid");
  
  session.setAttribute("uid", uid);
  session.setAttribute("name", name);
}
con.close();
}catch(Exception e){    System.out.println(e);     }
if(!uid.equals("")){
        %>  
      <jsp:forward page="view_records.jsp"  />
        <%    
}else {  
%>
      <jsp:include page="error.jsp"  >
	  <jsp:param name="a1" value="error" />
	  </jsp:include>  
<%  }    %>  
        
        
    </body>
</html>
