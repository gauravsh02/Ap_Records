<%-- 
    Document   : del_records1
    Created on : Jun 18, 2017, 3:21:08 PM
    Author     : Gaurav Shankar
--%>
<%@ include file="dbcon.jsp" %>
<%
try{
String s1=request.getParameter("did");
st.executeUpdate("delete from details where did='"+s1+"'"); 
con.close();
}catch(Exception e){ out.print(e); }
%>
 
<jsp:forward page="del_records.jsp" />