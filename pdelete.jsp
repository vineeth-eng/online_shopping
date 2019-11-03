


<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
		String sno=request.getParameter("id"); 
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="delete from menu3 where  menu3='"+sno+"' ";
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("adddata3.jsp?msg=update");
	}}catch(Exception e){
	System.out.println(e);}
 %>


     