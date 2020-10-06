package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.memberDAO;
import model.memberVO;

@WebServlet("/member_login")
public class member_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 인코딩
		request.setCharacterEncoding("UTF-8");

		// 웹페이지에서 아이디 비번 받아오는 부분
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 객체생성 후 회원 로그인 함수 사용
		memberDAO dao = new memberDAO();
		memberVO vo = new memberVO(id, pw);
		String name = dao.login(vo);
		
		// 로그인 성공, 실패
		if (name != null) {
			//response.sendRedirect("index.jsp?member_name=" + URLEncoder.encode(name, "UTF-8"));
			System.out.println("로그인 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
		} else {
			System.out.println("로그인 실패");
		}
		response.sendRedirect("aroma-master/index.jsp");
	}
}
