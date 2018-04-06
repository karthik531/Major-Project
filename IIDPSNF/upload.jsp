<%@ page  import="java.sql.*" import="CT.*" %>

<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('File Uploaded Successfully!!')</script>");
	}
 %>

<%@ include file="uheader.jsp"%>
<br><br>
<center><br>
<font size="" color=""><h1>Data Upload: </h2></font>



<form  action="upload2.jsp" ENCTYPE="multipart/form-data" method="post" >   

						
<div class="contact-form">
									
	<input type="file" name="file" required ><br>
						<button class="btn1 btn-1 btn-1b">Upload</button>
</form>
</div>
<br><br><br><br><br>	
<%@ include file="footer.jsp"%>