package tablasorm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity(name="government_plan")
public class government_plan {
	@Id @GeneratedValue
	int idgovplan;
	
	@Column(name="title")
	String title;
	
	@Column(name="descriptiongov")
	String descriptiongov;
	
	@Column(name="initialdate")
	String initialdate;
	
	@Column(name="finishdate")
	String finishdate;
	
	@Column(name="idparty")
	int idparty;
	
	public int getIdGovPlan() {
		return this.idgovplan;
	}
	
	public void setIdGovPlan(int IdGovPlan) {
		this.idgovplan = IdGovPlan;
	}
	
	public String getTitle() {
		return this.title;
	}
	
	public void setTitle(String Title) {
		this.title = Title;
	}
	
	public String getDescriptiongov() {
		return this.descriptiongov;
	}
	
	public void setDescriptiongov(String Descriptiongov) {
		this.descriptiongov = Descriptiongov;
	}
	
	public String getInitialDate() {
		return this.initialdate;
	}
	
	public void setInitialDate(String InitialDate) {
		this.initialdate = InitialDate;
	}
	
	public String getFinishDate() {
		return this.finishdate;
	}
	
	public void setFinishDate(String FinishDate) {
		this.finishdate = FinishDate;
	}
	//---
	public int getIdParty() {
		return this.idparty;
	}
	
	public void setIdParty(int IdParty) {
		this.idparty = IdParty;
	}
}
