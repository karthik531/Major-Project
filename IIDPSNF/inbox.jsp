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
border:0.2px solid;
}
th, td {
    padding: 5px;
    
	text-align: left;
}
</style>
</head>

<h1>Received Files are</h1><br>
<table WIDTH=100%>
<tr><td bgcolor=#f09b4f  WIDTH="5%"> <h4>Sno<td bgcolor=#f09b4f WIDTH="20%" ><h4>Sender<td bgcolor=#f09b4f><h4>FileName<td bgcolor=#f09b4f  WIDTH="25%" ><h4>Date &Time<td  WIDTH="8%" bgcolor=#f09b4f><h4>Action




<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"inbox";
session.setAttribute("sc",sc);

Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from send where user='"+session.getAttribute("email")+"'  ";
	ResultSet rs=st1.executeQuery(sss1);
	int i=0;
	while(rs.next()){
	%>
		 <tr><td><h4><%=++i%><td><h4><%=rs.getString("sname")%><td><h4><%=rs.getString("fname")%><td><h4><%=rs.getString("date_")%>
		 
		<td><h4><a target='_blank' href="inbox2.jsp?id=<%=rs.getString("fid")%>">View</a>

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
