<%@ include file="uheader.jsp"%>



<%@ page  import="java.sql.*" import="databaseconnection.*" %>


<%String sub=request.getParameter("sub");%>
<%int cost=Integer.parseInt(request.getParameter("cost"));%>
<%String id=request.getParameter("id");%>
<%int tot=Integer.parseInt(request.getParameter("tot"));%>


<%
try{

Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
st1.executeUpdate("insert into cart(id, sub, cost, freq, tot_cost, user, status) values('"+id+"','"+sub+"','"+cost+"','"+tot+"','"+tot*cost+"','"+session.getAttribute("email")+"','cart') ");
}catch(Exception e1)
{
out.println(e1.getMessage());
}


response.sendRedirect("viewprod.jsp?id="+id+"&&id2=succ");

%>
<%@ include file="footer.jsp"%>