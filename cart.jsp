
<%@ page   import="databaseconnection.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="uheader.jsp"%>

	 <div class="spec ">
				<h3>View Your Cart</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>



<br>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
int i=10000;
Connection con = databasecon.getconnection();
 st=con.createStatement();





 rs=st.executeQuery("select * from Cart where user='"+session.getAttribute("email")+"' and  status='cart' ");
 String sub="Check Out Conformation";
String body="<h3>Hello, <br>Dear "+session.getAttribute("name")+"<h3>";

body=body+" <table><tr><th>Sno</th><th>Product</th><th >Cost</th><th >Total Purchase</th>			<th >Total Cost</th><th >Delete</th> </tr>";

%>

      <table class="table ">
		  <tr>
			<th class="t-head ">Sno</th>
			<th class="t-head ">Product</th>
			<th class="t-head">Cost</th>
			<th class="t-head">Total Purchase</th>
			<th class="t-head">Total Cost</th>
			<th class="t-head">Delete</th>
		  </tr>
		  <tr class="cross">

<%
int c=0;
double amt=0;
while(rs.next()){
%>

			<td class="t-data">
				<%=++c%>
			<td class="ring-in t-data">
				<%=rs.getString(2)%>
			<td class="ring-in t-data">
				<%=rs.getString(3)%>/-
			<td class=" t-data">
				<%=rs.getString(4)%>
			<td class="ring-in t-data">
				<%=rs.getString(5)%>/-
	<td class="ring-in t-data">
			<a href="delete.jsp?id=<%=rs.getString(1)%>"><img src="images/delete.png" width="32" height="32" border="0" alt=""></a>

<%
amt=amt+rs.getDouble("tot_cost");
body=body+"<tr><td>"+c;
body=body+"<td>"+rs.getString(3);
body=body+"<td>"+rs.getString(4);
body=body+"<td>"+rs.getString(5);
body=body+"<td>"+rs.getString(6);
body=body+"<td>"+rs.getString(7);


}
%>
	</table>

		  <%if(amt>1){
			  body=body+"</table>";
			body=body+"<br><br> Thank you for your shopping.. </font>";
			session.setAttribute("sub",sub);			session.setAttribute("body",body);
			  %>

		  <form method="post" action="cart2.jsp?amt=<%=amt%>">
			<button class="btn btn-danger my-cart-btn my-cart-b" >Payment</button>
		  </form>
		  		  <%}%>
<br><br><br><br>
<%@ include file="footer.jsp"%>