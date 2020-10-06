package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.managerDAO;
import model.managerVO;


@WebServlet("/manager_join")
public class manager_join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection conn;
	PreparedStatement psmt;
	int cnt = 0;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");

		//웹페이지 회원가입 시 입력 받아오는 부분
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int tel = Integer.parseInt(request.getParameter("tel"));
		String addr = request.getParameter("addr");
		int post = Integer.parseInt(request.getParameter("post"));

		// 객체생성 후 회원 회원가입 함수 사용
		managerDAO dao = new managerDAO();
		managerVO vo= new managerVO(name, id, pw, tel, addr, post);
		int cnt = dao.join(vo);
		
		// 성공, 실패
		if (cnt > 0) {
			response.sendRedirect("login1.jsp");
		} else {
			response.sendRedirect("login2.jsp");
		}
	}
}
