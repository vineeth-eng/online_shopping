
<%@ include file="aheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>


<%@ page  import="java.sql.*" import="com.mysql.*" %>
										       <%
                                                   String    message=request.getParameter("msg");
                                                       if(message!=null && message.equalsIgnoreCase("update"))
                                                       {
                                                               out.println("<font color='red'><blink>Operation Successfull..</blink></font><br><br><br>");
                                                       }
                                               %>

<h2>View Users</h2>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="select * from users";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
int sno=0;
%>
<table align="center"  id="tab">

<tr><th>Sno<th>Name<th>Email<th>Contact<th>City<th>Delete User
<%
while(rs.next()){

%>
<tr><td><%=++sno%><td><%=rs.getString("name")%><td><%=rs.getString("email")%><td><%=rs.getString("tele")%>
<td><%=rs.getString("city")%>
	<td><a href="udelete.jsp?email=<%=rs.getString("email")%>"><img src="images/close-1.png" width="28" height="28" border="0" alt=""></a>

<%
}
}
catch(Exception e){
}
%>
</table>


<%@ include file="footer.jsp"%>