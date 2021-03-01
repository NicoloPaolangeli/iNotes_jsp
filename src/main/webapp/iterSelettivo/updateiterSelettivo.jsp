<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.IterSelettivoDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Edit Iter Selettivo</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active" href="IterSelettivoServlet?mode=iterSelettivolist">IterSelettivo</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>
<div class="main">

<%IterSelettivoDTO is = (IterSelettivoDTO) request.getAttribute("dto");%>


<form id="floatleft" action="IterSelettivoServlet?mode=update&idIterSelettivo=<%=is.getIdIterSelettivo()%>" method="post">
  <div class="row">
    <div class="col-25">
      <label for="idCa">Id Candidato</label>
    </div>
    <div class="col-75">
      <input type="text" id="idCa" name="idCandidato" value=<%=is.getIdCandidato()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="idSt">Id Staff</label>
    </div>
    <div class="col-75">
      <input type="text" id="idSt" name="idStaff" value=<%=is.getIdStaff()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pTotSc">Punteggio Totale Scritto</label>
    </div>
    <div class="col-75">
      <input type="text" id="pTotSc" name="punteggioTotaleScritto" value=<%=is.getPunteggioTotaleScritto()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pLog">Punteggio Logica</label>
    </div>
    <div class="col-75">
      <input type="text" id="pLog" name="punteggioLogica" value=<%=is.getPunteggioLogica()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pPhp">Punteggio Php</label>
    </div>
    <div class="col-75">
      <input type="text" id="pPhp" name="punteggioPhp" value=<%=is.getPunteggioPhp()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pJava">Punteggio Java</label>
    </div>
    <div class="col-75">
      <input type="text" id="pJava" name="punteggioJava" value=<%=is.getPunteggioJava()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pHTML">Punteggio HTML</label>
    </div>
    <div class="col-75">
      <input type="text" id="pHTML" name="punteggioHTML" value=<%=is.getPunteggioHTML()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pIng">Punteggio Inglese</label>
    </div>
    <div class="col-75">
      <input type="text" id="pIng" name="punteggioInglese" value=<%=is.getPunteggioInglese()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="daTS">Data Test Scritto</label>
    </div>
    <div class="col-75">
      <input type="text" id="daTS" name="dataTestScritto" value=<%=is.getDataTestScritto()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="daTO">Data Test Orale</label>
    </div>
    <div class="col-75">
      <input type="text" id="daTO" name="dataTestOrale" value=<%=is.getDataTestOrale()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="valOr">Valutazione Orale</label>
    </div>
    <div class="col-75">
      <input type="text" id="valOr" name="valutazioneOrale" value=<%=is.getValutazioneOrale()%>>
    </div>
  </div>

      <button type="submit" >Edit</button>
</form>

	
</div>
<br>
<%@ include file="../css/footer.jsp" %>	
</body>
</html>