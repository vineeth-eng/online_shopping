
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>

<%@ include file="header.jsp"%>

	 				
				      <%
                         String m=request.getParameter("m");
                                                    
                          if(m!=null && m.equalsIgnoreCase("dup"))
                         {
                          out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Duplicate Email  !! </blink></font></h3>");
                            }
                          if(m!=null && m.equalsIgnoreCase("dup2"))
                         {
                          out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Wrong OTP  !! </blink></font></h3>");
                            }
                                               %>
 <form name="reg" action="signup1.jsp" method="get"   name="pwForm" >
					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {
                                                               out.println("<blink><h4>Registration Success !</h4> <br> <br>");
                                                       }
													   else {%>
												
                                               <%}%>

			
				<div class="opinion">
						
						<CENTER>
						<h3  class="major">User Signup</h3><br>
					<CENTER>
						<table width="70%" ALIGN="CENTER">
						<tr><td>
					<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">First Name</span>
  <input required  type="text" class="form-control"  name="name" aria-describedby="basic-addon1">
</div>
					<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">Last Name</span>
  <input required  type="text" class="form-control"  name="lname" aria-describedby="basic-addon1">
</div>

<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">Address</span>
  <input required  type="text" class="form-control"  name="addr" aria-describedby="basic-addon1">
</div>

<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">City</span>
  <input required  type="text" class="form-control"  name="city" aria-describedby="basic-addon1">
</div>

<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">Zip</span>
  <input required   type="text" 	pattern="[0-9]*" minlength="6" maxlength="6"  type="text" class="form-control"  name="city" aria-describedby="basic-addon1">
</div>

			
<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">Email</span>
  <input required  type="text" class="form-control"  name="email" aria-describedby="basic-addon1">
</div>		

<div class="input required -group">
<span class="input required -group-addon" id="basic-addon1">Gender</span>
<select class="form-control"  name="gen" aria-describedby="basic-addon1">
	<option value="Male" selected>Male
	<option value="Female">Female
  </select>  

</div>		

				
<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">						Contact no</span>
  <input required  type="text" class="form-control" pattern="[0-9]*" minlength="10" maxlength="10" name="tele" aria-describedby="basic-addon1">
</div>			
<div class="input required -group">
  <span class="input required -group-addon" id="basic-addon1">						Password</span>
  <input required  type="password" class="form-control" name="pwd" aria-describedby="basic-addon1">
</div>			
<div class="input required -group">
<input required  type="submit" value="Register">
</div>
					
					</form>
				</table>
	</div>
<%@ include file="footer.jsp"%>