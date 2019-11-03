
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
		<%
		String sno=request.getParameter("id"); 
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="delete from cart where id='"+sno+"' ";
		int d =st.executeUpdate(qry);
		if(d>0)
	{
			response.sendRedirect("cart.jsp");
			
	}}catch(Exception e){
	System.out.println(e);}
 %>
 