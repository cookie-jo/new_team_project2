package control; 
 
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.managerDAO;
import model.managerVO;


@WebServlet("/manager_login")
public class manager_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 인코딩
		request.setCharacterEncoding("UTF-8");

		// 웹페이지에서 아이디 비번 받아오는 부분
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 객체생성 후 회원 로그인 함수 사용
		managerDAO dao = new managerDAO();
		managerVO vo = new managerVO(id, pw);
		String name = dao.login(vo);
		
		// 성공, 실패
		if (name != null) {
			response.sendRedirect("login3.jsp?manager_name=" + URLEncoder.encode(name, "UTF-8"));
		} else {
			response.sendRedirect("login4.jsp");
		}
	}
}
