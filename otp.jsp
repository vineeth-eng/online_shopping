
<%@ include file="header.jsp"%>

<%
%>
<form method="post" action="otp2.jsp">
	

		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>User Verification</h3>
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" required value="Username" name="otp2" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
							<input type="hidden" name="otp1" value="<%=request.getParameter("id")%>">
							<input type="hidden" name="email" value="<%=request.getParameter("email")%>">
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Submit">
					</form>
				</div>
				<div class="clearfix"></div>
				</div>
		
			</div>
		</div>
<!--footer-->

</form>
<br><br><br><br>
<%@ include file="footer.jsp"%>