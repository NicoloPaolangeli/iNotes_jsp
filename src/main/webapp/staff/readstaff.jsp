<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.StaffDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Read Staff</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active"  href="StaffServlet?mode=stafflist">Staff</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>

<div class="main">
<%StaffDTO u = (StaffDTO) request.getAttribute("dto");%>


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
	</tr>
	<tr>
		        <td><%=u.getIdStaff()%></td>
		        <td> <%=u.getNome()%></td>
		        <td> <%=u.getCognome()%></td>
                <td> <%=u.getEmail()%></td>
                <td> <%=u.getPosizione()%></td>
                <td> <%=u.getNumeroTelefono()%></td>
                <td> <%=u.getDataAssunzione()%></td>
                <td> <%=u.getSede()%></td>
                <td> <%=u.getOreSettimanali()%></td>
                <td> <%=u.getCodiceFiscale()%></td>
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