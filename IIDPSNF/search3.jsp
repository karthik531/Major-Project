<%@ includefile="uheader.jsp"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*" %>
<br><br>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<%
                                                       String m=request.getParameter("msg");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font  color='green'><blink><h2>Update Done!! </blink></font></h3>");
                                                       }if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h2>Don't have permission to update!! </blink></font></h3>");
                                                       }
                                               %>

<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"viewfile";
session.setAttribute("sc",sc);

	String fid =request.getParameter("id");
	session.setAttribute("fid",fid);
	Connection con = null,con1 = null,con2 = null;
	PreparedStatement ps = null,ps1 = null,ps2 = null;
	ResultSet rs = null,rs1 = null,rs2 = null;
	String data1=null,data2=null,data3=null,fn=null,own=null;
	Blob file1= null;

	

	
	try
	{
		 con=databasecon.getconnection();
		ps = con.prepareStatement("select * from files where fid ='"+fid+"'");
		rs = ps.executeQuery();
		while(rs.next())
		{
		fn=rs.getString("filename");
		session.setAttribute("fn",fn);
		file1=rs.getBlob(3);
		}
		
		session.setAttribute("file",file1);
		
		
		byte[] bdata = file1.getBytes(1, (int)file1.length());
        data1 = new String(bdata);
        
	
	}
catch(Exception e)
	{
	System.out.println("Exception :"+e);
	}
	
	
	%>
<h1>View File</h1>
      <br/>
    </p>
				<div class="contact-form">

          <table  cellpadding="" cellspacing="20">
            <tr> 
           <td><h4><font size="" color="#5fc99c"><b>File Name</font></h2></strong></font></td>
              <td colspan='2'> <em><strong><font color="#FF3333"><h4><%=fn%></h3></font></strong></em></td>
            </tr>
            <tr> 
              <td><h4><font size="" color="#5fc99c"><b>File Data</h2></td>
              <td colspan='2'><textarea name="b1" cols="90" rows="4" ><%=data1%></textarea></td>
            </tr><td><td>
            		  
		<form name="s" action="download.jsp?name=<%=fn%>" method="post" >
			  <button class="btn1 btn-1 btn-1b">Download</button>
			  </form>
		</table>
        
		</div>
<%@ includefile="footer.jsp"%>