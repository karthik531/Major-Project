<%
					  String eee=(String)session.getAttribute("email");
					  if(eee ==null)
					  {
							response.sendRedirect("user.jsp?id=exp");
					  }

%>