<%@ page  import="java.sql.*" import="java.io.*" import="databaseconnection.*" %>


<%
String levels=request.getParameter("level3");
String[]temp=levels.split(",");
String level1=temp[0];
String level2=temp[1];

String sub=request.getParameter("sub");
String cost=request.getParameter("cost");
String des=request.getParameter("des");
%>
<%
int i=0;
try{

Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(menu3) from menu3");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}



Connection con1=databasecon.getconnection();
Statement st = con1.createStatement();
	try{
	st.executeUpdate("insert into menu3(menu1,menu2,menu3,subject_,cost,des) values('"+level1+"','"+level2+"','"+i+"','"+sub+"','"+cost+"','"+des+"')");
	response.sendRedirect("uploadpic.jsp?id="+i);
	}
	catch(Exception e)
	{
		System.out.println(e);
		return;
	}
	

%>	