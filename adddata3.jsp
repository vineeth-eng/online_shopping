
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*"%>


<%@ include file="aheader.jsp"%>
										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>
										       <%
                                                       message=request.getParameter("msg");
                                                       if(message!=null && message.equalsIgnoreCase("update"))
                                                       {
                                                               out.println("<font color='red'><blink>Operation Successfull..</blink></font>");
                                                       }
                                               %>


<br><br>
<h1>Add Item.</h1>

<%

	Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();

	st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from menu3");

%>	
			<div class="in-check" >

<table align="center" id="tab" cellpadding="5">
<tr><th><b>Menu1 ID&nbsp;&nbsp;&nbsp;&nbsp;</font><th><b>Menu2 ID&nbsp;&nbsp;&nbsp;&nbsp;</font><th><b>Details</font>
<th><b>View </font>
<th><b>Delete</font>

<%
while(rs.next())
	{
		%>
	<tr><td><%=Details.main(rs.getString(1),"menu1")%><td><%=Details.main(rs.getString(2),"menu2")%><td><%=rs.getString(4)%>&nbsp;&nbsp;&nbsp;<td><a href="viewp.jsp?id=<%=rs.getString(3)%>">View</a>
	<td><a href="pdelete.jsp?id=<%=rs.getString(2)%>"><img src="images/close-1.png" width="28" height="28" border="0" alt=""></a>

<%
	}
%>	
</table>
</div>


<%
	st = con1.createStatement();
	rs=st.executeQuery("select * from menu2");

%>	
<form method="post" action="addmenu_3.jsp">
       <h4>  <br><br>  
<table align="center" cellpadding="5">
<tr><td><b>Select Sub Menu Subject</font>
<tr><td><select name="level3">
<%
while(rs.next())
	{
		%>
	<option value="<%=rs.getString(1)%>,<%=rs.getString(2)%>"><%=Details.main(rs.getString(2),"menu2")%>--<%=rs.getString(1)%>

<%
	}
%>	

</select><br>
	
<tr><td><input type="text" name="sub" size="20" required placeholder="Enter Item Name">
<tr><td><input type="number" step="any" min="0"  required name="cost" size="30" placeholder="Enter Cost+$">
<tr><td><h5><textarea name="des" rows="8" cols="91"  required placeholder="Enter Description"></textarea>


<tr><td>
<input type="submit" value="   ADD  ">
</form>
</table>


<br><br>
<%@ include file="footer.jsp"%>