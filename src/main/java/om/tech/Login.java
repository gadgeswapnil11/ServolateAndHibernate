package om.tech;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.Hibernate.User;

public class Login extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("Inside The Login service method");
		String user = req.getParameter("uname");
		String pass = req.getParameter("pass");
	
		
		
		System.out.println("Parameter from LoginPage");
	
		
		System.out.println(user + "  " + pass);

		Configuration cfg = new Configuration();
		cfg.configure("Hb.xml");

		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		
		Criteria criteria=session.createCriteria(User.class);

		Criterion cr1=Restrictions.eq("uname", user);
		Criterion cr2=Restrictions.eq("password", pass);		

		criteria.add(cr1);
		criteria.add(cr2);
		
		

		User us=(User)criteria.uniqueResult();
		
		System.out.println(us);
 		
		if(us ==null)
		{

			
			System.out.println("user not present");
			RequestDispatcher rd=req.getRequestDispatcher("getAll.jsp");
			req.setAttribute("Message", "Not Able To Login");
			rd.forward(req, resp);
		}else 
		{
			// user  present
			System.out.println("user  present");
			
		RequestDispatcher rd=req.getRequestDispatcher("Message.jsp");
		req.setAttribute("Message", "Finally Login here");

		rd.forward(req, resp);
		}
		

	}

}
