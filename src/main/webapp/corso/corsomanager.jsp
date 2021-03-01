<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="it.contrader.dto.CorsoDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Corso Manager</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>

<div class="navbar">
  <a  href="homeadmin.jsp">Home</a>
  <a class="active" href="CorsoServlet?mode=corsolist">Corso</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<div class="main">
	<%
		List<CorsoDTO> list = (List<CorsoDTO>) request.getAttribute("list");
	%>

<br>

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
		<%
			for (CorsoDTO c : list) {
		%>
		<tr>
			<td><a href=CorsoServlet?mode=read&idCorso=<%=c.getIdCorso()%>>
					<%=c.getIdCorso()%>
			</a></td>
	
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
			
			
			
			<td><a href=CorsoServlet?mode=read&update=true&idCorso=<%=c.getIdCorso()%>>Edit</a>
			</td>
			<td><a href=CorsoServlet?mode=delete&idCorso=<%=c.getIdCorso()%>>Delete</a>
			</td>

		</tr>
		<%
			}
		%>
	</table>


<form id="floatleft" action="CorsoServlet?mode=insert" method="post">
  
  <div class="row">
    <div class="col-25">
      <label for="idCor">id Corso</label>
    </div>
    <div class="col-75">
      <input type="text" id="idCor" name="idCorso" placeholder="inserisci l'id del corso">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="idCan">id Candidato</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="idCan" name="idCandidato" placeholder="inserisci l'id del candidato"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="idItS">id Iter Selettivo</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="idItS" name="idIterSelettivo" placeholder="inserisci l'id staff"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="arCo">argomento Corso</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="arCo" name="argomentoCorso" placeholder="inserisci l'argomento del corso"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="Com">Comunicazioni</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="Com" name="valutazioneComunicazioni" placeholder="inserisci la valutazione per le comunicazioni"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="vInt">Intuitivita</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="vInt" name="valutazioneIntuitivita" placeholder="inserisci la valutazione per l'intuitivita"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="vAtt">Attitudine</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="vAtt" name="valutazioneAttitudine" placeholder="inserisci la valutazione per l'attitudine"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="vTM">TeamWork</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="vTM" name="valutazioneTeamWork" placeholder="inserisci la valutazione per il teamwork"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="oTot">ore Totali</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="oTot" name="oreTotali" placeholder="inserisci le ore totali del corso"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="idSff">id Staff</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="idSff" name="idStaff" placeholder="inserisci l'id staff"> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="dIn">Data Inizio</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="dIn" name="dataInizio" placeholder="inserisci la data dell'inizio del corso"> 
    </div>
  </div>
      
      
      <button type="submit" >Insert</button>
</form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>