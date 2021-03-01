package it.contrader.servlets;

import java.util.List;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.contrader.dto.CorsoDTO;
import it.contrader.service.Service;
import it.contrader.service.CorsoService;

/*
 * Per dettagli vedi Guida sez Servlet
 */
public class CorsoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CorsoServlet() {
	}
	
	public void updateList(HttpServletRequest request) {
		Service<CorsoDTO> service = new CorsoService();
		List<CorsoDTO>listDTO = service.getAll();
		request.setAttribute("list", listDTO);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service<CorsoDTO> service = new CorsoService();
		String mode = request.getParameter("mode");
		CorsoDTO dto;
		int idCorso = 0;
		boolean ans;

		switch (mode.toUpperCase()) {

		case "CORSOLIST":
			updateList(request);
			getServletContext().getRequestDispatcher("/corso/corsomanager.jsp").forward(request, response);
			break;

		case "READ":
			idCorso = Integer.parseInt(request.getParameter("idCorso"));
			dto = service.read(idCorso);
			request.setAttribute("dto", dto);
			
			if (request.getParameter("update") == null) {
				 getServletContext().getRequestDispatcher("/corso/readcorso.jsp").forward(request, response);
				
			}
			
			else getServletContext().getRequestDispatcher("/corso/updatecorso.jsp").forward(request, response);
			
			break;

		case "INSERT":
			//idCorso = Integer.parseInt(request.getParameter("idCorso").toString());
			int idCandidato = Integer.parseInt(request.getParameter("idCandidato").toString());
			int idIterSelettivo = Integer.parseInt(request.getParameter("idIterSelettivo").toString());
			String argomentoCorso = request.getParameter("argomentoCorso").toString();
			int valutazioneComunicazioni = Integer.parseInt(request.getParameter("valutazioneComunicazioni").toString());
			int valutazioneIntuitivita = Integer.parseInt(request.getParameter("valutazioneIntuitivita").toString());
			int valutazioneAttitudine = Integer.parseInt(request.getParameter("valutazioneAttitudine").toString());
			int valutazioneTeamWork = Integer.parseInt(request.getParameter("valutazioneTeamWork").toString());
			int oreTotali = Integer.parseInt(request.getParameter("oreTotali").toString());
			int idStaff = Integer.parseInt(request.getParameter("idStaff").toString());
			String dataInizio = request.getParameter("dataInizio").toString();
			
			dto = new CorsoDTO (idCorso, idCandidato, idIterSelettivo, argomentoCorso, valutazioneComunicazioni,valutazioneIntuitivita, valutazioneAttitudine, valutazioneTeamWork, oreTotali, idStaff, dataInizio);
			
			ans = service.insert(dto);
			
			request.setAttribute("ans", ans);
			
			updateList(request);
			
			getServletContext().getRequestDispatcher("/corso/corsomanager.jsp").forward(request, response);
			break;
			
		case "UPDATE":
			
			idCandidato = Integer.parseInt(request.getParameter("idCandidato").toString());
			idIterSelettivo = Integer.parseInt(request.getParameter("idIterSelettivo").toString());
			argomentoCorso = request.getParameter("argomentoCorso").toString();
			valutazioneComunicazioni = Integer.parseInt(request.getParameter("valutazioneComunicazioni").toString());
			valutazioneIntuitivita = Integer.parseInt(request.getParameter("valutazioneIntuitivita").toString());
			valutazioneAttitudine = Integer.parseInt(request.getParameter("valutazioneAttitudine").toString());
			valutazioneTeamWork = Integer.parseInt(request.getParameter("valutazioneTeamWork").toString());
			oreTotali = Integer.parseInt(request.getParameter("oreTotali").toString());
			idStaff = Integer.parseInt(request.getParameter("idStaff").toString());
			dataInizio = request.getParameter("dataInizio").toString();
			idCorso = Integer.parseInt(request.getParameter("idCorso").toString());
			
			dto = new CorsoDTO (idCorso, idCandidato, idIterSelettivo, argomentoCorso, valutazioneComunicazioni, valutazioneIntuitivita, valutazioneAttitudine, valutazioneTeamWork, oreTotali, idStaff, dataInizio);
			
			ans = service.update(dto);
			
			updateList(request);
			
			getServletContext().getRequestDispatcher("/corso/corsomanager.jsp").forward(request, response);
			break;

		case "DELETE":
			idCorso = Integer.parseInt(request.getParameter("idCorso"));
			ans = service.delete(idCorso);
			request.setAttribute("ans", ans);
			updateList(request);
			getServletContext().getRequestDispatcher("/corso/corsomanager.jsp").forward(request, response);
			break;
		}
}
}