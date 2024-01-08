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

import UtilityPackage.UtilityClass;


public class GetAllData  extends HttpServlet{
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

		
		
	
		Session session=UtilityClass.hbConfig();
		
		
		
		Criteria cr=session.createCriteria(Student.class);
		List <Student> std= cr.list();
		
		
	
		
		System.out.println("Swapnil here is Lis = "+std);
		
		
		RequestDispatcher rd= req.getRequestDispatcher("AllStudentData.jsp");
		req.setAttribute("GET_LIST_STUDENT", std);
	rd.forward(req, res);
	}

}
