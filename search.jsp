
<%@ include file="header.jsp"%>

<form method="post" action="viewlist3.jsp">
	
		                  <%
                                                       String m=request.getParameter("m");                                                      
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>


		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Search here</h3>
						<div class="key">

							<input  type="text" required placeholder="Search" name="name" required>
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Search">
					</form>
				</div>
				<div class="forg">
				</div>
		
			</div>
		</div>
<!--footer-->

</form>
<br><br><br><br>
<%@ include file="footer.jsp"%>