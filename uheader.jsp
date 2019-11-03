<%@ page import="java.sql.*,databaseconnection.*"%>


<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>User:: <%=session.getAttribute("name")%></title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 


<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body>
<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 ><a href="">Shopping.com</a></h1>
			</div>
		
			<div class="head-t">
				<ul class="card">
					<li><a href="cart.jsp" ><i class="fa fa-heart" aria-hidden="true"></i>Wishlist</a></li>
					<li><a href="vieworders.jsp" ><i class="fa fa-file-text-o" aria-hidden="true"></i>Order History</a></li>
					<li><a href="search.jsp" ><i class="fa fa-search" aria-hidden="true"></i>Search Produts</a></li>
					<li><a href="user.jsp" ><i class="fa fa-user" aria-hidden="true"></i>Logout</a></li>
				</ul>	
			</div>
			
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
		
<hr>
				<div class="nav-top">
					<nav class="navbar navbar-default">
					
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<li><a href="u_home.jsp" class="hyper "><span>Home</span></a></li>	
<%
	Connection ccc=databasecon.getconnection();
	Statement st = ccc.createStatement();
	Statement st2 = ccc.createStatement();
	String sss = "select * from menu1 ";
	ResultSet rs=st.executeQuery(sss);

	
	ResultSet rs2=null;
	while(rs.next()){

		%>
							 
							 <li  class="dropdown ">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span><%=rs.getString(2)%><b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-6">
											<ul class="multi-column-dropdown">
											
											<%
											rs2=st2.executeQuery("select * from menu2 where menu1='"+rs.getString(1)+"' ");
											while(rs2.next()){
												System.out.println(rs2.getString(2));
											%>				
												<li><a href="viewlist.jsp?id=<%=rs2.getString(2)%>&&name=<%=rs2.getString(3)%>"><i class="fa fa-angle-right" aria-hidden="true"></i><%=rs2.getString(3)%></a></li>
												<%
											}	
											%>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
						
			<%
			}
%>							
		
							
							
							
							
							
							
							
							<li><a href="user.jsp" class="hyper"> <span>Logout</span></a></li>
							
							
							
							
							<!-- -->
						</ul>
					</div>
					</nav>
					 <div class="cart" >
					
						<a href="cart.jsp"><h3><span class="fa fa-shopping-cart"></span></h3></a>
					</div>
					<div class="clearfix"></div>
					 
				</div>
					
				</div>			
</div>
  <!---->

    <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 ></h3>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- faqs -->
	<div class="faq-w3 main-grid-border">
		<div class="container">
<%@ include file="session.jsp"%>
