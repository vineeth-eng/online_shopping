
<%@ page import="java.sql.*,databaseconnection.*"%>

<%

	String otp1 = request.getParameter("otp1");
	String otp2 = request.getParameter("otp2");

if(otp1.equals(otp2)){

response.sendRedirect("signup.jsp?id=succ");

}else{

	Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	String sss = "delete from users  where email='"+request.getParameter("email")+"' " ;
	ss.executeUpdate(sss);

	response.sendRedirect("signup.jsp?m=dup2");

}



%>
       
