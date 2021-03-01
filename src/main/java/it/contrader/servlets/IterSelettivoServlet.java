package it.contrader.servlets;

import java.util.List;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.contrader.dto.IterSelettivoDTO;
import it.contrader.service.Service;
import it.contrader.service.IterSelettivoService;

/*
 * Per dettagli vedi Guida sez Servlet
 */
public class IterSelettivoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IterSelettivoServlet() {
	}
	
	public void updateList(HttpServletRequest request) {
		Service<IterSelettivoDTO> service = new IterSelettivoService();
		List<IterSelettivoDTO>listDTO = service.getAll();
		request.setAttribute("list", listDTO);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service<IterSelettivoDTO> service = new IterSelettivoService();
		String mode = request.getParameter("mode");
		IterSelettivoDTO dto;
		int idIterSelettivo = 0;
		boolean ans;

		switch (mode.toUpperCase()) {

		case "ITERSELETTIVOLIST":
			updateList(request);
			getServletContext().getRequestDispatcher("/iterSelettivo/iterSelettivomanager.jsp").forward(request, response);
			break;

		case "READ":
			idIterSelettivo = Integer.parseInt(request.getParameter("idIterSelettivo"));
			dto = service.read(idIterSelettivo);
			request.setAttribute("dto", dto);
			
			if (request.getParameter("update") == null) {
				 getServletContext().getRequestDispatcher("/iterSelettivo/readiterSelettivo.jsp").forward(request, response);
				
			}
			
			else getServletContext().getRequestDispatcher("/iterSelettivo/updateiterSelettivo.jsp").forward(request, response);
			
			break;

		case "INSERT":
			int idCandidato = Integer.parseInt(request.getParameter("idCandidato").toString());
			int idStaff = Integer.parseInt(request.getParameter("idStaff").toString());
			int punteggioTotaleScritto = Integer.parseInt(request.getParameter("punteggioTotaleScritto").toString());
			int punteggioLogica = Integer.parseInt(request.getParameter("punteggioLogica").toString());
			int punteggioPhp = Integer.parseInt(request.getParameter("punteggioPhp").toString());
			int punteggioJava = Integer.parseInt(request.getParameter("punteggioJava").toString());
			int punteggioHTML = Integer.parseInt(request.getParameter("punteggioHTML").toString());
			int punteggioInglese = Integer.parseInt(request.getParameter("punteggioInglese").toString());
			String dataTestScritto = request.getParameter("dataTestScritto").toString();
			String dataTestOrale = request.getParameter("dataTestOrale").toString();
			int valutazioneOrale = Integer.parseInt(request.getParameter("valutazioneOrale").toString());
			dto = new IterSelettivoDTO (idIterSelettivo, idCandidato, idStaff, punteggioTotaleScritto, punteggioLogica, punteggioPhp, punteggioJava, punteggioHTML, punteggioInglese, dataTestScritto, dataTestOrale, valutazioneOrale);
			ans = service.insert(dto);
			request.setAttribute("ans", ans);
			updateList(request);
			getServletContext().getRequestDispatcher("/iterSelettivo/iterSelettivomanager.jsp").forward(request, response);
			break;
			
		case "UPDATE":
			idCandidato = Integer.parseInt(request.getParameter("idCandidato").toString());
			idStaff = Integer.parseInt(request.getParameter("idStaff").toString());
			punteggioTotaleScritto = Integer.parseInt(request.getParameter("punteggioTotaleScritto").toString());
			punteggioLogica = Integer.parseInt(request.getParameter("punteggioLogica").toString());
			punteggioPhp = Integer.parseInt(request.getParameter("punteggioPhp").toString());
			punteggioJava = Integer.parseInt(request.getParameter("punteggioJava").toString());
			punteggioHTML = Integer.parseInt(request.getParameter("punteggioHTML").toString());
			punteggioInglese = Integer.parseInt(request.getParameter("punteggioInglese").toString());
			dataTestScritto = request.getParameter("dataTestScritto").toString();
			dataTestOrale = request.getParameter("dataTestOrale").toString();
			valutazioneOrale = Integer.parseInt(request.getParameter("valutazioneOrale").toString());
			idIterSelettivo = Integer.parseInt(request.getParameter("idIterSelettivo"));
			dto = new IterSelettivoDTO (idIterSelettivo,idCandidato, idStaff, punteggioTotaleScritto, punteggioLogica, punteggioPhp, punteggioJava, punteggioHTML, punteggioInglese, dataTestScritto, dataTestOrale, valutazioneOrale);
			ans = service.update(dto);
			updateList(request);
			getServletContext().getRequestDispatcher("/iterSelettivo/iterSelettivomanager.jsp").forward(request, response);
			break;

		case "DELETE":
			idIterSelettivo = Integer.parseInt(request.getParameter("idIterSelettivo"));
			ans = service.delete(idIterSelettivo);
			request.setAttribute("ans", ans);
			updateList(request);
			getServletContext().getRequestDispatcher("/iterSelettivo/iterSelettivomanager.jsp").forward(request, response);
			break;
		}
	}
}