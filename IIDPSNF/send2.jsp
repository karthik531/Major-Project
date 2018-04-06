<%@ page import="java.sql.*,databaseconnection.*, CT.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
<%@ include file="uheader.jsp"%>



<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"send";
session.setAttribute("sc",sc);

	  Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("yyyy/MM/dd 'at' hh:mm:ss");

String fid=request.getParameter("fid");
String name=request.getParameter("name");
String user=request.getParameter("user");

Connection con1 = databasecon.getconnection();
try
{

	Statement st1 = con1.createStatement();
	String sss1 = " insert into send values ('"+user+"','"+fid+"','"+name+"','"+session.getAttribute("name")+"', '"+session.getAttribute("email")+"','"+ft.format(dNow)+"') ";

		st1.executeUpdate(sss1);
		
response.sendRedirect("viewownfiles.jsp?msg=succ");

	
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>

