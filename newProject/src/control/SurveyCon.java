package control;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.surveyDAO;

@WebServlet("/SurveyCon")
public class SurveyCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session = request.getSession();
			
			String name = (String)session.getAttribute("name");
			
			System.out.println(name);
			String gender = request.getParameter("gender");
			String fatigue = request.getParameter("fatigue");
			String con = request.getParameter("con");
			String insomnia = request.getParameter("insomnia");
			String flu = request.getParameter("flu");
			String inf = request.getParameter("inf");
			String adult = request.getParameter("adult");
			String diet = request.getParameter("diet");
			String dig = request.getParameter("dig");
			String stress = request.getParameter("stress");
			String drunk = request.getParameter("drunk");
			String hair = request.getParameter("hair");
			String smoke = request.getParameter("smoke");
			
			
			surveyDAO dao = new surveyDAO();
			int cnt = dao.surveyInsert(name, gender, fatigue, con, insomnia, flu, inf, adult, diet, dig, stress, drunk, hair, smoke);
			
			if(cnt >0) {
				System.out.println("성공이닷");
				request.setCharacterEncoding("UTF-8");
				
				ProcessBuilder builder = new ProcessBuilder("python","C:\\Users\\SM016\\Desktop\\new\\tea.py", name);
				Process process = builder.start();
				Scanner errorScanner = new Scanner(process.getErrorStream());
				Scanner outputScanner = new Scanner(process.getInputStream());
				try {
					process.waitFor();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
				while(errorScanner.hasNext()) {
					System.out.println(errorScanner.nextLine());
				}
				errorScanner.close();
				
			
				while(outputScanner.hasNext()) {
					System.out.println(outputScanner.nextLine());
				}
				outputScanner.close();
				response.sendRedirect("./aroma-master/survey_result.jsp");
			}else {
				System.out.println("실패닷");
				
			}
	}

}
