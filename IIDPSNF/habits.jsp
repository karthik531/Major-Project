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



<h1>View User's Habit data (SC-Pattern)..</h1><br><br>

<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();

	st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from habit_data where user='"+request.getParameter("user")+"' order by count desc ");
	ResultSet rs2=st2.executeQuery("select *  from users ");

%>	

<form method="post" action="habits.jsp">
	<table align="left" cellpadding="10">
<tr><td><b><h2><font size="" color="#d9061c">Select  User to get SC-Pattern</font></h2><br>
<select name="user" onchange="this.form.submit()">
	<option value="" selected>Choose

<%

while(rs2.next())
	{
%>
	<option value="<%=rs2.getString("email")%>"><%=rs2.getString("name")%>
<%
	}
%>
</select>
</form>

<tr><td><br><br>
<h4><font size="" color="#d9061c">User SC's..</h4><br>

<table border width="100%" cellspacing="10">
<tr><th>Sno<th>SC's<th>Count
<%int c=1;

while(rs.next())
	{
		%>
	<tr><th width="7%"> <font size="" color="#a4a4a4"><%=c++%><td width="80%"><strong><font size="" color="#a4a4a4">
<%	List<String> ls=NGrams.ngrams(rs.getString(3));
		if(ls.isEmpty()){
			out.println("<u>"+rs.getString(3)+"</u> &nbsp;&nbsp;&nbsp;&nbsp;");
		
		}else{
		for(String s: ls)
			out.println("<u>"+s+"</u> &nbsp;&nbsp;&nbsp;&nbsp;");
		}

	%>
	
	<td width="13%"><strong><font size="" color="#a4a4a4"><%=rs.getString(4)%></strong>
<%
	}
%>	 
</table>
</table>
<br><br>

<br><br>
<%@ include file="footer.jsp"%>