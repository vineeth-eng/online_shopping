<%
					  String u123=(String)session.getAttribute("email");
					  if(u123 ==null)
					  {
							response.sendRedirect("user.jsp?id=exp");
					  }

%>