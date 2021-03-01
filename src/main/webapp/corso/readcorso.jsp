<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.CorsoDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Read Corso</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active"  href="CorsoServlet?mode=corsolist">Corso</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>

<div class="main">
<%CorsoDTO c = (CorsoDTO) request.getAttribute("dto");%>


<table>
	<tr> 
		<th>idCorso</th>
		<th>idCandidato</th>
		<th>idIterSelettivo</th>
		<th>argomentoCorso</th>
		<th>valutazioneComunicazioni</th>
		<th>valutazioneIntuitivita</th>
		<th>valutazioneAttitudine</th>
		<th>valutazioneTeamWork</th>
		<th>oreTotali</th>
		<th>idStaff</th>
		<th>dataInizio</th>
		</tr>
	<tr>
		<td><%=c.getIdCorso()%></td>
		<td> <%=c.getIdCandidato()%></td>
		<td> <%=c.getIdIterSelettivo()%></td>
		<td><%=c.getArgomentoCorso()%></td>
		<td><%=c.getValutazioneComunicazioni()%></td>
		<td><%=c.getValutazioneIntuitivita()%></td>
		<td><%=c.getValutazioneAttitudine()%></td>
		<td><%=c.getValutazioneTeamWork()%></td>
		<td><%=c.getOreTotali()%></td>
		<td><%=c.getIdStaff()%></td>
		<td><%=c.getDataInizio()%></td>
		
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