<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="uheader.jsp"%>
		  <head>
<style>
table, th, td {
  border: 1px solid black;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head><br>
<h3>Search Results</h3><br><br>
<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"getlist";
session.setAttribute("sc",sc);

String key=request.getParameter("search");
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();
String sql="select *  from files where keywords like '%"+key+"%' and active_='Yes' ";
System.out.println(sql);
ResultSet rs=st2.executeQuery(sql);
int i=0;
%>
<table cellspacing=10 >
<tr><td><h2>S.no</h2><td><h2>File ID</h2><td><h2>File Name<td><h2>Upload By<td><h2>Download
<%
while(rs.next())
{
	%>
	<tr><th><h4><font size="" color="#3333cc"><%=++i%></h3>
	<th><h4><font size="" color="#3333ff"><%=rs.getString(1)%>
	<th><h4><font size="" color="#3366cc"><%=rs.getString(2)%>
	<th><h4><font size="" color="#3366cc"><%=rs.getString("user")%>
	<th><a href="search3.jsp?id=<%=rs.getString(1)%>"><h4><font size="" color="#3399cc">Download</a>
	<%
}
%>
</table>


<%@ include file="footer.jsp"%>