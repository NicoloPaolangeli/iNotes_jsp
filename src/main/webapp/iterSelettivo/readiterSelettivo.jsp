<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.IterSelettivoDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Read Iter Selettivo</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active"  href="IterSelettivoServlet?mode=iterSelettivolist">IterSelettivo</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>

<div class="main">
<%IterSelettivoDTO is = (IterSelettivoDTO) request.getAttribute("dto");%>


<table>
	<tr> 
		<th>idIterSelettivo</th>
		<th>idCandidato</th>
		<th>idStaff</th>
		<th>punteggioTotaleScritto</th>
		<th>punteggioLogica</th>
		<th>punteggioPhp</th>
		<th>punteggioJava</th>
		<th>punteggioHTML</th>
		<th>punteggioInglese</th>
		<th>dataTestScritto</th>
		<th>dataTestOrale</th>
		<th>valutazioneOrale</th>

	</tr>
	<tr>
		<td><%=is.getIdIterSelettivo()%></td>
		<td><%=is.getIdCandidato()%></td>
		<td><%=is.getIdStaff()%></td>
		<td><%=is.getPunteggioTotaleScritto()%></td>
		<td><%=is.getPunteggioLogica()%></td>
		<td><%=is.getPunteggioPhp()%></td>
		<td><%=is.getPunteggioJava()%></td>
		<td><%=is.getPunteggioHTML()%></td>
		<td><%=is.getPunteggioInglese()%></td>
		<td><%=is.getDataTestScritto()%></td>
		<td><%=is.getDataTestOrale()%></td>
		<td><%=is.getValutazioneOrale()%></td>
		
		
	</tr>	
</table>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


</div>

<%@ include file="../css/footer.jsp" %>
</body>
</html>