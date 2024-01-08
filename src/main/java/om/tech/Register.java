package om.tech;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.Hibernate.Student;

import UtilityPackage.UtilityClass;

public class Register extends HttpServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("mobile");
		String course = req.getParameter("course");
		String gender = req.getParameter("gender");

		System.out.println(name + " - " + email + " - " + phone + " - " + course + " - " + gender);

		Student s = new Student();

		s.setName(name);
		s.setEmail(email);
		s.setCourse(course);
		s.setGender(gender);
		s.setMobile(phone);

		System.out.println("Regestered Object Print = " + s);

//		Configuration cfg = new Configuration();
//		cfg.configure("Hb.xml");
//
//		SessionFactory sf = cfg.buildSessionFactory();
//		Session session = sf.openSession();

		Session session = UtilityClass.hbConfig();

		Transaction txn = session.beginTransaction();

		int student = (int) session.save(s);

		System.out.println("Here Regester Data is Insterted = " + student);
		txn.commit();

		if (student == 0) {
			RequestDispatcher rd = req.getRequestDispatcher("Message.jsp");
			req.setAttribute("Message", "Failed to Register IN  ");
			rd.forward(req, res);

		} else {

			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, res);

		}

	}

}
