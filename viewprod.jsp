
<%@ page  import="java.sql.*" import="CT.*" import="databaseconnection.*" %>
<%@ include file="uheader.jsp"%><h1>

<%
    String message=request.getParameter("id2");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Added to Cart !!')</script>");
	}
 %>
</div>


<%
try{
String q1="select * from menu3 where menu3 ='"+request.getParameter("id")+"' ";	

Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
ResultSet rs1=st1.executeQuery(q1);
	if(rs1.next())
	{

%>
 <div class="spec ">
				<h3>View & Buy Product</h3>
					<div class="ser-t">
						<b></b>
						<span><i></i></span>
						<b class="line"></b>
					</div>
			</div>
							
<form method="post" action="buy.jsp">
	


		<div class="single">
			<div class="container">
						<div class="single-top-main">
	   		<div class="col-md-5 single-top">
	   		<div class="single-w3agile">
							
				
<div id="picture-frame">
			<img src="view.jsp?id=<%=rs1.getString("menu3")%>" width="267" height="251" alt="" 
			class="img-responsive"/>

		</div>
		
		
			</div>
			</div>
			<div class="col-md-7 single-top-left ">
								<div class="single-right">
				<h3><%=rs1.getString("subject_")%></h3>
				<input type="hidden" name="sub" value="<%=rs1.getString("subject_")%>">
			<input type="hidden" name="id" value="<%=rs1.getString("menu3")%>">

					
				 <div class="pr-single">
				  <p class="reduced "><%=rs1.getString("cost")%>/-</p>
				<input type="hidden" name="cost" value="<%=rs1.getString("cost")%>">

				</div>
				<h4>No. of items:&nbsp;&nbsp;&nbsp;<input type="number" name="tot" required min=1 max=10 placeholder="" value="1"></h4>

				<p class="in-pa"><%=rs1.getString("des")%>  </p>

				<%
				String[] res={"0","0"};
				double rat=0.0;
				try{
				res=Rating.main(rs1.getString("menu3"));
				rat=Double.parseDouble(res[0]);
				rat=rat/5*100;
				}catch(Exception e){}
				%>
  
  <span style="display: block; width: 65px; height: 13px; background: url(star-rating-sprite.png) 0 0;">
    <span style="display: block; width:<%=rat%>%; height: 13px; background: url(star-rating-sprite.png) 0 -13px;"></span><a href="reviews.jsp?id=<%=rs1.getString("menu3")%>" target="target" >(<%=res[1]%>)&nbsp;Reviews</a>




				<a href="#" onclick="window.open('writereview.jsp?id=<%=rs1.getString("menu3")%>', 'newwindow', 'width=550, height=450'); return false;"><img src="images/review.png" width="256" height="80" border="0" alt=""></a> 


					<div class="add add-3">
										  <button class="btn btn-danger my-cart-btn my-cart-b" >Add to Cart</button>
					</div>
				
				 
			   
			<div class="clearfix"> </div>
			</div>
		 

			</div>
		   <div class="clearfix"> </div>
	   </div>	
				 
				
	</div>
</div>





</form>




<%}}

catch(Exception e1)
{
out.println(e1.getMessage());
}
%>

	</div>
	</div>
<br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>