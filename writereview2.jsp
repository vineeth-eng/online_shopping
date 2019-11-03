<%@ page import="java.sql.*,databaseconnection.*, java.util.Date, java.text.*"%>

<%

String id = request.getParameter("id");
double rating = Double.parseDouble(request.getParameter("rating"));
String review = request.getParameter("review");
String user=(String)session.getAttribute("email");
String name=(String)session.getAttribute("name");
Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("dd/MM/yyyy");
      String date=ft.format(dNow);

	
	Connection ccc=databasecon.getconnection();
	PreparedStatement ps=ccc.prepareStatement("insert into reviews(prodid,rating,review,userid,date_,uname) values (?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setDouble(2, rating);
	ps.setString(3, review);
	ps.setString(4, user);
	ps.setString(5, date);
	ps.setString(6, name);
	ps.executeUpdate();

response.sendRedirect("writereview.jsp?id="+id+"&&m=succ");

%>