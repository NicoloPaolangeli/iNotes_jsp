package it.contrader.service;

import it.contrader.converter.CorsoConverter;
import it.contrader.dao.CorsoDAO;
import it.contrader.dto.CorsoDTO;
import it.contrader.model.Corso;

/**
 * 
 * @author Vittorio
 *
 *Grazie all'ereditarietà mi basta specificare i tipi di questa classe per
 *ereditare i metodi della clase AbstractService. Pertanto la classe risulta meno complicata
 *da scrivere, facendoci risparmiare tempo e fatica!
 */
public class CorsoService extends AbstractService<Corso, CorsoDTO> {
	
	//Istanzio DAO  e Converter specifici.
	public CorsoService(){
		this.dao = new CorsoDAO();
		this.converter = new CorsoConverter();
	}
	

}
