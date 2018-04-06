
<style>
body{
	font-family: 'Consolas', Consolas;
	margin:0;
	padding:0;
	background:#000;
 }

table {
    width: 100%;
    display:block;
}
thead {
    display: inline-block;
    width: 100%;
    height: 20px;
}
tbody {
    height: 400px;
    display: inline-block;
    width: 100%;
    overflow: auto;
}
</style>
<font size="+2" color="#fff">System Calls</font></h3><br><br>
<center>

<table  cellspacing=2>

<%
String sccalls=(String)session.getAttribute("sc");
sccalls=sccalls.trim();
String[] calls=sccalls.split("\\s+");
for(String cc:calls)
{
	%>
	<tr><td><font size="+1" color="#fff">> <%=cc%>
	<%
}

%>