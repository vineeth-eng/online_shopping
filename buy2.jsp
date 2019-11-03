<%@ page  import="CT.*" %>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="uheader.jsp"%>


<%
try{



Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
st1.executeUpdate(" update cart set status=now() where user='"+session.getAttribute("email")+"' ");
}catch(Exception e1)
{
out.println(e1.getMessage());
}

Mail.mailsend((String)session.getAttribute("email"),(String)session.getAttribute("sub"),(String)session.getAttribute("body"));
%>
<h3>Thank you for shopping with us.. 
</h3>
<%@ include file="footer.jsp"%>