<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="it.contrader.dto.IterSelettivoDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Iter Selettivo Manager</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>

<div class="navbar">
  <a  href="homeadmin.jsp">Home</a>
  <a class="active" href="IterSelettivoServlet?mode=iterSelettivolist">Iter Selettivo</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<div class="main">
	<%
		List<IterSelettivoDTO> list = (List<IterSelettivoDTO>) request.getAttribute("list");
	%>

<br>

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
			<th></th>
			<th></th>
		</tr>
		<%
			for (IterSelettivoDTO is : list) {
		%>
		<tr>
			<td><a href=IterSelettivoServlet?mode=read&idIterSelettivo=<%=is.getIdIterSelettivo()%>>
					<%=is.getIdIterSelettivo()%>
			</a></td>
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
			<td><a href=IterSelettivoServlet?mode=read&update=true&idIterSelettivo=<%=is.getIdIterSelettivo()%>>Edit</a>
			</td>
			<td><a href=IterSelettivoServlet?mode=delete&idIterSelettivo=<%=is.getIdIterSelettivo()%>>Delete</a>
			</td>

		</tr>
		<%
			}
		%>
	</table>

<br>
<br>

<form id="floatleft" action="IterSelettivoServlet?mode=insert" method="post">
   <div class="row">
    <div class="col-75">
      <label for="idIS">Id Iter Selettivo</label>
    </div>
    <div class="col-200">
      <input type="text" id="idIS" name="idIterSelettivo" placeholder="inserisci l'id dell'iter selettivo">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="idCa">Id Candidato</label>
    </div>
    <div class="col-200">
      <input type="text" id="idCa" name="idCandidato" placeholder="inserisci l'id del candidato">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="idSt">Id Staff</label>
    </div>
    <div class="col-200">
      <input type="text" id="idSt" name="idStaff" placeholder="inserisci l'id dello staff-member che segue l'iter">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="pTotSc">Punteggio Totale Scritto</label>
    </div>
    <div class="col-200">
      <input type="text" id="pTotSc" name="punteggioTotaleScritto" placeholder="inserisci il punteggio totale della parte scritta">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="pLog">Punteggio Logica</label>
    </div>
    <div class="col-200">
      <input type="text" id="pLog" name="punteggioLogica" placeholder="inserisci il punteggio della parte di logica">
    </div>
   </div>
    <div class="row">
    <div class="col-75">
      <label for="pPhp">Punteggio Php</label>
    </div>
    <div class="col-200">
      <input type="text" id="pPhp" name="punteggioPhp" placeholder="inserisci il punteggio della parte di Php">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="pJava">Punteggio Java</label>
    </div>
    <div class="col-200">
      <input type="text" id="pJava" name="punteggioJava" placeholder="inserisci il punteggio della parte di Java">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="pHTML">Punteggio HTML</label>
    </div>
    <div class="col-200">
      <input type="text" id="pHTML" name="punteggioHTML" placeholder="inserisci il punteggio della parte di HTML">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="pIng">Punteggio Inglese</label>
    </div>
    <div class="col-200">
      <input type="text" id="pIng" name="punteggioInglese" placeholder="inserisci il punteggio della parte di inglese">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="daTS">Data Test Scritto</label>
    </div>
    <div class="col-200">
      <input type="text" id="daTS" name="dataTestScritto" placeholder="inserisci la data del test scritto">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="daTO">Data Test Orale</label>
    </div>
    <div class="col-200">
      <input type="text" id="daTO" name="dataTestOrale" placeholder="inserisci la data del colloquio orale">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <label for="valOr">Valutazione Orale</label>
    </div>
    <div class="col-200">
      <input type="text" id="valOr" name="valutazioneOrale" placeholder="inserisci la valutazione del colloquio orale">
    </div>
  </div>
        <button type="submit" >Insert</button>
</form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>