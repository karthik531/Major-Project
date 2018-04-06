
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Registration Form</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

</head>
<%@ page   import="databaseconnection.*" %>
<%@ page import="java.io.*,java.sql.*,java.util.*"%>
<%
///
	Random randomGenerator = new Random();
		int randomInt=0;
		randomInt = randomGenerator.nextInt(10000000);
	
String user=(String)session.getAttribute("email");
out.println(user);
	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
out.println(file);
//
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
File f=new File(saveFile);
FileInputStream fis=new FileInputStream(saveFile);
//
// System.out.println(ff.getName());
         // open input stream test.txt for reading purpose.
		 
String pname=ff.getName().toString();
session.setAttribute("file",file);

try{
Connection con = databasecon.getconnection();
//b1=new Blob(b);
PreparedStatement pst=con.prepareStatement("insert into files(fid,filename, file_,user) values(?,?,?,?)");
pst.setInt(1,randomInt);
pst.setString(2,pname);
pst.setBinaryStream(3,(InputStream)fis,(int)(f.length()));
pst.setString(4,user);

int i=pst.executeUpdate();
if(i==1)
	{
 //out.println("update");

response.sendRedirect("access.jsp?id="+randomInt);

	}

}catch(Exception e){
	e.printStackTrace();
System.out.println(e);
}
		 
}
%>
