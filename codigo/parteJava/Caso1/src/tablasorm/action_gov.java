package tablasorm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="action_gov")
public class action_gov {
	@Id @GeneratedValue
	int idaction;
	
	@Column(name="idgovplan")
	int idgovplan;
	
	@Column(name="idprovince")
	int idprovince;
	
	@Column(name="deliverable_description")
	String deliverable_description;
	
	@Column(name="finishdate")
	String finishdate;
	
	@Column(name="kpi_value")
	String kpi_value;
	
	@Column(name="kpi_entity")
	String kpi_entity;
	
	public int getIdAction() {
		return this.idaction;
	}
	
	public void setIdAction(int idAction) {
		this.idaction = idAction;
	}
	
	public int getIdgovPlan() {
		return this.idgovplan;
	}
	
	public void setIdgovPlan(int idGovPlan) {
		this.idgovplan = idGovPlan;
	}
	
	public int getIdProvince() {
		return this.idprovince;
	}
	
	public void setIdProvince(int idProvince) {
		this.idprovince = idProvince;
	}
	
	public String getDeliverableDescription() {
		return this.deliverable_description;
	}
	
	public void setDeliverableDescription(String DeliverableDescription) {
		this.deliverable_description = DeliverableDescription;
	}
	
	public String getFinishDate() {
		return this.finishdate;
	}
	
	public void setFinishDate(String FinishDate) {
		this.finishdate = FinishDate;
	}
	
	public String getKpiValue() {
		return this.kpi_value;
	}
	
	public void setKpiValue(String KpiValue) {
		this.kpi_value = KpiValue;
	}
	
	public String getKpiEntity() {
		return this.kpi_entity;
	}
	
	public void setKpiEntity(String KpiEntity) {
		this.kpi_entity = KpiEntity;
	}
	
}
