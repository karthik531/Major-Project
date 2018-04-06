<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*"%>
<%@ include file="aheader.jsp"%>
		  <head>
<style>
table, th, td {
}
th, td {
    padding: 5px;
    text-align: left;
}
</style>
</head>



										       <%
                                                       String message=request.getParameter("m");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red'><blink>You Entered String is dupicate</blink></font>");
                                                       }
                                               %>



<br>

<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();

	st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from result  order by date_ desc ");

%>	


<h1><font size="" color="#d9061c">Internal Intrusions..</h4><br>

<table border width="100%" cellspacing="10">
<tr><th>Sno<th>User<th>Attacked by <th>Level of Attack <th>Date<th>Device IP Addr
<%int c=1;

while(rs.next())
	{
		%>
	<tr><th width="7%"> <font size="" color="#a4a4a4"><%=c++%>
	<td ><strong><font size="" color="#a4a4a4"><%=rs.getString(2)%></strong>
	<td ><strong><font size="" color="#a4a4a4"><%=rs.getString(3)%></strong>
	<td ><strong><font size="" color="#a4a4a4"><%=rs.getString(6)%></strong>
		<td ><strong><font size="" color="#a4a4a4"><%=rs.getString(4)%></strong>
		<td ><strong><font size="" color="#a4a4a4"><%=rs.getString(5)%></strong>
<%
	}
%>	 
</table>
</table>
<br><br>

<br><br>
<%@ include file="footer.jsp"%>