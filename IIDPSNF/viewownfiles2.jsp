<%@ page import="java.sql.*,databaseconnection.*, CT.*"%>
<%@ include file="uheader.jsp"%>
		  <head>
<style>
table, th, td {
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>

<div class="contact-form">
									
<h4>View File </h1><br>
<table cellspacing="10">




<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"viewfile";
session.setAttribute("sc",sc);

Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Blob data=null;

	Statement st1 = con1.createStatement();
	String sss1 = " select * from files where fid='"+request.getParameter("id")+"' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next()){
		data=rs.getBlob(3);
		session.setAttribute("file", data);

	%>
		<form method="post" action="download.jsp?name=<%=rs.getString(2)%>">
			
		 <tr><td><h4><b>File Id<td><h4><font size="3" color="#3157ee"><%=rs.getString(1)%>
		 <tr><td><h4><b>File Name<td><h4><font size="3" color="#3157ee"><%=rs.getString(2)%>
		 <tr><td><h4><b>Keywords<td><h4><%=rs.getString("keywords")%>
		 <tr><td><h4><b>File<td><textarea name="file" readonly rows="11" cols="100"><%=rs.getString("file_")%></textarea>
		 <tr><td><td><h4>
		 						<button class="btn1 btn-1 btn-1b">Download</button>

			<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
	</form>
	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>

</table>
</div>
<hr>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>
