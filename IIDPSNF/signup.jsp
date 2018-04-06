<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>

<%@ include file="header.jsp"%>

	 				
				      <%
                                                       String m=request.getParameter("m");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("dup"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Duplicate Email  !! </blink></font></h3>");
                                                       }
                                               %>
 <form name="reg" action="signup1.jsp" method="get"   name="pwForm" >
					                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null&&!id.equals("fail") )
                                                       {
                                                               out.println("<blink><h2>Registration Success ! <br> <font color=orange size=+2>Your User Id:: <font color=#009900>"+id+" </blink></font></font></font></h2><br>");
                                                       }
													   else {%>
												
                                               <%}%>

				
						<CENTER>
						<h4  class="major">NEW USER REGISTRATION</h3><br>
					<CENTER>
						<table ALIGN="CENTER">
						<tr><td>
						Name<BR>
						<div class="opinion">
						<input type="text"  name="name" id = "name"    required size="50">
					<tr><td>
					
					<tr><td>
					
						<br>Address<br>
						<input type="text" name="addr" id = "addr"   required size="50">
					
					<tr><td>
						
					
						<br>Zip<br>
									<input type="text" 	pattern="[0-9]*" minlength="6" maxlength="6" id="zip"   required size="50"  name="zip">
			
					
			<tr><td>
						
					
						<br>Email<br>
						<input type="email" name="email" id="email"   required size="50">
			
			<tr><td>
						
					
						<br>Gender<br>
						<input type="radio" name="gen" value="male">Male&nbsp;&nbsp;<input type="radio" name="gen" value="female">Female&nbsp;&nbsp;
					<tr><td>
						
					
						<br>Contact no<br>
						<input type="text" name="tele"  	pattern="[0-9]*" minlength="10" maxlength="10"   required size="50">
					
					<tr><td>
						
					
						<br>Password<br>
						<input type="password" name="pwd" id="pwd"   required size="50" > 
					<tr><td>
						<br>
					<button class="btn1 btn-1 btn-1b">Register</button>
					
					</form>
				</table>
	</div>
<%@ include file="footer.jsp"%>