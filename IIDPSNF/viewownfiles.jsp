<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="uheader.jsp"%>

<%
	 String m=request.getParameter("msg");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Operation Successfully Completed !!')</script>");
                                                       }

%>
		  <head>
<style>
table, th, td {
border:1px solid;
}
th, td {
    padding: 15px;
    
	text-align: left;
}
</style>
</head>

<h1>Your Files are</h1><br>
<table >
<tr><td bgcolor=#ffff99><h2>Sno<td bgcolor=#ffff99><h2>File Id<td bgcolor=#ffff99><h2>File<td bgcolor=#ffff99><h2>Action<td bgcolor=#ffff99><h2>Action<td bgcolor=#ffff99><h2>Action<td bgcolor=#ffff99><h2>Action




<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"open";
session.setAttribute("sc",sc);

Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from files where user='"+session.getAttribute("email")+"' and active_='Yes' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	int i=0;
	while(rs.next()){
	%>
		 <tr><td><h4><%=++i%><td><h4><%=rs.getString(1)%><td><h4><%=rs.getString(2)%>
		 
<td><h4><a href="viewownfiles2.jsp?id=<%=rs.getString(1)%>">View</a>
<td><h4><a href="fileupdate.jsp?id=<%=rs.getString(1)%>">Update</a>
<td><h4><a href="delete.jsp?id=<%=rs.getString(1)%>">Delete</a>
<td><h4><a href="send.jsp?id=<%=rs.getString(1)%>">Send</a>

	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>




</table>
<hr>
<br><br><br><br><br>



<%@ include file="footer.jsp"%>
