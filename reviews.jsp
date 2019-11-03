<%@ include file="uheader.jsp"%>
<%@ page import="shopping1.sql.*,databaseconnection.*"%>

<h3>Reviews
</h3>	   
	   <div class="bs-docs-example">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Sno</th>
                  <th>Review</th>
                  <th>Rating </th>
                  <th>Date</th>
                  <th>User</th>
                </tr>
              </thead>

<%
	Connection con=databasecon.getconnection();
	 st = con.createStatement();
	 int c=0;
	  sss = "select * from reviews where prodid='"+request.getParameter("id")+"' ";
	 rs=st.executeQuery(sss);
	while(rs.next()){

%>
              <tbody>
                <tr>
                  <td><%=++c%></td>
                  <td><%=rs.getString(4)%></td>
                  <td><%=rs.getString(3)%></td>
                  <td><%=rs.getString(6)%></td>
                  <td><%=rs.getString(5)%></td>

                </tr>
<%
	}
%>	
			
			</table>

	
	</div>		
	<br><br><br><br><br>
<%@ include file="footer.jsp"%>