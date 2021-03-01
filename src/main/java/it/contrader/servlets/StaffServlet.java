package it.contrader.servlets;

import java.util.List;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.contrader.dto.StaffDTO;
import it.contrader.service.Service;
import it.contrader.service.StaffService;

/*
 * Per dettagli vedi Guida sez Servlet
 */
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public StaffServlet() {
	}
	
	public void updateList(HttpServletRequest request) {
		Service<StaffDTO> service = new StaffService();
		List<StaffDTO>listDTO = service.getAll();
		request.setAttribute("list", listDTO);
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service<StaffDTO> service = new StaffService();
		String mode = request.getParameter("mode");
		StaffDTO dto;
		int idStaff = 0;
		boolean ans;

		switch (mode.toUpperCase()) {

		case "STAFFLIST":
			updateList(request);
			getServletContext().getRequestDispatcher("/staff/staffmanager.jsp").forward(request, response);
			break;

		case "READ":
			idStaff = Integer.parseInt(request.getParameter("idStaff"));
			dto = service.read(idStaff);
			request.setAttribute("dto", dto);
			
			if (request.getParameter("update") == null) {
				 getServletContext().getRequestDispatcher("/staff/readstaff.jsp").forward(request, response);
				
			}
			
			else getServletContext().getRequestDispatcher("/staff/updatestaff.jsp").forward(request, response);
			
			break;

		case "INSERT":
			String nome = request.getParameter("nome");
		    String cognome = request.getParameter("cognome");
		    String email = request.getParameter("email");
		    String posizione = request.getParameter("posizione");		    
			int numeroTelefono = Integer.parseInt(request.getParameter("numeroTelefono"));
			String dataAssunzione = request.getParameter("dataAssunzione");
			String sede = request.getParameter("sede");
			int oreSettimanali = Integer.parseInt(request.getParameter("oreSettimanali"));
			String codiceFiscale = request.getParameter("codiceFiscale");
			
		    dto = new StaffDTO (idStaff, nome, cognome, email, posizione, numeroTelefono, dataAssunzione, sede, oreSettimanali, codiceFiscale);
			
			ans = service.insert(dto);
			request.setAttribute("ans", ans);
			updateList(request);
			getServletContext().getRequestDispatcher("/staff/staffmanager.jsp").forward(request, response);
			break;
			
		case "UPDATE":		
			nome = request.getParameter("nome").toString();
		    cognome = request.getParameter("cognome").toString();
		    email = request.getParameter("email").toString();
		    posizione = request.getParameter("posizione").toString();
		    numeroTelefono = Integer.parseInt(request.getParameter("numeroTelefono").toString());
		    dataAssunzione = request.getParameter("dataAssunzione").toString();		
		    sede = request.getParameter("sede").toString();
		    oreSettimanali = Integer.parseInt(request.getParameter("oreSettimanali").toString());
		    codiceFiscale = request.getParameter("codiceFiscale").toString();
		    idStaff = Integer.parseInt(request.getParameter("idStaff").toString());
			dto = new StaffDTO (idStaff, nome, cognome, email, posizione, numeroTelefono, dataAssunzione, sede, oreSettimanali, codiceFiscale);
			
			ans = service.update(dto);
			updateList(request);
			getServletContext().getRequestDispatcher("/staff/staffmanager.jsp").forward(request, response);
			break;

		case "DELETE":
			idStaff = Integer.parseInt(request.getParameter("idStaff"));
			ans = service.delete(idStaff);
			request.setAttribute("ans", ans);
			updateList(request);
			getServletContext().getRequestDispatcher("/staff/staffmanager.jsp").forward(request, response);
			break;
		}
	}
}