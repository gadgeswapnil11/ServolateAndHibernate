package UtilityPackage;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UtilityClass {

	public static Session hbConfig() {
		Configuration cfg = new Configuration();
		cfg.configure("Hb.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		return session;
	}

}
