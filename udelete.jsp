


<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
		String sno=request.getParameter("email"); 
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="delete from users where  email='"+sno+"' ";
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("viewusers.jsp?msg=update");
	}}catch(Exception e){
	System.out.println(e);}
 %>


     