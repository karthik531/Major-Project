<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ page  import="java.util.*" import="CT.*" %>


<%
String ipppp=IpAddress.main();
String email=(String)session.getAttribute("email");

String sccalls=(String)session.getAttribute("sc");
sccalls=sccalls.trim();
String scc=sccalls.replaceAll(" ","_");
int count=0;

List<String> l0 = new ArrayList<String>();
l0=NGrams.ngrams(sccalls);
int size=l0.size();

out.println(size);
if(size>=1){
}else{
		session.invalidate();
		response.sendRedirect("user.jsp?insuffi");
		
}
List<String> l00 = new ArrayList<String>();


try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
Statement st2 = con1.createStatement();
	
String sss1 = "select * from habit_data where user='"+email+"' order by count desc ";

	ResultSet rs1=st1.executeQuery(sss1);
		if(rs1.next())
		{

			rs1=st2.executeQuery(sss1);
			while(rs1.next()){
				count=0;
				l00=NGrams.ngrams(rs1.getString("sccalls"));
				if(l00.size()>=size){
				for(int i=0;i<size;i++){
				List<String> l1 = new ArrayList<String>();
				String ll1=l0.get(i);
				for(String ss:ll1.split("\\s+"))
					l1.add(ss);
				System.out.println("l1==================="+l1);
				
				List<String> l2 = new ArrayList<String>();
				String ll2=l00.get(i);
				for(String ss:ll2.split("\\s+"))
					l2.add(ss);/// user habits
				System.out.println("l2===================="+l2);

				List<String> l3 = new ArrayList<String>(l2);
				l3.retainAll(l1);
				System.out.println("l3="+l3);
				if(l3.size()>=3){
				count++;
				}
				if(size==count){
						System.out.println("size="+size+"count="+count);
						st2.executeUpdate("update habit_data set count=count+1 where sno='"+rs1.getInt("sno")+"' ");	
						//session.invalidate();
						response.sendRedirect("user.jsp?perfect");

				}else{
						
				}
					
				}
				
				}else{
					
				}
			

			}
			String sub="Security alert for your linked IIDPS account";
					String body="<font color=#f4ab13 size=3>Dear "+session.getAttribute("name")+"<br><br></font>";
					body=body+"<font color=#4093ee size=3>Your IIDPS Account "+email+" was just used to sign in from windows<br><br></font>";
					
					body=body+"<Font color=#4093ee size=3><strong>Details</strong><br><table><tr><td><img src=https://ci6.googleusercontent.com/proxy/8-TvqI07V6c6EfMmOpioytN1akb1_MYoQR5JjP9FrOcBKg-A1ob9_8rI-og2hhemR-SKt-PTzEc8LHrxdtQOnK5WmXqFWq16_l4IuCD9uPzGQipSyU_VqCQpBegNZjcIuYnKtg=s0-d-e1-ft#https://www.gstatic.com/accountalerts/devices/windows_laptop_wallpaper_big.png width=78 height=78 >   <td>Windows<br>"+GetMyIPAddress.main()+"<br>"+DateDemo.main()+"<br> </table><BR> </font>";
					
					body=body+"<h4><a href=http://"+ipppp+":8080/IIDPS/thatyou.jsp?email="+email+"&&sccalls="+scc+">Is that you</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=http://"+ipppp+":8080/IIDPS/detection.jsp?email="+email+"&&sccalls="+scc+"&&ip="+GetMyIPAddress.main()+"&&date="+DateDemo.main()+"&&sccalls="+scc+">It's not me! Detection</a></h4>";


					mail.mailsend(email,sub,body);
					session.invalidate();
					response.sendRedirect("user.jsp");


		}
		else{
		
		st2.executeUpdate("insert into habit_data(user, sccalls, count) values('"+email+"','"+sccalls+"','1')");
		session.invalidate();
		response.sendRedirect("user.jsp?newuser");

		}
}


catch(Exception e1)
{
System.out.println(e1);
}


%>