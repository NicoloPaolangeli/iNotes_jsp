<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="it.contrader.dto.StaffDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Staff Manager</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>

<div class="navbar">
  <a  href="homeadmin.jsp">Home</a>
  <a class="active" href="StaffServlet?mode=stafflist">Staff</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<div class="main">
	<%
		List<StaffDTO> list = (List<StaffDTO>) request.getAttribute("list");
	%>

<br>

	<table>
		<tr>
			    <th>IdStaff</th>
		        <th>Nome</th>
		        <th>Cognome</th>
                <th>Email</th>
                <th>Posizione</th>
                <th>NumeroTelefono</th>
                <th>dataAssunzione</th>
                <th>Sede</th>
                <th>OreSettimanali</th>
                <th>CodiceFiscale</th>
			<th></th>
			<th></th>
		</tr>
		<%
			for (StaffDTO u : list) {
		%>
		<tr>
			<td><a href=StaffServlet?mode=read&idStaff=<%=u.getIdStaff()%>><%=u.getIdStaff()%>  </a></td>
			<td><%=u.getNome()%></td>
			<td><%=u.getCognome()%></td>
			<td><%=u.getEmail()%></td>
			<td><%=u.getPosizione()%></td>
			<td><%=u.getNumeroTelefono()%></td>
			<td><%=u.getDataAssunzione()%></td>
			<td><%=u.getSede()%></td>
			<td><%=u.getOreSettimanali()%></td>
			<td><%=u.getCodiceFiscale()%></td>
			
			<td><a href=StaffServlet?mode=read&update=true&idStaff=<%=u.getIdStaff()%>>Edit</a>
			</td>
			<td><a href=StaffServlet?mode=delete&idStaff=<%=u.getIdStaff()%>>Delete</a>
			</td>

		</tr>
		<%
			}
		%>
	</table>



<form id="floatleft" action="StaffServlet?mode=insert" method="post">
<div class="row">
    <div class="col-25">
      <label for="staff">id Staff</label>
    </div>
    <div class="col-75">
      <input type="text" id="staff" name="idStaff" placeholder="inserisci idstaff">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="name">Nome</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="nome" placeholder="inserisci il nome del membro dello staff">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="lastname">Cognome</label>
    </div>
    <div class="col-75">
      <input type="text" id="lastname" name="cognome" placeholder="inserisci il cognome del membro dello staff"> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="mail">Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="mail" name="email" placeholder="inserisci l'email"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="pos">Posizione</label>
    </div>
    <div class="col-75">
      <input type="text" id="pos" name="posizione" placeholder="inserisci la posizione"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="num">Numero di Telefono</label>
    </div>
    <div class="col-75">
      <input type="number" id="num" name="numeroTelefono" placeholder="inserisci il numero di telefono"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="dat">Data Assunzione</label>
    </div>
    <div class="col-75">
      <input type="text" id="dat" name="dataAssunzione" placeholder="inserisci la data di assunzione"> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="sed">Sede</label>
    </div>
    <div class="col-75">
      <input type="text" id="sed" name="sede" placeholder="inserisci la sede"> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="ora">Ore Settimanali</label>
    </div>
    <div class="col-75">
      <input type="text" id="ora" name="oreSettimanali" placeholder="inserisci le ore settimanali lavorate dal membro dello staff"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="cod">Codice Fiscale</label>
    </div>
    <div class="col-75">
      <input type="text" id="cod" name="codiceFiscale" placeholder="inserisci il codice fiscale"> 
    </div>
  </div>
  
      <button type="submit" >Insert</button>
</form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>