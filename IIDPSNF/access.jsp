<%@ page  import="java.sql.*" import="databaseconnection.*" %>

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
</head>
<br>

			<div class="contact-form">

<font size="" color=""><h2>Index Preparation</h2></font>
<br><br>
<form method="post" action="access2.jsp">

<h4><strong>File:</h4></strong><br>
<textarea name="" rows="5" cols="150" Readonly><%=session.getAttribute("file")%></textarea><br><br>
<h4><strong>File id:</h4></strong><br>
<input type="text" name="fid" readonly value="<%=request.getParameter("id")%>"><br><br>
<h4><strong>Enter Keywords:</h4></strong><br>
<input type="text" name="keys" required ><br><br>


		<h4>															
			  <button class="btn1 btn-1 btn-1b">Store</button>


</form>
</div>
	<br><br><br><br><br>	
<%@ include file="footer.jsp"%>