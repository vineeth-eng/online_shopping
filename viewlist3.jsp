
<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>

 <div class="spec ">
				<h3><%String name=request.getParameter("name");%>Search Results</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>
	<div class=" con-w3l agileinf">
			
<%
	String id=request.getParameter("id");
	Connection con=databasecon.getconnection();
	 st = con.createStatement();
	 sss = "select * from menu3 where subject_ like '%"+name+"%' order by menu3 desc ";
	 rs=st.executeQuery(sss);
	while(rs.next()){
	%>


							<div class="col-md-3 pro-1">
								<div class="col-m">
				

			<img src="view.jsp?id=<%=rs.getString("menu3")%>" width="267" height="251" alt="" class="img-responsive"/>
				


									<div class="mid-1">
										<div class="women">
											<h6><a href=""><%=rs.getString(4)%></h6>							
										</div>
										<div class="mid-2">
											<p ><em class="item_price"><%=rs.getString(5)%>/-</em></p>
											  <div class="block">
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <a href="viewprod.jsp?id=<%=rs.getString("menu3")%>"><button class="btn btn-danger my-cart-btn my-cart-b" data-id="36"  data-image="images/of36.png">View</button>
										</a></div>
									</div>
								</div>
							</div>
<%


	}

%>
</div>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>