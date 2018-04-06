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
									
<h2>Send File </h1><br>
<table cellspacing="10" width="100%">




<%
Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Blob data=null;

	Statement st1 = con1.createStatement();
	Statement st2 = con1.createStatement();
	String sss1 = " select * from files where fid='"+request.getParameter("id")+"' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next()){
		
	%>
		<form method="post" action="send2.jsp">
			
		 <tr><td><h4><b>File Id<td><h4>
		 <input type="text" name="fid" value="<%=rs.getString(1)%>"  size="90" readonly>

		 <tr><td><h4><b>File Name<td><h4><input type="text" name="name" value="<%=rs.getString("filename")%>" readonly>
		<tr><td><h4><b>User<td><h4>
		<select name="user">
<%
	ResultSet rs2=st2.executeQuery("select * from users");
	while(rs2.next()){
		 %>
			<option value="<%=rs2.getString("email")%>"><%=rs2.getString("name")%>


	<%

	}
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>
			</select>
		 <tr><td><td><h4>
		 						<button class="btn1 btn-1 btn-1b">Send</button>

	</form>

</table>
</div>
<hr>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>
