package om.tech;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Hibernate.User;

public class SignIn extends HttpServlet {

	public SignIn() {
		System.out.println("Here we Go through constructor");
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Here in Sign In service methods");
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		System.out.println(username + " -  " + password);
		
		
		User user= new User();
		user.setUname(username);
		user.setPassword(password);
	
		
		
		Configuration cfg= new Configuration();
		cfg.configure("Hb.xml");
		SessionFactory sf= cfg.buildSessionFactory();
		Session session= sf.openSession();
		Transaction txn= session.beginTransaction();
		String uname=(String)session.save(user);
		txn.commit();
		System.out.println("check db inserted= "+uname);
		if(uname==null) {
			
		System.out.println("Data is not Inserted");
		
		RequestDispatcher rd= req.getRequestDispatcher("Message.jsp");
		req.setAttribute("Message", "Failed to Sign IN  ");
		rd.forward(req, resp);
		
		
		}
		
		else {
			
			System.out.println("Data is Inserted");
			RequestDispatcher rd= req.getRequestDispatcher("register.jsp");
			rd.forward(req, resp);
			
		}

		
		
		

	}

}
