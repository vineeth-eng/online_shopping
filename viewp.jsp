


<%@ page  import="java.sql.*" import="CT.*" import="databaseconnection.*" %>
<%@ include file="aheader.jsp"%><h1>

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
				<h3>View Product</h3>
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
    <span style="display: block; width:<%=rat%>%; height: 13px; background: url(star-rating-sprite.png) 0 -13px;"></span><a href="" target="target" >(<%=res[1]%>)&nbsp;Reviews</a>


 


				
				 
			   
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