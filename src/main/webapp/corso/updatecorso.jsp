<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.CorsoDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Edit Corso </title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active" href="CorsoServlet?mode=corsolist">Corso</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>
<div class="main">

<%CorsoDTO c = (CorsoDTO) request.getAttribute("dto");%>


<form id="floatleft" action="CorsoServlet?mode=update&idCorso=<%=c.getIdCorso()%>" method="post">
  <div class="row">
    <div class="col-25">
      <label for="idCor">idCorso</label>
    </div>
    <div class="col-75">
      <input type="text" id="idCor" name="idCorso" value=<%=c.getIdCorso()%>>
    </div>
  </div> 
  <div class="row">
    <div class="col-25">
     <label for="idCan">idCandidato</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="idCan" name="idCandidato" value=<%=c.getIdCandidato()%>> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="idItS">idIterSelettivo</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="idItS" name="idIterSelettivo" value=<%=c.getIdIterSelettivo()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="arCo">argomentoCorso</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="arCo" name="argomentoCorso" value=<%=c.getArgomentoCorso()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="Com">valutazioneComunicazioni</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="Com" name="valutazioneComunicazioni" value=<%=c.getValutazioneComunicazioni()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="vInt">valutazioneIntuitivita</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="vInt" name="valutazioneIntuitivita" value=<%=c.getValutazioneIntuitivita()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="vAtt">valutazioneAttitudine</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="vAtt" name="valutazioneAttitudine" value=<%=c.getValutazioneAttitudine()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="vTM">valutazioneTeamWork</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="vTM" name="valutazioneTeamWork" value=<%=c.getValutazioneTeamWork()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="oTot">oreTotali</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="oTot" name="oreTotali" value=<%=c.getOreTotali()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="idSff">idStaff</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="idSff" name="idStaff" value=<%=c.getIdStaff()%>> 
    </div>
  </div>
   
  <div class="row">
    <div class="col-25">
     <label for="dIn">dataInizio</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="dIn" name="dataInizio" value=<%=c.getDataInizio()%>> 
    </div>
  </div>

      <button type="submit" >Edit</button>
</form>

	
</div>
<br>
<%@ include file="../css/footer.jsp" %>	
</body>
</html>