	<%@ include file="uheader.jsp"%>

<%
String sc = (String)session.getAttribute("sc");
sc=sc+" "+"search";
session.setAttribute("sc",sc);

%>
<br><br><br>

<form method="post" action="search2.jsp">

	
			<div class="contact-form">

<center>
									<h1>Search Here</h1>
									<br>
					<input type="text" id="search" name="search" class="search" required placeholder="search here"/ size="30">
						<button class="btn1 btn-1 btn-1b">Search</button>
                                    </form></center>
<br><br>
</div>
	<%@ include file="footer.jsp"%>
