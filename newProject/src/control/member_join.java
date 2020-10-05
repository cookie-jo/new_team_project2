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

import com.model.memberDAO;
import com.model.memberVO;

@WebServlet("/member_join")
public class member_join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		//웹페이지 회원가입 시 입력 받아오는 부분
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int tel = Integer.parseInt(request.getParameter("tel"));
		String addr = request.getParameter("addr");
		int post = Integer.parseInt(request.getParameter("post"));

		// 객체생성 후 회원 회원가입 함수 사용
		memberDAO dao = new memberDAO();
		memberVO vo= new memberVO(name, id, pw, tel, addr, post);
		int cnt = dao.join(vo);
		
		// 성공, 실패
		if (cnt > 0) {
			response.sendRedirect("aroma-master/index.jsp");
		} else {
			response.sendRedirect("aroma-master/index.jsp");
		}
	}
}
