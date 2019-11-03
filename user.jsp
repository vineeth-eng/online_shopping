
<%@ include file="header.jsp"%>

<%
session.invalidate();%>

  <%
    String mm=request.getParameter("id");
  if(mm!=null && mm.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>


<form method="post" action="ulogin.jsp">
	
		                  <%
                                                       String m=request.getParameter("m");                                                      
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>


		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>User Login</h3>
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" required placeholder="Username" name="uid" > 
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" placeholder="Password" name="pwd"  required>
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Submit">
					</form>
				</div>
				<div class="forg">
					<a href="signup.jsp                                                                                                                                                               " class="forg-right">Register</a>
				<div class="clearfix"></div>
				</div>
		
			</div>
		</div>
<!--footer-->

</form>
<br><br><br><br>
<%@ include file="footer.jsp"%>