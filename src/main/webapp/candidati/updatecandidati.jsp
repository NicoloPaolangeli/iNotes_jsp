    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.CandidatiDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Edit Candidati</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active" href="CandidatiServlet?mode=candidatilist">Candidati</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>
<div class="main">

<%CandidatiDTO c = (CandidatiDTO) request.getAttribute("dto");%>


<form id="floatright" action="CandidatiServlet?mode=update&idCandidati=<%=c.getIdCandidati()%>" method="post">
<div class="row">
    <div class="col-25">
     <label for="pass">idStaff</label>
    </div>
    <div class="col-75">
      <input type="text" id="idStaff" name="idStaff" value=<%=c.getIdStaff() %>> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Nome</label>
    </div>
    <div class="col-75">
      <input type="text" id="nome" name="nome" value=<%=c.getNome()%>> 
    </div>
  </div>

  <div class="row">
    <div class="col-25">
      <label for="cognome">Cognome</label>
    </div>
    <div class="col-75">
      <input type="text" id="cognome" name="cognome" value=<%=c.getCognome()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="email" name="email" value=<%=c.getEmail()%>> 
    </div>
  </div>


  <div class="row">
    <div class="col-25">
      <label for="luogo">Luogo di Provenienza</label>
    </div>
    <div class="col-75">
      <input type="text" id="luogo" name="luogoProvenienza" value=<%=c.getLuogoProvenienza()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Numero di Telefono</label>
    </div>
    <div class="col-75">
      <input type="text" id="numero" name="numeroTelefono" value=<%=c.getNumeroTelefono()%>> 
    </div>
  </div>


  <div class="row">
    <div class="col-25">
      <label for="titolo">Titolo di Studio</label>
    </div>
    <div class="col-75">
      <input type="text" id="titolo" name="titoloStudio" value=<%=c.getTitoloStudio()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Titolo di Laurea</label>
    </div>
    <div class="col-75">
      <input type="text" id="titl" name="titoloLaurea" value=<%=c.getTitoloLaurea()%>> 
    </div>
  </div>

   <div class="row">
    <div class="col-25">
      <label for="date">Data di Candidatura</label>
    </div>
    <div class="col-75">
      <input type="text" id="date" name="dataCandidatura" value=<%=c.getDataCandidatura()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Range di candidatura</label>
    </div>
    <div class="col-75">
      <input type="text" id="range" name="rangeCandidatura" value=<%=c.getRangeCandidatura()%>> 
    </div>
  </div>

  <div class="row">
    <div class="col-25">
      <label for="type">Ha gia' fatto il colloquio?</label>
    </div>
   		 <div class="col-75">
 			<select id="coll" name="colloquioConoscitivo">
  				<option value="true">SI</option>
  				<option value="false">NO</option>

			</select>
    	</div>
  </div>


  <div class="row">
    <div class="col-25">
     <label for="pass">Candidatura</label>
    </div>
    <div class="col-75">
      <input type="text" id="cand" name="candidatiTramite" value=<%=c.getCandidatiTramite()%>> 
    </div>
  </div>

   <div class="row">
    <div class="col-25">
      <label for="type">Idoneita</label>
    </div>
   		 <div class="col-75">
 			<select id="coll" name="idoneita" placeholder="Il candidato e' idoneo?">
  				<option value="true">SI</option>
  				<option value="false">NO</option>

			</select>
    	</div>
  </div>


  <div class="row">
    <div class="col-25">
     <label for="pass">Codice fiscale</label>
    </div>
    <div class="col-75">
      <input type="text" id="cod" name="codiceFiscale" value=<%=c.getCodiceFiscale()%>> 
    </div>
  </div>
   <div class="row">
    <div class="col-25">
      <label for="type">Usertype</label>
    </div>
   		 <div class="col-75">
 			<select id="type" name="usertype">
  				<option value="ADMIN">ADMIN</option>
  				<option value="USER">USER</option>

			</select>
    	</div>
  </div>
      <button type="submit" >Insert</button>
</form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>