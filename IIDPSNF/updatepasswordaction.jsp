<%@ page import="java.sql.*,databaseconnection.*"%>


<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"chgpwd";
session.setAttribute("sc",sc);

String ep = request.getParameter("ep");
String np = request.getParameter("np");
String email=(String)session.getAttribute("email");
int id=0;
Connection con=databasecon.getconnection();
	Statement st = con.createStatement();
		
	String query = "update  users  set pwd= '"+np+"' where email='"+email+"' && pwd='"+ep+"' ";
	System.out.println("query==="+query);
	int iii=st.executeUpdate(query);
	if(iii>0)
	{
response.sendRedirect("updatepassword.jsp?msg=succ");
		
	}
	else{
		response.sendRedirect("updatepassword.jsp?msg=fail");

		}
	
%>
