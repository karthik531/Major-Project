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
				    <CENTER>
						<h2 class="major">View Profile Information</h2><br>
					<CENTER>

<h4>

<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"profile";
session.setAttribute("sc",sc);

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






						<table ALIGN="CENTER">
						<tr><th>
						<b>Name<td>:</b>
						<%=rs.getString("name")%>
					
					
					<tr><th>
					
						<b>Address<td>:</b>
						<%=rs.getString("addr")%>
					
					<tr><th>
						
					
						<b>Zip<td>:</b>
									<%=rs.getString("zip")%>
			
					
			<tr><th>
						
					
						<b>Contact no<td>:</b>
						<%=rs.getString("tele")%>
<tr><th>
						
					
						<b>Gender<td>:</b>
						<%=rs.getString("gen")%>
					
					<tr><td>
						
						<br>
						
				</table>
<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="updateprofile.jsp">Update Profile</a><br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a  href="updatepassword.jsp">CHANGE PASSWORD</a>
				
	</div>

<%

}
	else{
		response.sendRedirect("updateprofile.jsp?msg=error");

		}
%>


<%@ include file="footer.jsp"%>