   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.CandidatiDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Read Candidati</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active"  href="CandidatiServlet?mode=candidatilist">Candidati</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>

<div class="main">
<%CandidatiDTO c = (CandidatiDTO) request.getAttribute("dto");%>


<table>
	<tr> 
			<th>idStaff</th>
			<th>nome</th>
			<th>cognome</th>
			<th>email</th>
			<th>luogoProvenienza</th>
			<th>numeroTelefono</th>
			<th>titoloStudio</th>
			<th>titoloLaurea</th>
			<th>dataCandidatura</th>
			<th>rangeCandidatura</th>
			<th>colloquioConoscitivo</th>
			<th>candidatiTramite</th>
			<th>idoneita'</th>
			<th>codiceFiscale</th>
			<th>userType</th>
	</tr>
	<tr>
		    <td><%=c.getIdStaff() %></td>
			<td><%=c.getNome() %></td>
			<td><%=c.getCognome()%></td>
			<td><%=c.getEmail()%></td>
			<td><%=c.getLuogoProvenienza()%></td>
			<td><%=c.getNumeroTelefono()%></td>
			<td><%=c.getTitoloStudio()%></td>
			<td><%=c.getTitoloLaurea()%></td>
			<td><%=c.getDataCandidatura()%></td>
			<td><%=c.getRangeCandidatura()%></td>
			<td><%=c.isColloquioConoscitivo()%></td>
			<td><%=c.getCandidatiTramite()%></td>
			<td><%=c.isIdoneita()%></td>
			<td><%=c.getCodiceFiscale()%></td>
			<td><%=c.getUserType()%></td>

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
