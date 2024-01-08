package om.tech;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.Hibernate.Student;


public class GetAllData  extends HttpServlet{
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

		
		
	
		Configuration cfg = new Configuration();
		cfg.configure("Hb.xml");

		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		
		Criteria cr=session.createCriteria(Student.class);
		
		List <Student> std= cr.list();
		
		
	
		
		System.out.println(std);
		
		
		RequestDispatcher rd= req.getRequestDispatcher("AllStudentData.jsp");
	rd.forward(req, res);
	}

}
