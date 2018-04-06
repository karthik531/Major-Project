<%@ include file="header.jsp"%>
<%
//session.invalidate();%>

  <%
    String mm=request.getParameter("id");
  if(mm!=null && mm.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>

<br><br><br>
<h1>Login Page for User</h1>



					
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<table><tr><td><font  color='red'><blink><br><br><h4>Login Fail   !! </blink></font></h3></table>");
                                                       }
                                               %>
											   


			<div class="contact-form">
				
<form method="post" action="ulogin.jsp">


	<input type="text" name="uid" required placeholder="Email" ><br>
	<input type="password" name="pwd" required placeholder="Password" ><br>
					<button class="btn1 btn-1 btn-1b">Login</button>

</form>

				</div>							   



<br><br><br>
<%@ include file="footer.jsp"%>