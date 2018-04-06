<%@ page import="java.sql.*,databaseconnection.*, CT.*"%>
<%@ include file="uheader.jsp"%>



<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"delete";
session.setAttribute("sc",sc);

Connection con1 = databasecon.getconnection();
try
{

	Statement st1 = con1.createStatement();
	String sss1 = " update  files set active_='No' where fid='"+request.getParameter("id")+"' ";

		st1.executeUpdate(sss1);
		
response.sendRedirect("viewownfiles.jsp?msg=succ");

	
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>

