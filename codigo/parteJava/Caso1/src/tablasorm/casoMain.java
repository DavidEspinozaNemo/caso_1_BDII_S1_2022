package tablasorm;

import java.util.List;

import tablasorm.action_gov;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

@SuppressWarnings("unused")
public class casoMain {

	public static void main(String[] args) throws InterruptedException {
		
		Configuration configuration=new Configuration();
		configuration.configure();
		ServiceRegistry sr= new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
		SessionFactory sf=configuration.buildSessionFactory(sr);
		
		Session ss=sf.openSession();
		ss.beginTransaction();
		
		String s = "select [deliverable_descriprion] from [action_gov]";
		
		Query query = ss.createSQLQuery(s);
		
		@SuppressWarnings("unchecked")
		List<action_gov> actions = query.list();
		
		System.out.println("name user: "+actions.toString());
		
		ss.getTransaction().commit();
		
		ss.close();
	}
}
