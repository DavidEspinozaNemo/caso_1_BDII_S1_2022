package tablasorm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="party")
public class party {
	@Id @GeneratedValue
	int idparty;
	
	@Column(name="registdate")
	String registdate;
	
	@Column(name="urlflag")
	String urlflag;
	
	@Column(name="urllogo")
	String urllogo;
	
	@Column(name="nameparty")
	String nameparty;
	
	public int getIdParty() {
		return this.idparty;
	}
	
	public void setIdParty(int IdParty) {
		this.idparty = IdParty;
	}
	
	public String getRegistDate() {
		return this.registdate;
	}
	
	public void setRegistDate(String RegistDate) {
		this.registdate = RegistDate;
	}
	
	public String getUrlFlag() {
		return this.urlflag;
	}
	
	public void setUrlFlag(String UrlFlag) {
		this.urlflag = UrlFlag;
	}
	
	public String getUrlLogo() {
		return this.urllogo;
	}
	
	public void setUrlLogo(String UrlLogo) {
		this.urllogo = UrlLogo;
	}
	
	public String getNameParty() {
		return this.nameparty;
	}
	
	public void setNameParty(String NameParty) {
		this.nameparty = NameParty;
	}
}
