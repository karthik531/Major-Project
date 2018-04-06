<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="uheader.jsp"%>
		
<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"fileupload";
session.setAttribute("sc",sc);



String per=request.getParameter("acc");
String keys=request.getParameter("keys");

try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
	st2.executeUpdate("update files  set keywords='"+request.getParameter("keys")+"' where fid='"+request.getParameter("fid")+"' ");
response.sendRedirect("upload.jsp?id=succ");

			

}
catch(Exception e){
	System.out.println(e);
}

%>
