	<%@ include file="uheader.jsp"%>

	<%
	
	
	 String m=request.getParameter("msg");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Password Updated Successfully')</script>");
                                                       }

if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<script>alert('Please Enter Valid Existing Password')</script>");
                                                       }

	
	%>
<br><br><br>

<form action="updatepasswordaction.jsp" method="get" >
				
						<CENTER>
						<h4  class="major">Update password</h3><br>
					<CENTER>
						<table ALIGN="CENTER">
						<tr><td>
						Existing Password<BR>
						<div class="opinion">
						<input type="password"  name= "ep"    required size="50">
					
					<tr><td>
						New Password<BR>
						<div class="opinion">
						<input type="password"  name = "np"    required size="50">
					<tr><td>
					
					
					<tr><td>
						<br>
					<button class="btn1 btn-1 btn-1b">Update password</button>
</table>
	<%@ include file="footer.jsp"%>
