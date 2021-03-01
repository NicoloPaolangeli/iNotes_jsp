package it.contrader.service;

import it.contrader.dao.IterSelettivoDAO;
import it.contrader.dto.IterSelettivoDTO;
import it.contrader.converter.IterSelettivoConverter;
import it.contrader.model.IterSelettivo;

/**
 * 
 * @author Vittorio
 *
 *Grazie all'ereditarietà mi basta specificare i tipi di questa classe per
 *ereditare i metodi della clase AbstractService. Pertanto la classe risulta meno complicata
 *da scrivere, facendoci risparmiare tempo e fatica!
 */

public class IterSelettivoService extends AbstractService<IterSelettivo, IterSelettivoDTO> {
	
	//Istanzio DAO  e Converter specifici.
		public IterSelettivoService(){
			this.dao = new IterSelettivoDAO();
			this.converter = new IterSelettivoConverter();
		}
		
	
// end
}
