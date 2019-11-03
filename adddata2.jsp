
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*"%>


<%@ include file="aheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>



<h1>Add Sub Menu..</h1><br><br>

<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();

	st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from menu2 order by menu2");

%>	
<h4>
<table align="center" id="tab" cellpadding="10">
<tr><th><h3><b>Menu Id&nbsp;&nbsp;&nbsp;&nbsp;</font><th><h3><b>Sub Menu Id&nbsp;&nbsp;&nbsp;&nbsp;</font><th><h3><b>Subject</font>

<%
while(rs.next())
	{
		%>
	<tr><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString(3)%>

<%
	}
%>	
</table>

<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from menu1");

%>	
<form method="post" action="addmenu_2.jsp">
           <br><br><br><br>
<table align="center" cellpadding="5">
<tr><td><h3><b>Select Main Menu Subject</font>
<tr><td><select name="level1">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%>

<%
	}
%>	

</select>
<tr><td><br>
Enter Sub Menu Subject
<tr><td><input required  type="text" name="level2"  placeholder="" size="30"><input type="submit" value="   ADD  ">
</form>
</table>
<hr>



<hr>
<br><br>
<%@ include file="footer.jsp"%>