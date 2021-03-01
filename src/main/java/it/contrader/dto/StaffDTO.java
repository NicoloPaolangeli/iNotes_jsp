package it.contrader.dto;

/**
 * 
 * @author Vittorio
 *
 *Il DTO è simile al Model ma può contenere meno attributi (ad esempio d dati sensibili
 *che non devono arrivare alla View). GLi oggetti vengono trasformati da oggetti del Model
 *a oggetti del DTO tramite i Converter (chiamati dai Service). 
 *Per la descrizione della classe far riferimento al Model "User".
 */
public class StaffDTO {
	
	private int idStaff;
	private String nome;
	private String cognome;
	private String email;
	private String posizione;
	private String dataAssunzione;
	private int numeroTelefono;
	private String sede;
	private int oreSettimanali;
	private String codiceFiscale;

	public StaffDTO() {
		
	}

	public StaffDTO(int idStaff, String nome, String cognome, String email, String posizione, int numeroTelefono,
			 String dataAssunzione, String sede, int oreSettimanali, String codiceFiscale) {
		this.setIdStaff(idStaff);
		this.setNome(nome);
		this.setCognome(cognome);
		this.setEmail(email);
		this.setPosizione(posizione);
		this.setNumeroTelefono(numeroTelefono);
		this.setDataAssunzione(dataAssunzione);
		this.setSede(sede);
		this.setOreSettimanali(oreSettimanali);
		this.setCodiceFiscale(codiceFiscale);

	}
	
	public StaffDTO(String nome, String cognome, String email, String posizione, int numeroTelefono,
			 String dataAssunzione, String sede, int oreSettimanali, String codiceFiscale) {
		this.setNome(nome);
		this.setCognome(cognome);
		this.setEmail(email);
		this.setPosizione(posizione);
		this.setNumeroTelefono(numeroTelefono);
		this.setDataAssunzione(dataAssunzione);
		this.setSede(sede);
		this.setOreSettimanali(oreSettimanali);
		this.setCodiceFiscale(codiceFiscale);

	}
	
	

	public int getIdStaff() {
		return idStaff;
	}

	public void setIdStaff(int idStaff) {
		this.idStaff = idStaff;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPosizione() {
		return posizione;
	}

	public void setPosizione(String posizione) {
		this.posizione = posizione;
	}

	public String getDataAssunzione() {
		return dataAssunzione;
	}

	public void setDataAssunzione(String dataAssunzione) {
		this.dataAssunzione = dataAssunzione;
	}

	public int getNumeroTelefono() {
		return numeroTelefono;
	}

	public void setNumeroTelefono(int numeroTelefono) {
		this.numeroTelefono = numeroTelefono;
	}

	public String getSede() {
		return sede;
	}

	public void setSede(String sede) {
		this.sede = sede;
	}

	public int getOreSettimanali() {
		return oreSettimanali;
	}

	public void setOreSettimanali(int oreSettimanali) {
		this.oreSettimanali = oreSettimanali;
	}

	public String getCodiceFiscale() {
		return codiceFiscale;
	}

	public void setCodiceFiscale(String codiceFiscale) {
		this.codiceFiscale = codiceFiscale;
	}

	@Override
	public String toString() {
		// "IdStaff\tnome\tcognome\temail\tposizione\tdata_assunzione\tnumero_telefono\tsede\tore_settimanali\tcodiceFIscal"
		return idStaff + "\t" + nome + "\t" + cognome + "\t" + email
				+ "\t" + posizione + "\t" + dataAssunzione + "\t"
				+ numeroTelefono + "\t" + sede + "\t" + oreSettimanali + "\t"
				+ codiceFiscale;
	}
}
