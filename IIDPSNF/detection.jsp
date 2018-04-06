	<%@ include file="header.jsp"%>

<h1>Detection</h1>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ page  import="java.util.*" import="CT.*" %>


<%
String email=request.getParameter("email");
String sccalls=request.getParameter("sccalls");
String ip=request.getParameter("ip");
String date=request.getParameter("date");

String result="";
			result="Attacker";

sccalls=sccalls.trim();
String scc=sccalls.replaceAll("_"," ");

int count=0;

List<String> l0 = new ArrayList<String>();
l0=NGrams.ngrams(scc);
int size=l0.size();

//out.println(size+"<br>");
List<String> l00 = new ArrayList<String>();

Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
Statement st2 = con1.createStatement();

try{
	
String sss1 = "select * from habit_data where user!='"+email+"' order by count desc ";

	ResultSet rs1=st1.executeQuery(sss1);
		

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
				//out.println(count+"<br>");
				}
				if(size==count){
						result=rs1.getString("user");
				}else{
						
				}
					
				}
				
				}else{
						//
				}
			

			}
					


		
}


catch(Exception e1)
{
System.out.println(e1);
}
//out.println(result);

String level="Type 1";
if(scc.contains("chgpwd"))
	level="Type 3";
else if(scc.contains("chgmod")||scc.contains("update"))
	level="Type 2";
%>
<h4><br><br>
Your Account Security is compromised.
<br><br>
After Mining other user habits of SC-patterns Similarity weights, <br><br>
<%if(result.equals("Attacker")){
%><font size="" color="#da1883"><b>No user found, attacked by an attacker.</b>
<%
}else{%>
<font size="" color="#ec1c31">An internal intruder may be <strong>"<%=result%>"</strong></font>
<%}
st1.executeUpdate("insert into result(user, attackedby, date_, ip_,level_) values('"+email+"','"+result+"','"+date+"','"+ip+"','"+level+"') ");

%><br><br>
<font size="+1" color="#d11062">Level of Attack is <strong>"<%=level%>"</strong></font>
