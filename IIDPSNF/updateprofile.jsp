<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*"%>

<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%
	
	
	 String m=request.getParameter("id");
                                                      
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<script>alert('Profile Updated Successfully')</script>");
                                                       }

if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<script>alert('Failed Check Your Session..')</script>");
                                                       }

	
	%>

	 				
<br><br><br>
 <form name="reg" action="updateprofileaction.jsp" method="get"   name="pwForm" >
					                 
				
						<CENTER>
						<h2  class="major">Update Profile Information</h3><br>
					<CENTER>


<%

String email=(String)session.getAttribute("email");
int id=0;
Connection con=databasecon.getconnection();
	Statement st = con.createStatement();
		
	String query = "select * from users where email='"+email+"' ";
	System.out.println("query==="+query);
	ResultSet rs=st.executeQuery(query);
	if(rs.next())
	{
	
%>






						<table ALIGN="CENTER" style="font-size: 1.2em">
						<tr><td>
						Name<BR/>
						<div class="opinion">
						<input type="text"  name="name" id = "name" value="<%=rs.getString("name")%>"   required size="50">
                            </div></td></tr>
					
					<tr><td>
					
						<br>Address<br>
						<input type="text" name="addr" id = "addr" value="<%=rs.getString("addr")%>"   required size="50">
					
                        </td></tr>
						
                        <tr><td>
						<br>Zip<br>
									<input type="text" 	pattern="[0-9]*" minlength="6" maxlength="6" id="zip"  value="<%=rs.getString("zip")%>"  required size="50"  name="zip">
                            </td></tr>
					
			<tr><td>
						
					
						<br>Contact no<br>
						<input type="text" name="tele"  	pattern="[0-9]*" minlength="10" maxlength="10" value="<%=rs.getString("tele")%>"   required size="50">
					
                </td></tr>
						
				<tr><td>
                    <br>
					<button class="btn1 btn-1 btn-1b">Update</button>
                </td></tr>
					</form>
				</table>
	</div>

<%

}
	else{
		response.sendRedirect("updateprofile.jsp?msg=error");

		}
%>


<%@ include file="footer.jsp"%>