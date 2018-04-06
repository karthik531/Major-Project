<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>

<%
int id=0;
Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();

%>

<% 
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"chgmod";
session.setAttribute("sc",sc);


ResultSet rs=null;

PreparedStatement ps=null;

	String name = request.getParameter("name");
	String tele = request.getParameter("tele");
String addr = request.getParameter("addr");
String zip = request.getParameter("zip");


	


       try
                {	  
					String email=(String)session.getAttribute("email");
Connection con=databasecon.getconnection();
ps=con.prepareStatement("update users set name=?, tele=?, zip=?, addr=? where email=? ");
			//////////////////////////////////////////////////
ps.setString(1,name);
ps.setString(2,tele);
ps.setString(3,zip);
ps.setString(4,addr);
ps.setString(5,email);

int s = ps.executeUpdate();
if(s>0){
response.sendRedirect("updateprofile.jsp?id=succ");
}
else{
response.sendRedirect("updateprofile.jsp?id=fail");

}
}

catch(Exception ex){

out.println("Error in connection : "+ex);

}




%>
       
