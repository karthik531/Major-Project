	<%@ include file="header.jsp"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ page  import="java.util.*" import="CT.*" %>


<%
String email=request.getParameter("email");

String sccalls=request.getParameter("sccalls");
sccalls=sccalls.trim();
String scc=sccalls.replaceAll("_"," ");
int count=0;


try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

		st1.executeUpdate("insert into habit_data(user, sccalls, count) values('"+email+"','"+scc+"','1')");
		out.println("<h2>Thank you for your response, your new sc-pattern updates in habit data");
		
}


catch(Exception e1)
{
System.out.println(e1);
}


%>	<%@ include file="footer.jsp"%>
