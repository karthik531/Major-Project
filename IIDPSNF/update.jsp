
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%
				
		String fid=(String)session.getAttribute("fid");

		String b1=request.getParameter("b1"); 
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"update";
session.setAttribute("sc",sc);


try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
	Statement st2 = con.createStatement();	
	PreparedStatement ps=con.prepareStatement("update  files set file_ =? where  fid=? ");
	ps.setString(1,b1);
	ps.setString(2,fid);
	ps.executeUpdate();
			response.sendRedirect("viewownfiles.jsp?msg=succ");
	
	}catch(Exception e){ 
	out.println(e);
	}
 %>
 